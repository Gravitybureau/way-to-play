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
				<% with CurrentMember %>
					<li class="dropdown">
						<a class="dropdownLink">
							<% if ProfilePicture %><img src="$ProfilePicture.SetHeight(25).URL" class="avatar"><% end_if %>
							<h6 class="nomargin">$FirstName</h6>
						</a>
						<ul>
							<li><a href="profile">Edit Profile</a></li>
							<li><a href="coaching">Manage Questions</a></li>
							<% if inGroup(2) %>
								<li><a href="admin">Admin</a></li>
								<li><a href="profile/add">Add Member</a></li>
							<% end_if %>
							<li><a href="security/logout">Logout</a></li>
						</ul>
					</li>
					<% if inGroup(1) %>
						<li><a href="#">Content Author</a></li>
					<% else_if inGroup(7) %>
						<li><a href="#">Coach</a></li>
					<% else_if inGroup(2) %>
						<li><a href="#">Administrator</a></li>
					<% else_if inGroup(6) %>
						<li><a href="#">Professional</a></li>
					<% else_if inGroup(5) %>
						<li><a href="#">Superparent</a></li>
					<% else_if inGroup(3) %>
						<li><a href="#">Parent</a></li>
					<% else_if inGroup(4) %>
						<li><a href="#">Parent</a></li>
					<% end_if %>
				<% end_with %>
				<li><a href="{$BaseHref}security/logout">Log out</a></li>
				
			<% else %>
			
				<li id="loginBtn"><a href="javascript:void(0);"><h6>Log in</h6></a></li>
				<li id="headerLoginForm" class="hide">
					$LoginForm
				</li>
			<% end_if %>
			
			<li class="autism"><a title="Autism NZ" href="http://www.autismnz.org.nz/"><img src="$ThemeDir/images/logo-autismnz.png" width="45"></a></li>
		</ul>
	</nav>
	
	<div class="question-tab">
		<a href="coaching/ask-a-question">
			<h6 class="nomargin">Ask a question</h6>
		</a>
	</div>

</header>
