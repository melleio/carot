<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	


	<div class="row" style="background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% loop Children %>
		<% if Image %>
		<div class="col-sm-3" class="team-list" style="text-align: center;">
			<p>$Image.SetWidth(150)
			<p><strong><a href="$Link">$MenuTitle</a></strong></p>
			</p>
		</div>
		<% else %>

		<% end_if %>
		<% end_loop %>
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
	</div>
</div>