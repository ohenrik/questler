angular.module 'questler'
  .controller 'UserCtrl', ($scope, $resource, User, $state, usersService) ->
    $scope.user = User.get(id: $state.params.id)
