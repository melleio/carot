<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
	<div class="container">
		<% include BreadCrumbs %>
		<div class="row">
			<div class="col-sm-12" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/Clinical-Trials-Main/other-graphic-elements/Clinical-Trials-Image-Bed-for-Mission-Statement-.png') no-repeat;background-size:cover;background-position: 100% 100%;padding:2.5%;margin:1% 0;">
				<p>$Title</p>
			</div>
		</div>
		<div class="row">
			<% if References %>
			<div class="col-sm-7 gray-box" style="background:url('$AbsoluteURL/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
				<div class="content-text">
					$Content
				</div>
			</div>
			
			<div class="col-sm-4" id="references" >
				<h4 class="ref-header">References</h4>
				<ol class="ref-list">
					<% loop References %>
						<li>$Title</li>
					<% end_loop %>
				</ol>
				
			</div>
			<% else %>
			<div class="col-sm-12 gray-box" style="background:url('$AbsoluteURL/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
				<div class="content-text">
				$Content
				</div>
			</div>
			<% end_if %>
		</div>
	</div>
</div>