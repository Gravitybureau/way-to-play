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
	<meta name="viewport" content="width=1160">
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
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />
	
	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic|Gochi+Hand' rel='stylesheet' type='text/css'>
	
</head>



<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %> $Level(1).Color" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>


	
	<% include Header %>
		
		
		
	<div class="sizeFull unit banner dark<% if URLSegment = home %>" style="background-image: url($ThemeDir/images/bannerimage-default.jpg);"><% else %> subpage"><% end_if %>
	
	<% if URLSegment = home %>
		<div class="inner">	
			<div class="unit size1of2 floatR">
				<h2>Experience the Joy of Play</h2>
				<p>With Way to Play, you will discover strategies and opportunities to connect with your child on the Autism spectrum.</p>
				<a href="#welcome" class="smoothScroll title-link">
					<h6 class="floatL">Read more</h6>
					<img class="floatL" src="$ThemeDir/images/btn-arrow_vert.png" />
				</a>
			</div>
		</div>
	<% end_if %>
		
	</div>
	
	
		
	<div class="main" role="main">
		
		
		
		<!-- Top Links -->
		<% if CurrentMember %>
		
		<div class="section nopadding" id="mainPages">
			<div class="inner">
				<% loop getMainPages %>
				<div class="unit size1of3 tab tab{$Pos}">
					
					<div class="tab-icon">
						<img src="$Icon.URL" width="60" />
					</div>
					
					<div class="tab-content">
						<h3 class="nomargin"><a href="$Link">$Title</a></h3>
						<p>
						<% loop Children %>
							<a href="$Link"><span class="small">$Title</span></a><% if not Last %><span class="text-bar"> I </span><% end_if %>
						<% end_loop %>
						</p>
					</div>
					
				</div>
				<% end_loop %>
			</div>
		</div>
		
		<% else %>
		
		<div class="section havedone" id="mainPages">
		
			<div class="inner"><!-- tab wrap -->
			
				<div class="unit size1of3">
					<h3 class="nomargin">Have you completed the<br> Way to Play workshop?</h3>
				</div>
				
				<div class="unit size1of3 tab tab1 center">
					<div class="tab-content">
					<a href="$BaseHref/security/login" id="wtpYes">
						<h2>YES</h2>
						<hr>
						<h5>I can login now</h5>
					</a>
					</div>
				</div>
				<div class="unit size1of3 tab tab2 center">
					<div class="tab-content">
						<a href="#welcome" class="smoothScroll" id="wtpNo">
							<h2>NO</h2>
							<hr>
							<h5>What is Way to Play?</h5>
						</a>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<% end_if %>
			
		
		
		
		<!-- Main Content -->
		<div class="section"<% if URLSegment = home %> id="welcome"<% end_if %>>
			<div class="inner">
				$Layout
			</div>
		</div>
		
	</div><!-- end .main -->
	
	
	
	
	<% include Footer %>
	
	
	
	
	<script type="text/javascript" src="{$ThemeDir}/javascript/smoothscroll.js"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/site.js"></script>
	
	<script type="text/javascript">
		
	</script>
	

</body>
</html>
