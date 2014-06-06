<div class="slide story" id="slide-1" ng-controller="MainCtrl">
	<div class="container">
	<div class="row">
	<div class="col-sm-4" style="padding: 60px 100px;">
		$Image
	</div>
	<div class="col-sm-8">
		<% include SubpageBreadCrumbs %>
		<div class="row">
			<div class="col-sm-12 team-title" style="padding:2.5%;">
				<p style="color: #428bca;font-size:36pt">$Title</p>
				<p style="color: #428bca;font-size:26pt">$Position</p>
			</div>
		</div>
		<div class="row">
			<% if References %>
			<div class="col-sm-7 gray-box" style="background:url('assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
				<div class="content-text">
					$Content
				</div>
			</div>
			
			<div class="col-sm-4" id="references" >
				<h4 class="ref-header">References</h4>
				<ol class="ref-list">
					<% loop References %>
						<li style="color:#428bca;font-size:36pt;">$Title</li>
					<% end_loop %>
				</ol>
				
			</div>
			<% else %>
			<div class="col-sm-12 team-body" style="margin-top: 10px;">
				<div class="content-text">
				$Content
				</div>
			</div>
			<% end_if %>
		</div>
	</div>
	</div>
</div>