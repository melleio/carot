<div class="nav-collapse navbar-responsive-collapse">
				<ul style="padding-bottom: 20px;" id="mainNavList" class="nav row">
				<% with Page(home) %>
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-1" class="dropdown-toggle" data-toggle="dropdown" href="#" title="$Title.XML" style="padding:10px 0 5px;color:rgb(226,88,88);">
						<span class="text $LinkingMode">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<ul class="dropdown-menu">
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
						<% loop Children %>
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
							<% loop Children %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						<% end_loop %>
						</ul>
					</li>
				<% end_with %>

				<% with Page(research) %>
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-1" class="dropdown-toggle" data-toggle="dropdown" href="#" title="$Title.XML" style="padding:10px 0 5px;color:rgb(226,88,88);">
						<span class="text $LinkingMode">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<ul class="dropdown-menu" style="width:600px;">
				<% end_with %>		
						<div class="col-md-4">
						<% with Page(clinical-trials) %>
						
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
							<li role="presentation" class="divider"></li>
							<% loop Children %>
							<% if Last %>
								<li style="padding-bottom: 5px;" class="submenu-item"><a href="$Link">$MenuTitle</a></li>
								<% else %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_if %>
								
							<% end_loop %>
						<% end_with %>

						<% with Page(clinical-studies) %>
							<li role="presentation" class="dropdown-header" style="padding-top: 10px;"><a href="$Link">$MenuTitle</a></li>
							<li role="presentation" class="divider"></li>
							<% loop Children %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						<% end_with %>
						</div>

						<div class="col-md-4">
						<% with Page(laboratory-research) %>
						
							<li role="presentation" class="dropdown-header">
								<p>
									<a href="$Link">$MenuTitle</a>
								</p></li>
							<li role="presentation" class="divider"></li>
							<% loop Children %>
								<li class="submenu-item">
									<p>
										<a href="$Link">$MenuTitle</a>
									</p></li>
							<% end_loop %>
						<% end_with %>
						</div>

						<div class="col-md-4">
						<% with Page(our-team) %>
						<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
						<li role="presentation" class="divider"></li>
							<li role="presentation" class="submenu-item"><a href="$Link?leaders">Leaders</a></li>
							<li role="presentation" class="submenu-item"><a href="$Link?team">Team</a></li>
							<%-- <li role="presentation" class="submenu-item"><a href="#">Alumni</a></li> --%>
						<% end_with %>
						</div>
							
						</ul>
					</li>
				

				<% with Page(services) %>
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-3" class="dropdown-toggle" data-toggle="dropdown" href="$Link" title="$Title.XML" style="padding:10px 0 5px;color:rgb(226,88,88);">
						<span class="text $LinkingMode">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<ul class="dropdown-menu">
						<% loop Children %>
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
							<li role="presentation" class="divider"></li>
							<% loop Children %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
							<li role="presentation" class="divider"></li>
						<% end_loop %>
						</ul>
					</li>
				<% end_with %>

				<% with Page(community) %>
					<li class="col-12 col-sm-2">
						<a id="menu-link-4" class="" href="$Link" title="$Title.XML" style="padding:10px 0 5px;color:rgb(226,88,88);">
						<span class="text $LinkingMode">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<ul class="dropdown-menu">
						<% loop Children %>
							<li><a href="#">$MenuTitle</a></li>
						<% end_loop %>
						</ul>
					</li>
				<% end_with %>
				</ul>
				<div class="row">
					<div class="col-sm-2 active-menu"></div>
				</div>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</div><!-- /.navbar -->
	
	