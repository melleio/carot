<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CAROT THEME Design by Katherine Macguire, Lloyd Emelle
melle.io
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script type="text/javascript" src="//use.typekit.net/bzx4dno.js"></script>
    <script type="text/javascript">
        try{Typekit.load();}catch(e){}
    </script>
	<% require themedCSS('bootstrap.min') %>
	<% require themedCSS('fancybox') %>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<% require themedCSS('style') %>
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,300,200&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>
<body>
	<header class="header">
	<div class="inner container">
		<div class="unit size4of4 lastUnit">
			<a href="$BaseHref" class="brand" rel="home">
				<h1><img src="https://www.med.upenn.edu/images/psom_logo_white.png"></h1>
				
			</a>
			<div class="carot-header">
				<div id="carot-logo">
					<h1 class="carot-large">CAROT</h1>
				</div>
				<h3>
				Center for Advanced Retinal<br> 
				and	Ophthalmic Therapeutics
				</h3>
			</div>
		</div>
	</div>
	</header>
	<div id="mainNavigation" class="navbar navbar-static-top main-nav" data-activeslide="1">
		<div class="container">
		
			<!-- .navbar-toggle is used as the toggle for collapsed navbar content -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
			
			<div class="nav-collapse collapse navbar-responsive-collapse">
				<ul id="mainNavList" class="nav row">
					<li class="col-12 col-sm-2 dropdown">
						<a id="menu-link-1" class="dropdown-toggle" data-toggle="dropdown" href="#" title="Next Section"><span class="fa fa-home"></span> <span class="text">HOME</span><b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">History</a></li>
						</ul>
					</li>
					<li data-slide="2" class="col-12 col-sm-2"><a id="menu-link-2" href="#slide-2" title="Next Section"><span class="fa fa-eye"></span> <span class="text">RESEARCH</span></a></li>
					<li data-slide="3" class="col-12 col-sm-2"><a id="menu-link-3" href="#slide-3" title="Next Section"><span class="fa fa-flask"></span> <span class="text">SERVICES</span></a></li>
					<li data-slide="4" class="col-12 col-sm-2"><a id="menu-link-4" href="#slide-4" title="Next Section"><span class="fa fa-users"></span> <span class="text">COMMUNITY</span></a></li>
				</ul>
				<div class="row">
					<div class="col-sm-2 active-menu"></div>
				</div>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</div><!-- /.navbar -->
	
	
	<!-- === Arrows === -->
	<div id="arrows">
		<div id="arrow-up" class="disabled"></div>
		<div id="arrow-down"></div>
		<div id="arrow-left" class="disabled visible-lg"></div>
		<div id="arrow-right" class="disabled visible-lg"></div>
	</div><!-- /.arrows -->
	
	<div id="blue-space"></div>
	<!-- === MAIN Background === -->
	<div class="slide story" id="slide-1" data-slide="1">
		<div class="container">
			<div id="home-row-1" class="row clearfix">
				<div class="col-12">
					<h1 class="font-semibold">CAROT</span></h1>
					<h4 class="font-thin">Some <span class="font-semibold">text</span> here.</h4>
					<br>
					<br>
				</div><!-- /col-12 -->
			</div><!-- /row -->
			<!-- <div id="home-row-2" class="row clearfix">
				<div class="col-12 col-sm-4"><div class="home-hover navigation-slide" data-slide="4"><img src="images/s02.png"></div><span>Hexagon</span></div>
				<div class="col-12 col-sm-4"><div class="home-hover navigation-slide" data-slide="3"><img src="images/s01.png"></div><span>Hexagon</span></div>
				<div class="col-12 col-sm-4"><div class="home-hover navigation-slide" data-slide="5"><img src="images/s03.png"></div><span>Hexagon</span></div>
			</div><!-- /row --> -->
		</div><!-- /container -->
	</div><!-- /slide1 -->
	

</body>
<!-- SCRIPTS -->
	<script src="themes/c/js/html5shiv.js"></script>
	<script src="themes/c/js/jquery-1.10.2.min.js"></script>
	<script src="themes/c/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="themes/c/js/bootstrap.min.js"></script>
	<script src="themes/c/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="themes/c/fancybox/jquery.fancybox.pack-v=2.1.5.js"></script>
	<script src="themes/c/js/script.js"></script>
	
	<!-- fancybox init -->
	<script>
	$(document).ready(function(e) {
		var lis = $('.nav > li');
		menu_focus( lis[0], 1 );
		
		$(".fancybox").fancybox({
			padding: 10,
			helpers: {
				overlay: {
					locked: false
				}
			}
		});
	
	});
	</script>
</html>
