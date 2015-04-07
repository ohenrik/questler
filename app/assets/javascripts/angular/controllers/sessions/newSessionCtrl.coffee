angular.module 'questler'
  .controller 'newSessionCtrl', ($scope, $resource, User, usersService) ->
    $scope.user = new Session
