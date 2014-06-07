<div class="slide story" id="slide-1">
	<div class="container">
		<div id="home-row-1" class="row clearfix" style="text-align: center;">
			<div class="col-12">
				<div id="home-image">
				<% loop HomeImages.Sort('Rand()') %>
				<% if First %>
					<p class="topImage" style="text-align:center;"><img src="$Image.Filename" title="$Title"></p>
				<% else %>
					<p class="out" style="text-align:center;"><img src="$Image.Link" title="$Title"></p>
				<% end_if %>
				<% end_loop %>
				</div>
				<h1 style="text-align: center; font-size: 30pt; line-height: 1.2; letter-spacing: 16%; color: #414141;"><span class="s1">WELCOME</span><span class="s1">!</span></h1>
				<div class="col-sm-8 gray-box" style="background:url('assets/Research/Clinical-Trials/CHM/CHM-Image-Bed-for-Text-on-Left-.png');background-size:cover;background-position: 100% 100%;margin-left: 180px;">
					<div class="content-text" style="font-size: 16px;line-height: 25px;">
						$Content
					</div>
				</div>
				<br>
				<br>
			</div><!-- /col-12 -->
		</div><!-- /row -->
	</div><!-- /container -->
</div><!-- /slide1 -->