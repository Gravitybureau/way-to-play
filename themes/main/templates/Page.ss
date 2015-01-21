<!DOCTYPE html>


<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.js"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery-1.7.1.min.js"></script>

	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<% require themedCSS('carousel') %>
	<% require themedCSS('responsive') %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	
	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>	
	
</head>



<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>


	
	<% include Header %>
		
		
		
	<div class="sizeFull unit banner">
		<div class="inner">	
		
			<div class="size2of3 unit">
				<h2 class="page-title">$Title</h2>
			</div>
			
			<% if ClassName = Page %>
				<div class="size1of3 unit">
				</div>
			<% else %>
			<% end_if %>
			
		</div>
	</div>
	
	
		
	<div class="main" role="main">
		
		<div class="section" id="mainPages">
			<div class="inner">
				<% loop getMainPages %>
				<div class="unit size1of3 nopadding">
					<h5>
						<a href="$Link">$Title</a>
					</h5>
					<% loop Children %>
						<a href="$Link">$Title</a><% if not Last %><span class="bar"> | </span><% end_if %>
					<% end_loop %>
				</div>
				<% end_loop %>
			</div>
			<hr>
		</div>
		
		<div class="section">
			<div class="inner">
				$Layout
			</div>
		</div>
	</div>
	
	
	
	<% include Footer %>
	
	
	
	
	<script type="text/javascript" src="{$ThemeDir}/javascript/site.js"></script>
	
	<script>
		
	</script>
	

</body>
</html>
