<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CAROT THEME Design by Katherine Macguire, Lloyd Emelle
melle.io
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html ng-app="researchApp" lang="$ContentLocale">
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
	<script src="$ThemeDir/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="//use.typekit.net/bzx4dno.js"></script>
    <script type="text/javascript">
        try{Typekit.load();}catch(e){}
    </script>
	<% require themedCSS('bootstrap') %>
	<% require themedCSS('fancybox') %>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<% require themedCSS('style') %>
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,300,200&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />

	<script src="$ThemeDir/js/jquery-1.10.2.min.js"></script>
    <script src="http://code.angularjs.org/1.2.15/angular.js"></script>
    <script src="http://code.angularjs.org/1.2.15/angular-animate.min.js"></script>
    <script src="http://code.angularjs.org/1.2.15/angular-touch.min.js"></script>
</head>
<body ng-controller="MainCtrl">
	<header class="header">
	<div class="inner container">
		<div class="unit size4of4 lastUnit">
			<a href="$BaseHref" class="brand" rel="home">
				<h1><img src="https://www.med.upenn.edu/images/psom_logo_white.png"></h1>
				
			</a>
			<div class="carot-header">
				<div id="carot-logo">
					<h1 class="carot-large">CAROT</h1>
					<p class="carot-medium">CAROT</p>
					<p class="carot-small">CAROT</p>
				</div>
				<h3>
				Center for Advanced<br>
				Retinal and	Ophthalmic<br>
				Therapeutics
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
			
			
			<% include Navigation %>
	
	<!-- === Arrows === -->
	<div id="arrows">
		<div id="arrow-up" class="disabled"></div>
		<div id="arrow-down"></div>
	</div> <!-- /.arrows -->
	
	<div id="black-blue"></div>
	<!-- === MAIN Background === -->
	$Layout
	

</body>
<!-- SCRIPTS -->
	<script src="$ThemeDir/js/html5shiv.js"></script>
	
	<script src="$ThemeDir/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="$ThemeDir/js/bootstrap.min.js"></script>
	<script src="$ThemeDir/js/jquery.easing.1.3.js"></script>
</html>
