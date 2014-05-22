
<!-- slider container -->
<div id="myCarousel" class="container slider">

    <!-- enumerate all photos -->
    <img ng-repeat="photo in photos" class="galleryslide" ng-swipe-right="showPrev()" ng-swipe-left="showNext()" ng-show="isActive(\$index)" ng-src="{{photo.src}}" />

    <!-- prev / next controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev" ng-click="showPrev()">&lsaquo;</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next" ng-click="showNext()">&rsaquo;</a>

    <!-- extra navigation controls -->
    <ul class="gallerynav">
        <li ng-repeat="photo in photos" ng-class="{'active':isActive(\$index)}">
            <img src="{{photo.src}}" alt="{{photo.desc}}" title="{{photo.desc}}" ng-click="showPhoto(\$index);" />
        </li>
    </ul>

</div>
