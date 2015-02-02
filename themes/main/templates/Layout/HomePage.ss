
<div class="unit size2of3">
	<div class="content">
		<% if CurrentMember %>
			<h2>Welcome back, <% with CurrentMember %>$FirstName<% end_with %></h2>
			$LoggedInContent
		<% else %>
			$Content
		<% end_if %>
		
	</div>
	$Form
</div>



<div class="unit size1of3 sidebar">
	<aside class="sidebar-content">
	
	
	
	<% if CurrentMember %>
		
		<h4>Access our bank of learning resources and knowledge on play</h4>
		<% loop getNews %>
			<a class="title-link" href="$Link">
				<h5 class="floatL">$Title</h5>
				<img class="floatL" src="$ThemeDir/images/btn-arrow-bl.png" />
			</a>
			<p>
				$Content.LimitCharacters(80)
			</p>
		<% end_loop %>
		<a class="link-line nomargin" href="learning">Read more</a>
		
	<% else %>
	
		<h5>
			Get in touch
		</h5>
		<p>
			$PageDescription
		</p>
		<ul class="lined">
			<% if SiteConfig.PhoneNumber %><li>$SiteConfig.PhoneNumber</li><% end_if %>
			<% if SiteConfig.Email %><li><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></li><% end_if %>
			<% if SiteConfig.Address %><li>$SiteConfig.Address</li><% end_if %>
			<% if SiteConfig.PostalAddress %><li>$SiteConfig.PostalAddress</li><% end_if %>
		</ul>
	
	<% end_if %>
	
	
	
	</aside>
</div>
