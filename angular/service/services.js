/**
 * Created by Mac-Vincent on 29/04/15.
 */


angular.module('myApp')
.service('datasService', function() {
       // private
        var datas = {value: 'value from my service'};


        //public
        this.set = function(o) {console.log(o);datas = o};
        this.get = function() { return datas;};

    });