angular.module 'questler'
  .controller 'UserUpdateCtrl', ($scope, $resource, User, usersService) ->
    $scope.user = User.update(id: $state.params.id)
