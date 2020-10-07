﻿/*!
app.js
(c) 2020 IG PROG, www.igprog.hr
*/
angular.module('app', ['ui.router', 'ngStorage', 'pascalprecht.translate'])
.config(['$stateProvider', '$urlRouterProvider', '$httpProvider', '$translateProvider', '$translatePartialLoaderProvider', ($stateProvider, $urlRouterProvider, $httpProvider, $translateProvider, $translatePartialLoaderProvider) => {

    $stateProvider
        .state('login', {
            url: '/login', templateUrl: './assets/partials/login.html', controller: 'loginCtrl'
        })
        .state('booking', {
            url: '/booking', templateUrl: './assets/partials/booking.html', controller: 'bookingCtrl'
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
        year: () => {
            return new Date().getFullYear();
        },
        years: (fromYear) => {
            var years = [];
            for (var i = fromYear; i <= new Date().getFullYear() + 1; i++) {
                years.push(i);
            }
            return years;
        },

    }
}])

.controller('appCtrl', ['$scope', '$http', '$rootScope', 'f', '$sessionStorage', '$translate', '$translatePartialLoader', '$state', '$localStorage', function ($scope, $http, $rootScope, f, $sessionStorage, $translate, $translatePartialLoader, $state, $localStorage) {

    var data = {
        isLogin: sessionStorage.getItem('islogin') == 'true' ? true : false,
        currTpl: null
    }
    $scope.g = data;  // global data

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
            reloadPage();
        });
    };
    getConfig();

    $scope.go = (x) => {
        $state.go(x);
        $scope.g.currTpl = x;
    }
    $state.go('login');

    $scope.active = (x) => {
        return $scope.g.currTpl === x ? 'active' : '';
    }

    $scope.logout = () => {
        $scope.go('login');
        $scope.g.isLogin = false;
        sessionStorage.setItem('islogin', false);
    }

}])

.controller('loginCtrl', ['$scope', '$http', '$rootScope', 'f', '$sessionStorage', '$translate', '$stateParams', '$timeout', function ($scope, $http, $rootScope, f, $sessionStorage, $translate, $stateParams, $timeout) {
    var service = 'Admin';

    var init = () => {
        f.post(service, 'Init', {}).then((d) => {
            $scope.d = d;
        });
    }

    if ($scope.g.isLogin) {
        $scope.go('booking');
    } else {
        init();
    }

    $scope.login = (x) => {
        f.post(service, 'Login', { x: x }).then((d) => {
            if (d) {
                $scope.go('booking');
            } else {
                $scope.go('login');
                alert('pogrešno korisničko ime ili lozinka');
            }
            $scope.g.isLogin = d;
            sessionStorage.setItem('islogin', d);
        });
    }

}])

.controller('bookingCtrl', ['$scope', '$http', '$rootScope', 'f', '$translate', '$stateParams', function ($scope, $http, $rootScope, f, $translate, $stateParams) {
    var service = 'Booking';
    $scope.year = $scope.config.year;
    $scope.years = f.years($scope.config.fromyear);
    $scope.calendar = null;

    var getAccommodation = () => {
        f.get('accommodation').then((d) => {
            $scope.accommodation = d;
        })
    };
    getAccommodation();

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
        angular.forEach($scope.calendar, function (value, key) {
            var ap = value.apartment.split(',');
            angular.forEach(ap, function (val, key) {
                list = [];
                list.push('Apartman A' + val);
                list.push(value.name);
                list.push(value.confirmed === true ? '#8d8' : '#f56c6c');
                list.push(f.toDate(value.arrival));
                list.push(f.toDate(value.departure));
                list_.push(list);
            });
        });
        dataTable.addRows(list_);

        var options = {
            backgroundColor: '#ffd',
            hAxis: {
                minValue: new Date($scope.year + $scope.config.mindate),
                maxValue: new Date($scope.year + $scope.config.maxdate)
            }
        };

        chart.draw(dataTable, options);

    }

    var loadCalendar = (year) => {
        f.post(service, 'LoadCalendar', { year: year, showDetails: true }).then((d) => {
            $scope.calendar = d;
            google.charts.load('current', { 'packages': ['timeline'] });
            google.charts.setOnLoadCallback(drawChart);
            drawChart();
        });
    }

    var load = (year) => {
        f.post(service, 'Load', { year: year }).then((d) => {
            $scope.d = d;
            loadCalendar(year);
        });
    }

    $scope.load = (year) => {
        load(year);
    }

    if (!$scope.g.isLogin) {
        $scope.go('login');
    } else {
        load($scope.year);
    }

    $scope.update = (x) => {
        var x_ = angular.copy(x);
        x_.arrival = f.setDate(x.arrival);
        x_.departure = f.setDate(x.departure);
        x.isEdit = false;
        f.post(service, 'Save', { x: x_ }).then((d) => {
            loadCalendar($scope.year);
        });
    }

    $scope.edit = (x) => {
        x.isEdit = !x.isEdit;
        x.arrival = f.toDate(x.arrival);
        x.departure = f.toDate(x.departure);
    }

    $scope.add = () => {
        f.post(service, 'Init', {}).then((d) => {
            d.isEdit = true;
            $scope.d.push(d);
        });
    }

    $scope.remove = (id) => {
        if (confirm('Briši?')) {
            f.post(service, 'Delete', { id: id, year: $scope.year }).then((d) => {
                load($scope.year);
            });
        }
    }

}])

/********** Directives **********/
.directive('jsonDirective', function () {
    return {
        restrict: 'E',
        scope: { data: '=', desc: '=', debug: '=' },
        templateUrl: '../assets/partials/directive/json.html',
        controller: 'jsonCtrl'
    };
})
.controller('jsonCtrl', ['$scope', '$rootScope', function ($scope, $rootScope) {
    $scope.isShow = false;
    $scope.show = function () {
        $scope.isShow = !$scope.isShow;
    }
}])
/********** Directives **********/

;