<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	


	<div class="row" style="background:url('') no-repeat;background-size:cover;background-position: 100% 100%;">
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
		<% loop Children %>
		<div class="col-sm-2">
			<p>$Image.SetWidth(150)
			<strong><a href="$Link">$MenuTitle</a></strong>
			</p>
		</div>
		<% end_loop %>
		<div class="col-sm-2">
			<p></p>
			<p></p>
		</div>
	</div>
</div>