app = angular.module 'questler'
  .factory "Session", ($resource) ->
    $resource "http://localhost:3000/users/:id", { id: "@id" },
      'update':
        method: 'PUT'
