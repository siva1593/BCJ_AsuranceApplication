/**
 * This is the module to redirect the page according to the url pattern. Angular ui-router 
 * is implemented to achieve the task
 */
(function () {
    angular.module("autoInsurance")
        .config(["$urlRouterProvider", "$stateProvider", function ($urlRouterProvider, $stateProvider) {
            //configuring the routes
            var loginObj = {
            		url: '/login',
                templateUrl: "public/app/templates/login.jsp"
            };
            var registerObj = {
            		url: '/register',
                templateUrl: "public/app/templates/register.jsp"
            };
            var quoteObj = {
            		url: '/quote',
                templateUrl: "public/app/templates/tabs.jsp",
              
            };
            var retrieveQuoteObj = {
            		url: '/retrieve-quote',
                templateUrl: "public/app/templates/retrieve-quote.jsp"
                
            };
            $stateProvider.state("login", loginObj);
            $stateProvider.state("register", registerObj);
            $stateProvider.state("quote", quoteObj);
            $stateProvider.state("retrieveQuote", retrieveQuoteObj);
    }]).run(["$state", function ($state) {
            $state.go("quote");
    }])
})();
