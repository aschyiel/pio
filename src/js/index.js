//..src/js/index.js, uly, aug2014..

/*jshint undef:true */
/*global window, document */

/**
* This is the "main" function for the "Angular-Sorter".
* It kickstarts angular, and everyone else, etc.
*/

window.aschyiel = window.aschyiel || {};
(function( ns ) {
//---

function main() {
  var mod = 'AschyielAngularSorter';
  var app = ns.app = angular.module( mod, [ 'ui.bootstrap' ] );
  app.controller( 'UserInputCtrl', [ '$scope', function( $scope ) {
        new ns.UserInputCtrl({ '$scope': $scope, 'app': app });
      }]);
  angular.bootstrap( document, [ mod ] );

}
$( _.once( main ) );

//---
})( window.aschyiel );
