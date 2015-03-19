angular.module 'questler'
  .controller 'UsersCtrl', ($scope, $resource, User, usersService) ->
    $scope.users = User.query()
    
