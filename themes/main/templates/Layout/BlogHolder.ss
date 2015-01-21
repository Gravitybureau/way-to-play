
<div class="unit size1of3 sidebar">
	<% include SideBar %>
</div>

<div class="unit size2of3" id="BlogContent">
	<div class="content">
			
		<% if SelectedTag %>
			<h3>Viewing entries tagged with '$SelectedTag'</h3>
		<% else_if SelectedDate %>
			<h3>Viewing entries posted in $SelectedNiceDate</h3>
		<% else_if SelectedAuthor %>
			<h3>Viewing entries posted by $SelectedAuthor</h3>
		<% end_if %>
		
		<% if BlogEntries %>
			<% loop BlogEntries %>
				<% include BlogSummary %>
			<% end_loop %>
		<% else %>
			<h2>There are no blog entries</h2>
		<% end_if %>
		
		<% include BlogPagination %>
	
	</div>
</div>


