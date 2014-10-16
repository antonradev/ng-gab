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
            success(function (postContent, status, headers, config) {
                $scope.postsFeedArray = postContent;
            }).
            error(function (data, status, headers, config) {
                // log error
            });
});

NGGab.controller("TweetsCtrl", function ($scope, $http) {
    $http.get('tweets/tweets.php').
            success(function (postContent, status, headers, config) {
                $scope.tweetsArray = postContent;
            }).
            error(function (data, status, headers, config) {
                // log error
            });
});




NGGab.controller("PostStatusCtrl", function ($scope, $http) {
    $scope.postContent = null;
    $scope.InsertPost = function () {
        var config = {
            headers: {
                "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
            }

        };
        var data = $scope.postContent;
        $http.post("rest/index.php/api/posts/post/format/json/", data, config).success(function (data, status, headers) {
            console.log("Post inserted: " + data);
            window.location.reload();
        });
    };

});
