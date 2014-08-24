//..user_input_ctrl.js, uly, aug2014..

/*jshint undef:true, laxcomma:true, jquery:true, expr:true */
/*global window, angular, document, console, setTimeout, _ */

/**
* The user-input controller module;
* Organizes the input-textarea, sort-button, etc.
*/
(function( ns ){
//---

/** @type {UserInputCtrl} */
var _instance = null;    // TODO Use a service instead of this faux singleton.

/** @constructor */
function UserInputCtrl( p )
{
  _instance = this;
  this.app = p.app;
  this.$scope = p.$scope;
  init( this );
}
var fn = UserInputCtrl.prototype;
ns.UserInputCtrl = UserInputCtrl;

//
// public
//

/**
* A mechanism for programmatically setting the input text.
*
* @static
* @param {String } s The text-value.
* @return {void}
*/
fn.set_user_input = function( s ) {
  var ctrl = _instance;
  if ( !ctrl ) {
    return;
  }
  // TODO: Again, a proper angularJS service would be better.
  var $scope = ctrl.$scope;
  setTimeout( function() {
        $scope.$apply( function() {
              $scope.input = s;
            });
      }, 0 );
};

//
// private
//

/**
* Kickstart t3h controller.
*
* @private
* @param {UserInputCtrl} ctrl
* @return {void}
*/
function init( ctrl ) {
  var $scope = ctrl.$scope
    , input = $( '#input' )
    ;

  $scope.onInputFocus = $scope.onInputBlur = function() {
        input.toggleClass( 'expanded' );
      };

  $scope.sort = function() {
        $scope.summary = sort( ctrl );
      };
}

/**
* Sort the user-input, and provide a summary of the data, if possible.
*/
function sort( ctrl ) {
  var $scope = ctrl.$scope
    , data = null
    ;

  $scope.flash = '';

  if ( !$scope.input ) {
    $scope.flash = 'Please input JSON data prior to "sorting".';
  }

  if ( !$scope.flash ) {
    try {
      data = JSON.parse( $scope.input );
    } catch ( err ) {
      console.error( err );
      $scope.flash = 'Invalid JSON - Please correct it and try again.';
    }
  }

  if ( data && !_.isArray( data ) ) {
    $scope.flash( 'Invalid Argument - The JSON needs to represent '+
                  'an array of items.' );
  }

  if ( $scope.flash ) {
    console.error( $scope.flash );
    return {};
  }

  return summarize( ctrl, data );
}

function summarize( ctrl, items ) {
  var sortables        = {}
    , name_property    = 'line_item'
    , sortby_property  = 'type'
    , value_property   = 'revenue'
    , bin = {}
    ;

  //
  // Iterate through the items, and divide them into buckets (map).
  //

  _.each( items, function( it ) {
        var sortby = it[ sortby_property ];
        bin[ sortby ] = bin[ sortby ] || [];
        bin[ sortby ].push( it );
      });

  //
  // Sort the buckets, and do calculations, etc. (reduce).
  //

  var summary = {}
    , count   = 5
    ;
  _.each( bin, function( bin_items, sortby ) {
        var sorted_items = _.sortBy( bin_items, sortby );
        var xi = summary[ sortby ] = {};
        var li = xi.blurb = [];
        for ( var i = 0; i < count; i++ ) {
          var it = sorted_items[ i ];
          it && li.push( as_blurb( it, name_property, value_property ) );
        }
        xi.count = sorted_items.length;
        xi.sum = _.chain( sorted_items )
            .collect( function( it ) {
              return it[ value_property ] || 0;
            })
            .reduce( function( sum, n ) {
              sum += n;
              return sum;
            })
            .value();
      });
  console.debug( 'summary:', summary );
  return summary;
}

/**
* Simplifies the representation of a line-item.
*
* @private
* @param {*} it The thing.
* @param {String} name_property The label part.
* @param {String} value_property The number part.
* @return {String}
*/
function as_blurb( it, name_property, value_property ) {
  return it[ name_property ] +' | '+ it[ value_property ];
}


//---
})( window.aschyiel );
