angular.module 'questler'
  .controller 'UserNewCtrl', ($scope, $resource, User, usersService) ->
    $scope.user = new User
