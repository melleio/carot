<div class="slide story" id="slide-1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	
		<% loop ChildrenOf(laboratory-research) %>
		<% if $First %>
		<div class="row">
		<% end_if %>
		<% if $MultipleOf(3) %>
		<div class="row">
		<% end_if %>
		<div class="col-sm-6">
			<% if URLSegment == 'translational-studies' %>
			<h2 class="lab-header"><a href="#" class="toggle">$Title</a></h2>
			<% else %>
			<h2 class="lab-header"><a href="$Link">$Title</a></h2>
			<% end_if %>
			<ul class="lab-list">
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