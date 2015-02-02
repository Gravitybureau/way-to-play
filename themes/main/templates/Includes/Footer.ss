
<% if CurrentMember %>
<% if PrimaryNav %>
<div class="section colour dark v-align">
	<div class="v-align-inner">
		<div class="inner center">
		
			<h4>Meet our community of parents, caregivers and professionals.</h4>
			<a href="{$BaseHref}connecting" class="button">Get involved</a>
			
		</div>
	</div>
</div>
<% end_if %>
<% end_if %>




<footer class="footer dark" role="contentinfo">



	<div class="inner">
	
	
		<div class="unit size1of4 logo">
			<img src="$SiteConfig.LogoImageReverse.URL" width="200">
			<img title="autism NZ" src="$ThemeDir/images/autismnz.png" width="160" />
		</div>
		
		<div class="unit size3of4">
		
			<div class="unit size2of3">
				<h6>Way to Play</h6>
				<p>$SiteConfig.SiteDescription</p>
			</div>
			
			<div class="unit size1of3 floatR">
				<h6>Our partners</h6>
				<div class="partners-logos">
					<div class="logo skip">
						<a href="http://www.skip.org.nz/"><img src="$ThemeDir/images/footer-skip-w.png" height="35"></a>
					</div>
					<div class="logo td">
						<a href="http://www.thinkdifferently.org.nz/"><img src="$ThemeDir/images/footer-thinkdifferently-w.png" height="35"></a>
					</div>
					<div class="logo pub">
						<a href="http://www.pubcharity.org.nz/"><img src="$ThemeDir/images/footer-pub-w.png" height="35"></a>
					</div>
				</div>
			</div>
			
			<div class="unit sizeFull">
				<hr class="light" />
			</div>
			
			<div class="unit size2of3">
				<h6>Sitemap</h6>
				<ul class="lineup size1of2 unit nopadding">
					<% loop $Menu(1) %>
						<% if PrimaryNav %>
						<% else %>
						<li class="$LinkingMode">
							<a href="$Link" title="$Title.XML"><p>$MenuTitle.XML</p></a>
							
							<% if $Children %>
							<ul class="children">
								<% loop $Children %>
								<li class="$LinkingMode"><a href="$Link" title="$Title.XML"><p class="small">$MenuTitle.XML</p></a></li>
								<% end_loop %>
							</ul>
							<% end_if %>
						</li>
						<% end_if %>
					<% end_loop %>	
				</ul>
				
				<ul class="lineup size1of2 unit nopadding">
					<% loop $Menu(1) %>
						<% if PrimaryNav %>
						<li class="$LinkingMode">
							<a href="$Link" title="$Title.XML"><p>$MenuTitle.XML</p></a>
							
							<% if $Children %>
							<ul class="children">
								<% loop $Children %>
								<li class="$LinkingMode"><a href="$Link" title="$Title.XML"><p class="small">$MenuTitle.XML</p></a></li>
								<% end_loop %>
							</ul>
							<% end_if %>
						</li>
						<% end_if %>
					<% end_loop %>
				</ul>
				
			</div>
			
			
			<div class="unit size1of3 floatR">
			
				<% if SiteConfig.FacebookURL %>
				<h6>Social</h6>
				<ul class="lined">
					<li><a href="$SiteConfig.FacebookURL">Follow us on Facebook</a></li>
				</ul>
				<% end_if %>
				
				<h6>Contact us</h6>
				<ul class="lined">
					<% if SiteConfig.PhoneNumber %><li><p>Phone: $SiteConfig.PhoneNumber</p></li><% end_if %>
					<% if SiteConfig.Email %><li><p>Email: <a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></p></li><% end_if %>
					<% if SiteConfig.Address %><li><p>Address: $SiteConfig.Address</p></li><% end_if %>
					<% if SiteConfig.PostalAddress %><li><p>Postal: $SiteConfig.PostalAddress</p></li><% end_if %>
				</ul>
			</div>
			
		</div>
		
	</div>
	
	

	<div class="inner">
		
		
		
	</div>
	
	
	
	<div class="inner">
		<hr class="light" />
		<p class="margincenter center small">© 2015 Way to Play <b>I</b> All Rights Reserved</a></p>
	</div>
	
</footer>