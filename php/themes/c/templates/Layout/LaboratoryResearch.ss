<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	
		<% loop ChildrenOf(laboratory-research) %>
		<% if $MultipleOf(4) %>
		<div class="row">
		<% end_if %>
		<div class="col-sm-6">
			<h2 class="lab-header">$Title</h2>
			<ul>
				<% if URLSegment == 'translational-studies' %>
				<% loop Children %>
				<li><a href="$Link">$Title</a></li>		
				<% end_loop %>
				<% end_if %>
			</ul>
		</div>
		<% if $MultipleOf(2) %>
		</div>
		<% end_if %>
		<% end_loop %>
	
</div>
</div>