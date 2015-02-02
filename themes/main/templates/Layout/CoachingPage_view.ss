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
				
		<% with CurrentQuestion %>
			<div class="line">
				<h3 class=""><span class="text-light">Your question:</span> $Title</h3>
				<p>$Content</p>
				<ul class="lined">
					<li>
						<span class="h6">$Date.Long</span> 
						<span class="text-bar">I</span>
						<span class="h6">$Categories</span> 
					</li>
				</ul>
				<% with CurrentMember %>
				<% if not inGroup(7) %>
					<a href="coaching/archive/{$ID}" class="button">Archive this question</a>
				<% end_if %>
				<% end_with %>
			</div>
			
			<hr>
			<h5>
				<% if Replies %>
					<% loop Replies %><% if First %>$TotalItems<% end_if %><% end_loop %>
				<% else %>
					0
				<% end_if %> Replies
			</h5>
			
			<% loop Replies %>
				<h6>
					<img src="$Owner.ProfilePicture.SetHeight(25).URL" class="avatar"> $Owner.Name
					<span class="floatR">$Date.Long</span>
				</h6>
				$Content
				<hr>
			<% end_loop %>
		<% end_with %>
		
		$addReplyForm
				
		<a href="{$Link}ask-a-question" class="link-line">Ask a new question</a>
				
	</div>
	$Form
</div>

