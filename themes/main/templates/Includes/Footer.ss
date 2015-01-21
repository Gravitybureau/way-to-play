<footer class="footer dark" role="contentinfo">

	<div class="inner">
		<div class="unit size1of4 logo">
			$SiteConfig.LogoImageReverse
		</div>
		
		
		<div class="unit size1of3">
			<p>$SiteConfig.SiteDescription</p>
		</div>
		
		
		<div class="unit size1of4 floatR">
		
			<% if SiteConfig.FacebookURL %>
			<h4>Social</h4>
			<ul class="lined">
				<li><a href="$SiteConfig.FacebookURL">Follow us on Facebook</a></li>
			</ul>
			<% end_if %>
			
			<h4>Contact</h4>
			<ul class="lined">
				<% if SiteConfig.PhoneNumber %><li>$SiteConfig.PhoneNumber</li><% end_if %>
				<% if SiteConfig.Email %><li><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></li><% end_if %>
				<% if SiteConfig.Address %><li>$SiteConfig.Address</li><% end_if %>
				<% if SiteConfig.PostalAddress %><li>$SiteConfig.PostalAddress</li><% end_if %>
			</ul>
		</div>
	</div>
	
	<div class="inner">
		<hr class="light" />
		<p class="margincenter center"><small>© 2014 Gravity Bureau</small> <b>I</b> Theme by <a href="http://thegravitybureau.com/">Gravity Bureau</a></p>
	</div>
	
</footer>