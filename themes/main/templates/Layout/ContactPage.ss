<h3>$Title</h3>

<div class="unit size1of3 sidebar">
	<aside class="sidebar-content">
		
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
		
	</aside>
</div>


<div class="unit size2of3">
	<div class="content">
		$Content
		$ContactForm
	</div>
	$Form
</div>