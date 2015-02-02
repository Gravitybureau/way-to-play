<h1>$Title</h1>



<div class="unit size1of3 sidebar">
	<% if $Menu(2) %>
	<aside class="sidebar-content">
		
			<nav class="secondary">
				<% if PageDescription %>
					<p>
						$PageDescription
					</p>
				<% else %>
					<% with $Level(1) %>
						<p>
							$PageDescription
						</p>
					<% end_with %>
				<% end_if %>
				<% with $Level(1) %>
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_with %>
			</nav>
		
	</aside>
	<% end_if %>
</div>



<div class="unit size2of3">
	<div class="content">
		
		<h3>Community members near you:</h3>
		<p>$ConnectContent</p>
		
		<% loop getConnections %>
			<div class="box overflow size1of3<% if Pos = 3 %> rl<% end_if %>">
				<div class="lrg-avatar">
					<% if ProfilePicture %>
					<img src="$ProfilePicture.CroppedImage(60,60).URL">
					<% else %>
					<img src="$ThemeDir/images/profpic-default.png" width="60">
					<% end_if %>
				</div>
				<h5 class="nomargin">$FirstName $Surname</h5>
				<p class="small"><% if Suburb %>{$Suburb}, <% end_if %>$City</p>
				<ul class="lined">
					<li><p class="small"><a href="mailto:$Email">$Email</a></p></li>
					<li><p class="small">$PhoneNumber</p></li>
				</ul>
			</div>
		<% end_loop %>
		
		<a href="#" class="link-line">View more members</a>
		
		<h3>Facebook groups recommended for you:</h3>
		<p>$FacebookContent</p>
		
		@facebookGroups
				
	</div>
	$Form
</div>

