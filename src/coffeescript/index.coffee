((ns) ->
  main = ->
    moduleName = 'AschyielAngularSorter'
    app = angular.module(moduleName, ['ui.bootstrap'])
    app.controller('AngularSorterCtrl', ['$scope', ($scope) ->
        new ns.AngularSorterCtrl($scope: $scope, app: app)
      ])
    angular.bootstrap(document, [moduleName]);
  $(_.once(main))    # Kickstart on document.ready.
) window.aschyiel
