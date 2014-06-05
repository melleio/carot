<div class="slide story" id="slide-1" ng-controller="MainCtrl">
	<div class="container">
		<div class="row clearfix" id="breadcrumbs">
			<div class="col-sm-12" style="padding: 0px 40px;">
				<span style="font-weight:bold;font-size:1.6em;color:rgba(226,88,88,255);">
				<a href="$Parent.Parent.Link" class="breadcrumb-1">$Parent.Parent.Title</a>
				>>
				<a href="$Parent.Link" class="breadcrumb-2">$Parent.Title</a>
				</span>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12" style="padding: 0px 2.5%;">
				$Image
				<h2 style="color: #428bca;font-size:36pt;font-weight:bold;text-align:left;margin-left: 20px;" >$Title</h2>
			</div>
		</div>
		<div class="row">
			<% if References %>
		<div class="col-sm-7 gray-box" style="background:url('$AbsoluteURL/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			
			<div class="content-text">
				$Content
			</div>
			<ul>
				<% loop Children %>
				<li><a href="$Link">$Title</a></li>		
				<% end_loop %>
			</ul>
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
		<div class="col-sm-12 gray-box" style="background:url('$AbsoluteURL/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			<div class="content-text">
			$Content
			<ul style="padding:0;margin:0;">
				<% loop Children %>
				<li style="list-style-type:none;height:40px;line-height:40px;margin:4px 0;"><a href="$Link">$Title</a></li>		
				<% end_loop %>
			</ul>
			</div>
		</div>
	<% end_if %>
		</div>
	</div>
</div>