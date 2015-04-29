/**
 * Created by Mac-Vincent on 10/04/15.
 */

angular.module('myApp', [])

.controller('mainCtrl', function($scope){
        $scope.value = 'value from my controller';

        $scope.datas=[
            {capitale: 'paris', pays: 'France'},
            {capitale: 'londres', pays:'Angleterre'},
            {capitale: 'new-york', pays:'USA'},
            {capitale: 'madrid', pays:'Espagne'},
            {capitale: 'rome', pays:'Italie'},
        ];

        $scope.filtre = {
            capitale: '',
            pays: ''
        };

        $scope.alert = function(o) {
            alert('Vous avez sélectionné ' + o.capitale)
        }
    })