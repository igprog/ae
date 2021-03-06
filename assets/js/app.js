﻿/*!
app.js
(c) 2020 IG PROG, www.igprog.hr
*/
angular.module('app', ['ui.router', 'ngStorage', 'pascalprecht.translate'])
.config(['$stateProvider', '$urlRouterProvider', '$httpProvider', '$translateProvider', '$translatePartialLoaderProvider', ($stateProvider, $urlRouterProvider, $httpProvider, $translateProvider, $translatePartialLoaderProvider) => {

    $stateProvider
        .state('home', {
            url: '/', templateUrl: './assets/partials/home.html', controller: 'homeCtrl'
        })
        .state('about', {
            url: '/about', templateUrl: './assets/partials/about.html', controller: 'aboutCtrl'
        })
        .state('accommodation', {
            url: '/accommodation/:apartment', templateUrl: './assets/partials/accommodation.html', controller: 'accommodationCtrl'
        })
        .state('gallery', {
            url: '/gallery', templateUrl: './assets/partials/gallery.html', controller: 'galleryCtrl'
        })
        .state('price', {
            url: '/price', templateUrl: './assets/partials/price.html', controller: 'priceCtrl'
        })
        .state('calendar', {
            url: '/calendar', templateUrl: './assets/partials/calendar.html', controller: 'calendarCtrl'
        })
        .state('booking', {
            url: '/booking', params: {apartment: 0, arrival: null, departure: null, adult: 0, child: 0},  templateUrl: './assets/partials/booking.html', controller: 'bookingCtrl'
        })
        .state('contact', {
            url: '/contact', templateUrl: './assets/partials/contact.html', controller: 'contactCtrl'
        })

    $urlRouterProvider.otherwise("/");

    $translateProvider.useLoader('$translatePartialLoader', {
        urlTemplate: '../assets/json/translations/{lang}/{part}.json'
    });
    $translateProvider.preferredLanguage('hr');
    $translatePartialLoaderProvider.addPart('main');
    $translateProvider.useSanitizeValueStrategy('escape');

    //*******************disable catche**********************
    if (!$httpProvider.defaults.headers.get) {
        $httpProvider.defaults.headers.get = {};
    }
    $httpProvider.defaults.headers.get['If-Modified-Since'] = 'Mon, 26 Jul 1997 05:00:00 GMT';
    $httpProvider.defaults.headers.get['Cache-Control'] = 'no-cache';
    $httpProvider.defaults.headers.get['Pragma'] = 'no-cache';
    //*******************************************************
}])

.factory('f', ['$http', ($http) => {
    return {
        post: (service, method, data) => {
            return $http({
                url: '../' + service + '.asmx/' + method,
                method: 'POST',
                data: data
            })
            .then((response) => {
                return JSON.parse(response.data.d);
            },
            (response) => {
                return response.data.d;
            });
        },
        get: (file) => {
            return $http.get('../assets/json/' + file + '.json')
              .then((response) => {
                  return response.data;
              });
        },
        setDate: (x) => {
            var day = x.getDate();
            day = day < 10 ? '0' + day : day;
            var mo = x.getMonth();
            mo = mo + 1 < 10 ? '0' + (mo + 1) : mo + 1;
            var yr = x.getFullYear();
            return yr + '-' + mo + '-' + day;
        },
        setDateTime: (x) => {
            var day = x.getDate();
            day = day < 10 ? '0' + day : day;
            var mo = x.getMonth();
            mo = mo + 1 < 10 ? '0' + (mo + 1) : mo + 1;
            var yr = x.getFullYear();
            var h = x.getHours();
            h = h < 10 ? '0' + h : h;
            var m = x.getMinutes();
            m = m < 10 ? '0' + m : m;
            return day + '.' + mo + '.' + yr + ' - ' + h + ':' + m;
        },
        toDate: (x) => {
            return new Date(x);
        },
        isNullOrEmpty: (x) => {
            return (!x || x === undefined || x === "" || x === null || x.length == 0);
        }
    }
}])

.controller('appCtrl', ['$scope', '$http', '$rootScope', 'f', '$sessionStorage', '$translate', '$translatePartialLoader', '$state', '$localStorage', function ($scope, $http, $rootScope, f, $sessionStorage, $translate, $translatePartialLoader, $state, $localStorage) {

    var data = {
        loading: false,
        info: null,
        availability: null,
        accommodation: null,
        calendar: null,
        contact: null,
        booking: null
    }
    $scope.d = data;

    var globalData = {
        isLogin: sessionStorage.getItem('islogin') == 'true' ? true : false,
        currTpl: null,
        apartment: null
    }
    $scope.g = globalData;  // global data

    var reloadPage = () => {
        if (typeof (Storage) !== 'undefined') {
            if (localStorage.version) {
                if (localStorage.version !== $scope.config.version) {
                    localStorage.version = $scope.config.version;
                    window.location.reload(true);
                }
            } else {
                localStorage.version = $scope.config.version;
            }
        }
    }

    var getConfig = () => {
        $http.get('../config/config.json').then((response) => {
            $scope.config = response.data;
            $rootScope.config = response.data;
            reloadPage();
        });
    };
    getConfig();

    var getInfo = () => {
        f.get('info').then((d) => {
            $scope.d.info = d;
        })
    };
    getInfo();

    var getAccommodation = () => {
        f.get('accommodation').then((d) => {
            $scope.d.accommodation = d;
        })
    };
    getAccommodation();

    $scope.go = (x) => {
        $state.go(x);
        $scope.g.currTpl = x;
    }
    $state.go('home');

    $scope.goApartment = (x) => {
        $state.go('accommodation', { apartment: 'a' + x });
        $scope.g.currTpl = x;
    }

    $scope.goBooking = (ap, arr, dep, ad, ch) => {
        $state.go('booking', { apartment: ap, arrival: arr, departure: dep, adult: ad, child: ch });
        $scope.g.currTpl = 'booking';
    }

    $scope.active = (x) => {
        return $scope.g.currTpl === x ? 'active' : '';
    }

}])

.controller('homeCtrl', ['$scope', '$http', '$rootScope', 'f', '$sessionStorage', '$translate', '$stateParams', '$timeout', function ($scope, $http, $rootScope, f, $sessionStorage, $translate, $stateParams, $timeout) {
    var service = 'Booking';

    var init = () => {
        f.post(service, 'Init', {}).then((d) => {
            $scope.d.availability = d;
        });
    }
    init();

    var initValidation = () => {
        $scope.validation = {
            arrival: true,
            departure: true,
            adult: true
        }
    }
    initValidation();

    $scope.checkAvailability = (x) => {
        initValidation();
        if (f.isNullOrEmpty(x.arrival)) {
            $scope.validation.arrival = false;
            return false;
        } else if (f.isNullOrEmpty(x.departure)) {
            $scope.validation.departure = false;
            return false;
        } else if (f.isNullOrEmpty(x.adult)) {
            $scope.validation.adult = false;
            return false;
        }
        var x_ = angular.copy(x);
        x_.arrival = f.setDate(x.arrival);
        x_.departure = f.setDate(x.departure);
        f.post(service, 'CheckAvailability', { x: x_ }).then((d) => {
            $scope.availability = d;
        });
    }

}])

.controller('aboutCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', function ($scope, $http, $rootScope, f, $translate) {

}])

.controller('accommodationCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', '$stateParams', function ($scope, $http, $rootScope, f, $translate, $stateParams) {
    var data = {
        accommodation: null,
        currApartment: null
    }
    $scope.d = data;

    $scope.g.apartment = $stateParams.apartment;

    var getApartment = () => {
        f.get('accommodation').then((d) => {
            $scope.d.accommodation = d;
            $scope.d.currApartment = $scope.d.accommodation.find(a => a.code.toLowerCase() === $scope.g.apartment.toLowerCase());
        })
    };
    getApartment();


}])

.controller('galleryCtrl', ['$scope', '$http', 'f', '$translate', function ($scope, $http, f, $translate) {

}])

.controller('priceCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', function ($scope, $http, $rootScope, f, $translate) {

}])

.controller('calendarCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', function ($scope, $http, $rootScope, f, $translate) {
    var service = 'Booking';

    function drawChart() {
        var container = document.getElementById('timeline');
        var chart = new google.visualization.Timeline(container);
        var dataTable = new google.visualization.DataTable();

        dataTable.addColumn({ type: 'string', id: 'Apartment' });
        dataTable.addColumn({ type: 'string', id: 'Name' });
        dataTable.addColumn({ type: 'string', role: 'style' });
        dataTable.addColumn({ type: 'date', id: 'Start' });
        dataTable.addColumn({ type: 'date', id: 'End' });

        var list = [];
        var list_ = [];
        angular.forEach($scope.d.calendar, function (value, key) {
            var ap = value.apartment.split(',');
            angular.forEach(ap, function (val, key) {
                list = [];
                list.push('Apartman A' + val);
                list.push(value.name);
                list.push('#8d8');
                list.push(f.toDate(value.arrival));
                list.push(f.toDate(value.departure));
                list_.push(list);
            });
        });
        dataTable.addRows(list_);

        var options = {
            hAxis: {
                minValue: new Date($scope.config.year + $scope.config.mindate),
                maxValue: new Date($scope.config.year + $scope.config.maxdate)
            }
        };

        chart.draw(dataTable, options);
    }

    var load = () => {
        f.post(service, 'LoadCalendar', { year: $scope.config.year, showDetails: false }).then((d) => {
            $scope.d.calendar = d;
            google.charts.load('current', { 'packages': ['timeline'] });
            google.charts.setOnLoadCallback(drawChart);
            drawChart();
        });
    }
    load();

}])

.controller('bookingCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', '$stateParams', function ($scope, $http, $rootScope, f, $translate, $stateParams) {
    var service = 'Booking';
    $scope.g.apartment = $stateParams.apartment;

    $scope.sending = false;

    angular.forEach($scope.d.accommodation, function (value, key) {
        value.selected = $scope.g.apartment === value.code ? true : false;
    });

    var init = () => {
        f.post(service, 'Init', {}).then((d) => {
            $scope.d.booking = d;
            $scope.d.booking.arrival = $stateParams.arrival;
            $scope.d.booking.departure = $stateParams.departure;
            $scope.d.booking.adult = $stateParams.adult;
            $scope.d.booking.child = $stateParams.child;
        });
    }
    init();

    var initValidation = () => {
        $scope.validation = {
            firstName: true,
            lastName: true,
            email: true,
            arrival: true,
            departure: true,
            adult: true
        }
    }
    initValidation();

    $scope.send = (x) => {
        initValidation();
        if (f.isNullOrEmpty(x.firstName)) {
            $scope.validation.firstName = false;
            return false;
        } else if (f.isNullOrEmpty(x.lastName)) {
            $scope.validation.lastName = false;
            return false;
        } else if (f.isNullOrEmpty(x.email)) {
            $scope.validation.email = false;
            return false;
        } else if (f.isNullOrEmpty(x.arrival)) {
            $scope.validation.arrival = false;
            return false;
        } else if (f.isNullOrEmpty(x.departure)) {
            $scope.validation.departure = false;
            return false;
        } else if (f.isNullOrEmpty(x.adult)) {
            $scope.validation.adult = false;
            return false;
        }
        $scope.sending = true;
        var x_ = angular.copy(x);
        x_.arrival = f.setDate(x.arrival);
        x_.departure = f.setDate(x.departure);
        var arr = [];
        var selectedAp = null;
        angular.forEach($scope.d.accommodation, function (value, key) {
            if (value.selected) {
                arr.push(value.ap);
            }
            selectedAp = arr.join(',');
        });
        x_.apartment = selectedAp;
        f.post(service, 'Send', { x: x_ }).then((d) => {
            $scope.d.booking = d;
            $scope.d.booking.arrival = f.toDate(d.arrival);
            $scope.d.booking.departure = f.toDate(d.departure);
            $scope.sending = false;
        });
    }

}])

.controller('contactCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', function ($scope, $http, $rootScope, f, $translate) {
    var service = 'Contact';
    $scope.sending = false;

    var init = () => {
        f.post(service, 'Init', {}).then((d) => {
            $scope.d.contact = d;
        });
    }
    init();

    var initValidation = () => {
        $scope.validation = {
            name: true,
            email: true,
            msg: true,
        }
    }
    initValidation();

    $scope.send = (x) => {
        initValidation();
        if (f.isNullOrEmpty(x.name)) {
            $scope.validation.name = false;
            return false;
        } else if (f.isNullOrEmpty(x.email)) {
            $scope.validation.email = false;
            return false;
        } else if (f.isNullOrEmpty(x.msg)) {
            $scope.validation.msg = false;
            return false;
        }

        $scope.sending = true;
        f.post(service, 'Send', { x: x }).then((d) => {
            $scope.d.contact = d;
            $scope.sending = false;
        });
    }

}])

/********** Directives **********/
.directive('bannerDirective', function () {
    return {
        restrict: 'E',
        scope: { tpl: '=' },
        templateUrl: '../assets/partials/directive/banner.html',
        controller: 'bannerCtrl'
    };
})
.controller('bannerCtrl', ['$scope', '$rootScope', function ($scope, $rootScope) {
    $scope.desc = $rootScope.config.menu.find(a => a.tpl === $scope.tpl).desc;
}])

.directive('jsonDirective', function () {
    return {
        restrict: 'E',
        scope: { data: '=', desc: '=', debug: '=' },
        templateUrl: '../assets/partials/directive/json.html',
        controller: 'jsonCtrl'
    };
})
.controller('jsonCtrl', ['$scope', function ($scope) {
    $scope.isShow = false;
    $scope.show = function () {
        $scope.isShow = !$scope.isShow;
    }
}])
/********** Directives **********/

;