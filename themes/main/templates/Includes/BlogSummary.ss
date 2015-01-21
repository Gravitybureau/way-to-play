<div class="blogSummary">
	<div class="unit size2of3">
		<h2 class="postTitle"><a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	
		<% if BlogHolder.ShowFullEntry %>
			$Content
		<% else %> 
			<p>$Content.FirstParagraph(html)</p>
		<% end_if %>
	</div>
	
	<div class="unit size1of3">
		<ul class="lined">
			<li><p>Posted by $Author.XML on $Date.Long</p></li>
			<li class="tags">
				<% if TagsCollection %>
						Tags:
						<% loop TagsCollection %>
							<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
						<% end_loop %>
					</p>
				<% end_if %>
			</li>
			<li><p><a href="$Link" class="readmore" title="Read Full Post">Read the full post</a></p></li>
		</ul>
	</div>
	
	<hr>
	
</div>
