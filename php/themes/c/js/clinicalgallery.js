collapsedBar = false;
c=false;

$(document).ready(function(e) {
  
  jQuery('#wrapper').animate({opacity: 1},500);
  window.onscroll = function() {
        
        if(window.pageYOffset > 110 && !collapsedBar){  // header size
          c = true;
          // Change Navbar class to fixed
          $("#mainNavigation").removeClass('navbar-static-top');
      $("#mainNavigation").addClass('navbar-fixed-top');
      jQuery('#mainNavigation').animate({opacity: 0.8},500);

        }else if(window.pageYOffset < 110 && collapsedBar){ //full size
          c = false;
          $("#mainNavigation").removeClass('navbar-fixed-top');
      $("#mainNavigation").addClass('navbar-static-top');
      jQuery('#mainNavigation').css({opacity: 1});

        }
        collapsedBar = c;
        //document.body.style.backgroundPosition = (-window.pageXOffset / speed) + "px " + (-window.pageYOffset / speed) + "px";
    }
});

jQuery(document).ready(function() {

jQuery('#wrapper').animate({opacity: 1},500);

});
var pageLoading = false;

function nowLoading(e) {
    
    if(pageLoading) return false;
    pageLoading = true;
    
    $('#wrapper').animate({opacity: 0},500);
}
var galleryServices = angular.module('galleryServices', ['ngResource']);

galleryServices.factory('Gallery', ['$resource',
  function($resource){
    return $resource('http://www-carot.us.melle.io/jsonservice/Gallery/photos.json', {}, {
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

