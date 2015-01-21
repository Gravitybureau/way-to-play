
<div class="unit size1of3 sidebar">
	<% include SideBar %>
</div>

<div class="unit size2of3" id="BlogContent">
	<div class="content">
	
		<% include BreadCrumbs %>
	
		<div class="blogEntry">
			<h2 class="postTitle">$Title</h2>
			<p class="authorDate">Posted by $Author.XML on $Date.Long</p>
			<% if TagsCollection %>
				<p class="tags">
					Tags:
					<% loop TagsCollection %>
						<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
					<% end_loop %>
				</p>
			<% end_if %>		
			$Content		
		</div>
		
		<% if IsOwner %>
			<p class="edit-post">
				<a href="$EditURL" id="editpost" title="Edit this post">Edit this post</a> | <a href="$Link(unpublishPost)" id="unpublishpost">Unpublish this post</a>
			</p>
		<% end_if %>
			
	</div>
</div>
