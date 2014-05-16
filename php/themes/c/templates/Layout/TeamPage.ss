<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	


	
		<% loop Children %>
		<% if Count % 4 == 0 %>
		<div class="row" style="background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% end_if %>
		<% if Image %>
		<div class="col-xs-6 col-sm-3" class="team-list">
			<p>$Image.SetWidth(150)
			<p><strong><a href="$Link">$MenuTitle</a></strong></p>
			</p>
		</div>
		<% else %>

		<% end_if %>
		<% if Count % 4 == 0 %>
		</div>
		<% end_if %>
		<% end_loop %>
	
</div>