<header class="header inner" role="banner">
			
	<% if $SearchForm %>
		<span class="search-dropdown-icon">L</span>
		<div class="search-bar">
			$SearchForm
		</div>
	<% end_if %>
	
	<% include Navigation %>

	<a href="$BaseHref" class="brand" rel="home">
		<% if SiteConfig.LogoImageReverse %>
			$SiteConfig.LogoImageReverse
		<% else %>
			<h5>$SiteConfig.Title</h5>
		<% end_if %>
	</a>
	
	<nav class="primary floatR" id="userDashboard">
		<ul class="main-nav">
			<% if CurrentMember %>
				<li><a href="$BaseHref/profile">Profile</a></li>
				<li><a href="$BaseHref/security/logout">Log out</a></li>
			<% else %>
				<li><a href="$BaseHref/security/login">Log in</a></li>
			<% end_if %>
		</ul>
	</nav>

</header>
