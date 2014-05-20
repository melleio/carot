<div class="nav-collapse navbar-responsive-collapse">
				<ul id="mainNavList" class="nav row">
				<% with Page(home) %>
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-1" class="dropdown-toggle" data-toggle="dropdown" href="#" title="$Title.XML" style="padding:10px 0 5px;color:rgb(226,88,88);">
						<span class="text" class="tk-eskapade">$MenuTitle</span><%-- <b class="caret"></b> --%>
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
						<a id="menu-link-1" class="dropdown-toggle" data-toggle="dropdown" href="#" title="$Title.XML">
						<span class="text">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<ul class="dropdown-menu" style="width:600px;">
				<% end_with %>		
						<div class="col-md-4">
						<% with Page(clinical-trials) %>
						
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
							<li role="presentation" class="divider"></li>
							<% loop Children %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						<% end_with %>

						<% with Page(research-method) %>
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
						<% with Page(our-team-work) %>
						
							<li role="presentation" class="dropdown-header"><a href="$Link">$MenuTitle</a></li>
							<li role="presentation" class="divider"></li>
							<% loop Children.Limit(8) %>
								<li class="submenu-item"><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						<% end_with %>
						</div>
							
						</ul>
					</li>
				

				<% with Page(services) %>
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-3" class="dropdown-toggle" data-toggle="dropdown" href="#" title="$Title.XML">
						<span class="text">$MenuTitle</span><%-- <b class="caret"></b> --%>
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
						<a id="menu-link-4" class="" href="$Link" title="$Title.XML">
						<span class="text">$MenuTitle</span><%-- <b class="caret"></b> --%>
						</a>
						<%-- <ul class="dropdown-menu">
						<% loop Children %>
							<li><a href="#">$MenuTitle</a></li>
						<% end_loop %>
						</ul> --%>
					</li>
				<% end_with %>
				</ul>
				<div class="row">
					<div class="col-sm-2 active-menu"></div>
				</div>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</div><!-- /.navbar -->
	
	