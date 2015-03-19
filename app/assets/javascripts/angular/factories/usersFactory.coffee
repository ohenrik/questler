app = angular.module 'questler'
  .factory "User", ($resource) ->
    $resource "/users/:id", { id: "@id" },
      'update':
        method: 'PUT'
