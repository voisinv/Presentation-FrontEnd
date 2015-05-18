angular.module('mainApp', ['ngRoute'])

.config(function($routeProvider) {
        $routeProvider
        .when(
            '/partOne', {
                controller: 'partOneCtrl',
                templateUrl: 'partOne.html'
            }
        )
        .when('/partTwo', {
                controller: 'partTwoCtrl',
                templateUrl: 'partTwo.html'
            }
        )
        .otherwise({redirectTo: '/partOne'});
    })

.controller('partOneCtrl', function($scope, $location) {
        $scope.change = function() {
            console.log('ok')
            $location.path('/partTwo')
        }
    })
.controller('partTwoCtrl', function($scope) {})