<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	

	<div class="row">
		<div class="col-sm-12" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/Clinical-Trials-Main/other-graphic-elements/Clinical-Trials-Image-Bed-for-Mission-Statement-.png') no-repeat;background-size:cover;background-position: 100% 100%;padding:2.5%;margin:1% 0;">
			<p><% if TopContent %> $TopContent <% else %> $Parent.TopContent <% end_if %></p>
		</div>
	</div>

	<div class="row" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/Clinical-Trials-Main/nav/REV1-BlueWhitish-Nav-Bar-In-Clinical-Trials-Section.png') no-repeat;background-size:cover;background-position: 100% 100%;">
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
		<% loop ChildrenOf(clinical-trials) %>
		<div class="col-sm-2" style="padding:2.5%;">
			<p>$Image.SetWidth(160)</p>
			<p style="text-align:center;"><strong><a href="$Link">$MenuTitle</a></strong></p>
		</div>
		<% end_loop %>
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-3">
			<div class="options">
				<a href="#"><img src="images/buttons/share.png" alt="share button" title="Share" /></a>
			</div>
		</div>
		<div class="col-sm-9">
			<% include ClinicalGallery %>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<h1 class="" style="color:red;text-transform:uppercase;">$MenuTitle</h1>
			<h2 class="" style="color:#777;text-transform:uppercase;">$Title</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-7 gray-box" style="background:url('$AbsoluteURL/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			<div class="content-text">
				$Content
			</div>
		</div>
		<% if References %>
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