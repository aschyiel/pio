//..user_input_ctrl.js, uly, aug2014..

/*jshint undef:true, laxcomma:true, jquery:true, expr:true */
/*global window, angular, document, console, setTimeout, _ */

/**
* The user-input controller module;
* Organizes the input-textarea, sort-button, etc.
*/
(function( ns ){
//---

/** @type {AngularSorterCtrl} */
var _instance = null;    // TODO Use a service instead of this faux singleton.

/** @constructor */
function AngularSorterCtrl( p )
{
  _instance = this;
  this.app = p.app;
  this.$scope = p.$scope;
  init( this );
}
var fn = AngularSorterCtrl.prototype;
ns.AngularSorterCtrl = AngularSorterCtrl;

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
* @param {AngularSorterCtrl} ctrl
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

/**
* The map-reduce part.
* @return {Object[]} Where each type is represented bucket;
*             Each bucket contains the following keys:
*             - label {String} ------------ The bucket's type label.
*             - blurb {Object[]}----------- Sample line-items within a bucket.
*             - count {Number} ---------- The number of items within a bucket.
*             - sum {Number} --- The total value of the items within a bucket.
*/
function summarize( ctrl, items ) {
  var sortables        = {}

      // TODO: Abstract this so that it'll work with arbitrary data.
      //   For example, as a drop-down of property names
      //   we could detect at the last-second.
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

  var count = 5;
  return reverse_sort( _.collect( bin, function( bin_items, sortby ) {
        var sorted_items = reverse_sort( bin_items, value_property );
        var bucket = {};
        bucket.blurb = [];
        for ( var i = 0; i < count; i++ ) {
          var it = sorted_items[ i ];
          it && bucket.blurb.push( as_blurb( it, name_property, value_property ) );
        }
        bucket.count = sorted_items.length;
        bucket.label = capitalize( sortby );

        // TODO: Standard Deviation, Median, Max, Min, etc.
        bucket.sum = _.chain( sorted_items )
            .collect( function( it ) {
              return it[ value_property ] || 0;
            })
            .reduce( function( sum, n ) {
              sum += n;
              return sum;
            })
            .value().toFixed( 2 );
        return bucket;
      }) );
}

/**
* Sort-by so that bigger numbers go first, etc.
*
* @static
* @param {Object[]} li
* @param {String} sortby
* @return {Object[]}
*/
function reverse_sort( li, sortby ) {
  return _.chain( li )
      .sortBy( sortby )
      .reverse()
      .value();
}

/**
* Simplifies the representation of a line-item.
*
* @private
* @static
* @param {*} it The thing.
* @param {String} name_property The label part.
* @param {String} value_property The number part.
* @return {String}
*/
function as_blurb( it, name_property, value_property ) {
  return it[ name_property ] +' | '+ it[ value_property ];
}

/**
* Poor man's string capitalization.
*/
function capitalize( s ) {
  // GOTCHA: Assumes it's all-one-word.
  return s[0].toUpperCase() + s.substring(1).toLowerCase();
}


//---
})( window.aschyiel );
