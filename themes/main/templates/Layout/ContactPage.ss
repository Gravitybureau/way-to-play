<h1>$Title</h1>



<div class="unit size1of3 sidebar">
	<aside class="sidebar-content">
	
		<p>
			$PageDescription
		</p>
		<ul class="lined">
			<% if SiteConfig.PhoneNumber %><li><p>Phone: $SiteConfig.PhoneNumber</p></li><% end_if %>
			<% if SiteConfig.Email %><li><p>Email: <a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></p></li><% end_if %>
			<% if SiteConfig.Address %><li><p>Address: $SiteConfig.Address</p></li><% end_if %>
			<% if SiteConfig.PostalAddress %><li><p>Postal: $SiteConfig.PostalAddress</p></li><% end_if %>
		</ul>
		
	</aside>
</div>



<div class="unit size2of3">
	<div class="content">
		<div class="line">
		
			$Content
			
			<hr>
			
			<% if Success %>
				<div class="box sizeFull rl good">
				<h3 class="nomargin">Thank you for your message.</h3>
				<p>We will be in touch shortly</p>
				</div>
			<% end_if %>
			
			$ContactForm
						
		</div>		
	</div>
	$Form
</div>

