<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	
	<div class="row">
		<% loop ChildrenOf(laboratory-research) %>
		<div class="col-sm-6">
			<h2 class="lab-header">$Title</h2>
			<ul>
				<% if URLSegment == translational-studies %>
				<% loop ChildrenOf(translational-studies) %>
					<li><a href="$Link">$Title</a></li>		
				<% end_loop %>
				<% end_if %>
			</ul>
		</div>
		<% end_loop %>
	</div>
	
</div>
</div>