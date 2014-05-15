<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	<div class="row">
		<div class="col-sm-12">
			<h1 style="color:red;text-transform:uppercase;text-align:center;">$Title</h1>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<% include ResearchGallery %>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/Clinical-Trials-Main/other-graphic-elements/Clinical-Trials-Image-Bed-for-Mission-Statement-.png') no-repeat;background-size:cover;background-position: 100% 100%;padding:2.5%;margin:1%;">
			<p><% if TopContent %> $TopContent <% end_if %></p>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<h1 style="color:#777;text-transform:uppercase;text-align:center;">$Title</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 gray-box" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			<div class="content-text">
			$Content
			</div>
		</div>
	</div>

</div>