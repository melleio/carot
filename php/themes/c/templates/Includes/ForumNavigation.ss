<div class="nav-collapse navbar-responsive-collapse">
	<ul class="nav row">
     <li class="col-12 col-sm-4 dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          $MenuTitle <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
        	<% with Page(lab) %>
        	<% loop Children %>
          <li><a href="$Link">$MenuTitle</a></li>
          <% end_loop %>
          <% end_with %>
          <li class="divider"></li>
          <li><a href="#">Calendar</a></li>
        </ul>
      </li>
      <li class="col-12 col-sm-3 dropdown">
      	<a href="/home">CAROT Home</a>
      </li>
    </ul>
</div>	
	