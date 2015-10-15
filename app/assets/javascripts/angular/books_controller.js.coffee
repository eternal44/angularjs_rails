AngulaRails.controller "BooksController", ($scope, $http) ->
  $scope.getBooks = () ->
    $http({ method: "GET", url: "/books" })
      .success (response) ->
        $scope.books = response.books
