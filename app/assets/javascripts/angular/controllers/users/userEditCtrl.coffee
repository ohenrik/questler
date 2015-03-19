angular.module 'questler'
  .controller 'UserEditCtrl', ($scope, $resource, User, $state, usersService) ->
    $scope.user = User.get(id: $state.params.id)
