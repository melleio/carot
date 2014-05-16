<div class="nav-collapse navbar-responsive-collapse">
	<ul class="nav row">
     <li class="col-12 col-sm-2 dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          myLab <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
        	<% with Page(lab) %>
          <li><a href="$Link">$MenuTitle</a></li>
          <li class="divider"></li>
          <li><a href="#">Calendar</a></li>
        </ul>
      </li>
      <li class="col-12 col-sm-2 dropdown">
      	<a href="/home">CAROT Home</a>
      </li>
    </ul>
</div>	
	