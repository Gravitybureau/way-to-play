<aside class="sidebar-content">
	
	<% if $Menu(2) %>
		<nav class="secondary">
			<% with $Level(1) %>
				<h5>
					<a href="$Link">$MenuTitle</a>
				</h5>
				<p>
					$PageDescription
				</p>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>
