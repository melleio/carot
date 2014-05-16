<div class="slide story" id="slide-1" data-slide="1" ng-controller="MainCtrl">
<div class="container">

	<% include BreadCrumbs %>
	
	<div class="row">
		<div class="col-sm-6">
			<h2 class="lab-header">Translational Studies</h2>
			<ul>
				<% loop ChildrenOf(translational-studies) %>
					<li><a href="$Link">$Title</a></li>		
				<% end_loop %>
			</ul>
		</div>
		<div class="col-sm-6">
			<h2 class="lab-header"><a href="#">Adeno-Associated Viruses and Retinal Gene Transfer</a></h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<h2 class="lab-header"><a href="#">OPTOGENETIC THERAPY</a></h2>
		</div>
		<div class="col-sm-6">
			<h2 class="lab-header"><a href="#">INDUCED Pluripotent Stem Cell (iPSC) Studies</a></h2>
		</div>
	</div>
	
</div>
</div>