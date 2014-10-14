NGGab.controller("DefaultInfoCtrl", function ($scope, $http) {
    $http.get('rest/index.php/api/app_info/info/format/json/').
            success(function (data, status, headers, config) {
                $scope.dafaultInfoArray = data;
            }).
            error(function (data, status, headers, config) {
                // log error
            });
});
NGGab.controller("PostsFeedCtrl", function ($scope, $http) {
    $http.get('rest/index.php/api/posts/posts_list/format/json/').
            success(function (post, status, headers, config) {
                $scope.postsFeedArray = post;
            }).
            error(function (data, status, headers, config) {
                // log error
            });
});

