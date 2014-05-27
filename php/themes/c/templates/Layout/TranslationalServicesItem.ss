<div class="slide story" id="slide-1" ng-controller="MainCtrl">
	<div class="container">
		<% include SubpageBreadCrumbs %>
		<div class="row">
			<div class="col-sm-12" style="padding:0px 2.5%;background-position: 0% -68px;">
				<h2 style="color: #428bca;font-size:36pt;font-weight:bold;text-align:left;margin-left: 20px;" >$Title</h2>
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
			<div class="col-sm-12 gray-box" style="background:url('$AbsoluteURL/assets/Services/REV3-Header-and-Body-Images-for-the-Text-in-the-6-Services-on-the-Main-Service-Page/REV3earlystage-body-2-889x448.png');background-size:cover;background-position: 100% 100%;">
				<div class="content-text">
				$Content
				</div>
			</div>
			<% end_if %>
		</div>
	</div>
</div>