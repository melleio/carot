<div class="slide story" id="slide-1" data-slide="1">
<div class="container">

	<div class="row clearfix">
		<div class="col-sm-12">
			$Breadcrumbs
		</div>
	</div>
	<div class="row">
		<% loop ChildrenOf(clinical-trials) %>
		<div class="col-sm-3">
			<p>$Image.SetWidth(50)</p>
			<p><strong>$MenuTitle</strong></p>
		</div>
		<% end_loop %>
		
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="options">
				<a href="#"><img src="images/buttons/share.png" alt="share button" title="Share" /></a>
			</div>
		</div>
		<div class="col-sm-9">
			<div class="slider">
				<p><img src="http://www-carot.us.melle.io/assets/Research/Clinical-Trials/CHM/REV1-CHM-IMAGE-1-teddy-holds-slide-NO-SHADOW.png" /></p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<h1 style="color:red;text-transform:uppercase;">$MenuTitle</h1>
			<h2 style="color:#c9c9c9;text-transform:uppercase;">$Title</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 gray-box" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;">
			<p>$Content</p>
		</div>
		<div class="col-sm-4" style="background:url('http://www-carot.us.melle.io/assets/Research/Clinical-Trials/CHM/REV1-CHM-block-for-references-.png');background-size:cover;">
			<h4>References</h4>
			
			<ol>
				<% loop References %>
				<li> $Title</li>
				<% end_loop %>
			</ol>
			
		</div>
	</div>

</div>