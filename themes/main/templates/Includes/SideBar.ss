<% if $Menu(2) %>
<aside class="sidebar-content">
	
		<nav class="secondary">
			<% with $Level(1) %>
				<p>
					$PageDescription
				</p>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	
</aside>
<% end_if %>
