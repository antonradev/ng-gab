var NGGab = angular.module('NGGab', ['ngRoute']);

NGGab.directive('appHeader', function () {
    return {
        restrict: "E",
        templateUrl: 'templates/app-header.html'
    };
});

NGGab.directive('appNav', function () {
    return {
        restrict: "E",
        templateUrl: 'templates/app-nav.html'
    };
});

NGGab.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
                when('/home', {
                    templateUrl: 'templates/content-container.html',
                    controller: 'Pages_Contents'
                }).
                when('/about', {
                    templateUrl: 'templates/content-container.html',
                    controller: 'Pages_Contents'
                }).
                when('/search', {
                    templateUrl: 'templates/content-container.html',
                    controller: 'Pages_Contents'
                }).
                when('/gallery', {
                    templateUrl: 'templates/content-container.html',
                    controller: 'Pages_Contents'
                }).
                otherwise({
                    templateUrl: 'templates/homepage.html'
                });
    }]);