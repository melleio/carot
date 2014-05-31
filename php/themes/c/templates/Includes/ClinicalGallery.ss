
<!-- slider container -->
<div id="myCarousel" class="container slider">

    <!-- enumerate all photos -->
    <div ng-repeat="photo in photos">
        <img class="galleryslide" ng-swipe-right="showPrev()" ng-swipe-left="showNext()" ng-show="isActive(\$index)" ng-src="{{photo.src}}" />
        <p class="gallery-caption">Caption{{photo.description}}</p>
    </div>
    <!-- prev / next controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev" ng-click="showPrev()"><i style="padding-top:180px" class="fa fa-arrow-circle-left"></i></a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next" ng-click="showNext()"><i style="padding-top:180px" class="fa fa-arrow-circle-right"></i></a>

    <!-- extra navigation controls -->
    <ul class="gallerynav">
        <li ng-repeat="photo in photos" ng-class="{'active':isActive(\$index)}">
            <img src="{{photo.src}}" alt="{{photo.desc}}" title="{{photo.desc}}" ng-click="showPhoto(\$index);" />

        </li>
    </ul>

</div>
