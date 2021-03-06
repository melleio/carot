<div class="slide story" id="slide-1" ng-controller="MainCtrl">

<div class="container">

	<% include BreadCrumbs %>
	

	<div class="row">
		<div class="col-sm-12" style="background:url('assets/Research/Clinical-Trials/Clinical-Trials-Main/other-graphic-elements/Clinical-Trials-Image-Bed-for-Mission-Statement-.png') no-repeat;background-size:cover;background-position: 100% 100%;padding:2.5%;margin:1% 0;">
			<p><% if TopContent %> $TopContent <% else %> $Parent.TopContent <% end_if %></p>
		</div>
	</div>

	<div class="row" style="background:url('assets/Research/Clinical-Trials/Clinical-Trials-Main/nav/REV1-BlueWhitish-Nav-Bar-In-Clinical-Trials-Section.png') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% loop $Parent.Children %>
		<div class="col-sm-3" style="padding:1% 2%;margin-top: 20px;">
			<p class="$LinkingMode" style="text-align:center;min-height: 112px;"><a href="$Link">$Image.SetHeight(107)</a></p>
			<p class="$LinkingMode" style="text-align:center;text-transform:uppercase;font-size:1.2em;"><span><a href="$Link"><strong>$MenuTitle</strong></a></span></p>
		</div>
		<% end_loop %>
		<% if $Parent.URLSegment = 'clinical-trials' %>
		<% with Page(high-resolution-retinal-imaging) %>
		<div class="col-sm-3" style="padding:1% 2%;margin-top: 20px;">
			<p class="$LinkingMode" style="text-align:center;min-height: 112px;"><a href="$Link">$Image.SetHeight(107)</a></p>
			<p class="$LinkingMode" style="text-align:center;text-transform:uppercase;font-size:1.2em;"><span><a href="$Link"><strong>$MenuTitle</strong></a></span></p>
		</div>
		<% end_with %>
		<% end_if %>
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
	</div>

	<div class="row">
		
		<div class="col-sm-12">
			<% include ClinicalGallery %>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<h1 class="" style="margin-left: 20px;color:rgba(226,88,88,255);text-transform:uppercase;">$MenuTitle</h1>
			<h2 class="" style="margin-left: 20px;color:#777;text-transform:uppercase;margin-bottom: 25px;">$Title</h2>
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
				<% loop References.Sort(SortOrder) %>
					<li>$Title</li>
				<% end_loop %>
			</ol>
			
		</div>
	<% else %>
		<div class="col-sm-12 gray-box" style="background:url('assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			<div class="content-text">
			$Content
			</div>
		</div>
	<% end_if %>
	</div>

</div>