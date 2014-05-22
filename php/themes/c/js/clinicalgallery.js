
var galleryServices = angular.module('galleryServices', ['ngResource']);

galleryServices.factory('Gallery', ['$resource',
  function($resource){
    return $resource('jsonservice/Gallery/photos.json', {}, {
      query: {method:'GET', params:{pageID:'15'}, isArray:true}
    });
  }]);
var pageID = $('title').attr('pageId');
angular.module('researchApp', ['ngAnimate', 'ngTouch', 'galleryServices', 'ngRoute'])
  .controller('MainCtrl', ['$scope', 'Gallery', function ($scope, Gallery) {

    // Set of Photos
    Gallery.get({pageID: pageID}, function(phone) {
        //$scope.mainImageUrl = 
        $scope.photos = phone.response.photos;
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

