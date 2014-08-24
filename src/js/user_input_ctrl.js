//..user_input_ctrl.js, uly, aug2014..

/*jshint undef:true, laxcomma:true, jquery:true */
/*global window, angular, document, console, setTimeout */

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
        sort( ctrl );
      };
}

/**
* Sort the user-input, and provide a summary of the data, if possible.
*/
function sort( ctrl ) {
  var $scope = ctrl.$scope
    , data = null
    ;
  console.log( '..sort..' );

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

  if ( $scope.flash ) {
    console.error( $scope.flash );
    return;
  }

  _sort( ctrl, data );
}

function _sort( ctrl, data ) {
  console.log( '_sort:', ctrl, data );
}


//---
})( window.aschyiel );
