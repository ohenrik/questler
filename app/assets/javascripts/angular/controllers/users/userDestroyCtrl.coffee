angular.module 'questler'
  .controller 'UserDestroyCtrl', ($scope, $resource, User, $state, usersService) ->
    $scope.user = User.delete(id: $state.params.id)
    $state.go('users')
