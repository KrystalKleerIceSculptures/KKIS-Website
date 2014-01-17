function GalleryCtrl($scope, $http) {
    $scope.albums = [];
    $scope.status = 'loading';

    $scope.loadAlbums = function (data, status, headers, config) {
        $scope.albums = [];
        for (var i in data) {
            var album = {
                id: data[i].Id,
                title: data[i].Title,
                photos: []
            };
            for (var j in data[i].Photos) {
                album.photos.push(data[i].Photos[j]);
            }
            $scope.albums.push(album);
        }
        $scope.status = '';
    };

    $scope.retrieveAlbums = function () {
        $http.post(dataUrl)
            .success($scope.loadAlbums)
            .error(function () {
                $scope.status = 'error';
            });
    };
}