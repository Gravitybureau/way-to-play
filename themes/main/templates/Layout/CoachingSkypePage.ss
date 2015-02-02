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
		
		$Content
		
		<hr>
		
		<% if Success %>
			<div class="box sizeFull rl good">
			<h3 class="nomargin">Thank you for your message.</h3>
			<p>Your selected coach will be in touch to confirm a time to Skype.</p>
			</div>
		<% end_if %>
		
		$skypeForm
						
	</div>
</div>

