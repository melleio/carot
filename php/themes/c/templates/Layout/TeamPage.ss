<div class="slide story" id="slide-1" ng-controller="MainCtrl">
	<div class="container">
		<% include BreadCrumbs %>
		<div class="row" style="padding-top:15px;background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% loop Children %>
		
			<div class="col-xs-6 col-sm-3" style="text-align:center">
				<p><a href="$Link">$Image.SetWidth(180)</a><br>
				<span class="team-list-name"><strong>$MenuTitle</strong></span>
				</p>
			</div>
		<% if $MultipleOf(4) %>
		</div>
		<div class="row" style="padding-top:15px;background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<% end_if %>
		<% if $Last %>
		</div>
		<% end_if %>
		<% end_loop %>
	</div>
</div>