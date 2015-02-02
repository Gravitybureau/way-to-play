<div class="box size1of2<% if MultipleOf(2) %> rl<% end_if %>">
	
	<h3 class="nomargin"><a href="$Link" title="View full post titled - '$Title'">$MenuTitle</a></h3>
	
	<h6 class="nomargin">
		<% loop TagsCollection %>
			<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
		<% end_loop %>
		<span class="text-bar">I</span>
		Posted by $Author.XML<% if Date %> on $Date.Long<% end_if %>
	</h6>

	<% if BlogHolder.ShowFullEntry %>
		$Content
	<% else %> 
		<p>$Content.FirstParagraph(html)</p>
	<% end_if %>
	
	<a href="$Link" class="link-line">
		Read more
	</a>
	
</div>
