<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	


	
		<% loop Children %>
		<% if $MultipleOf(5) || $First %>
		<div class="row" style="background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% end_if %>
		<% if Image %>
		<div class="col-xs-6 col-sm-3" style="text-align:center">
			<p><a href="$Link">$Image.SetWidth(180)</a><br>
			<span class="team-list-name"><strong>$MenuTitle</strong></span>
			</p>
		</div>
		<% else %>
		<div class="col-xs-6 col-sm-3" style="text-align:center">
			<p><a href="$Link"><span class="team-list-name"><strong>$MenuTitle</strong></span></a><br>
			
			</p>
		</div>
		<% end_if %>
		<% if $MultipleOf(4) %>
		</div>
		<% end_if %>
		<% end_loop %>
	
</div>