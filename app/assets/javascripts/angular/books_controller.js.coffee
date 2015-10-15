AngulaRails.controller "BooksController", ($scope, $http) ->
  # # commenting out doesn't break the app.  Is the getBooks function
  # # dead code now?
  $scope.getBooks = () ->
    $http({ method: "GET", url: $scope.urls.books })
      .success (response) ->
        $scope.books = response.books
  $scope.save = () ->
    $http({ method: "POST", url: $scope.urls.books, data: $scope.book })
      .success (response) ->
        $scope.book = {}
        $scope.getBooks()

