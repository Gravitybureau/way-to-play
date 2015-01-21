<nav class="primary">
	<ul class="main-nav">
		<% loop $Menu(1) %>
		
			<% if PrimaryNav %>
				<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
			<% end_if %>
			
		<% end_loop %>
		<% loop $Menu(1) %>
			
			<% if $Children %>
				<% loop $Children %>
					<% if PrimaryNav %>
						<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
					<% end_if %>
				<% end_loop %>
			<% end_if %>
			
		<% end_loop %>
	</ul>
	<div class="menu-btn"></div>
</nav>
