/**
 * Created by Mac-Vincent on 10/04/15.
 */


angular.module('myApp', [])
.controller('firstCtrl', function($scope, sharedData) {
    $scope.data = sharedData.data;
    })
.controller('secondCtrl', function($scope, sharedData) {
        $scope.data = sharedData.data;

    })
.service('sharedData', function() {
        this.data = { value : 'this is the value from the service'}
    })