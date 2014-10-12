NGGab.controller("DefaultInfoCtrl", function ($scope, $http) {
    $http.get('rest/index.php/api/app_info/info/format/json').
            success(function (data, status, headers, config) {
                $scope.dafaultInfoArray = data;
            }).
            error(function (data, status, headers, config) {
                // log error
            });
});



NGGab.controller('DefaultData', ['$scope', function ($scope) {
        $scope.appDefaults = {
            appName: 'ng-gab',
            appVersion: '0.0.1'
        };
    }]);