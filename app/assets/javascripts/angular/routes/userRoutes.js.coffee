angular.module("questler")
  .config ($httpProvider, $locationProvider, $stateProvider, $urlRouterProvider) ->
    $locationProvider.html5Mode true
    $stateProvider
      .state 'users',
        url: '/users'
        templateUrl: 'users.html'
        controller: 'UsersCtrl'

      .state 'newUser',
        url: '/users/new'
        templateUrl: (params) ->
          'users/new.html'

      .state 'user',
        url: '/users/:id'
        templateUrl: (params) ->
          "users/#{params.id}.html"
        controller: 'UserCtrl'

      .state 'editUser',
        url: '/users/:id/edit'
        templateUrl: (params) ->
          "users/#{params.id}/edit.html"
        controller: 'UserEditCtrl'

      .state 'updateUser',
        url: '/users/:id/update'
        templateUrl: (params) ->
          "users/#{params.id}/edit.html"
        controller: 'UserUpdateCtrl'

      .state 'destroyUser',
        url: '/users/:id/destroy'
        controller: 'UserDestroyCtrl'
      
      $urlRouterProvider.otherwise '/users'

    return
