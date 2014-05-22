
var galleryServices = angular.module('galleryServices', ['ngResource']);

galleryServices.factory('Gallery', ['$resource',
  function($resource){
    return $resource('jsonservice/Gallery/photos.json', {}, {
      query: {method:'GET', params:{pageID:'15'}, isArray:true}
    });
  }]);

angular.module('researchApp', ['ngAnimate', 'ngTouch', 'galleryServices', 'ngRoute'])
  .controller('MainCtrl', ['$scope', 'Gallery', function ($scope, Gallery) {

    // Set of Photos
    Gallery.get({pageId: '15'}, function(phone) {
        //$scope.mainImageUrl = 
        console.log(phone.response.photos[0]);
    });
    //$scope.photos = Gallery.query().photos;

    // initial image index
    $scope._Index = 0;

    // if a current image is the same as requested image
    $scope.isActive = function (index) {
        return $scope._Index === index;
    };

    // show prev image
    $scope.showPrev = function () {
        $scope._Index = ($scope._Index > 0) ? --$scope._Index : $scope.photos.length - 1;
    };

    // show next image
    $scope.showNext = function () {
        $scope._Index = ($scope._Index < $scope.photos.length - 1) ? ++$scope._Index : 0;
    };

    // show a certain image
    $scope.showPhoto = function (index) {
        $scope._Index = index;
    };
}]);

