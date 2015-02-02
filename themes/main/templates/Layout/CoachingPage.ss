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
		<div class="line">
		
			$Content
			
			<% with CurrentMember %>
			<% if not inGroup(7) %>
				<a href="{$Link}ask-a-question" class="link-line">Ask a new question</a>
			<% end_if %>
			<% end_with %>
			
			<h3>Active questions:</h3>
			
			<% with CurrentMember %>
			<% if not inGroup(7) %>
			
				<!--	Questions based on OwnerID
				------------------------------------->
				<% loop Top.getQuestions %>
					
					<div class="size1of2 box<% if Pos = 2 %> rl<% else_if Last %> rl<% end_if %>">
					
					<a href="{$Top.Link}view/{$ID}">
						<h5>
							$Title 
						</h5>
					</a>
					<p>$Content.LimitCharacters(160)</p>
					<ul class="lined">
						<li>
							<span class="h6">$Date.Long</span> 
							<span class="text-bar">I</span>
							<span class="h6">$Categories</span> 
							<span class="floatR h6">
							<% if Replies %>
								<% loop Replies %><% if First %>$TotalItems<% end_if %><% end_loop %>
							<% else %>
								0
							<% end_if %> Replies
							</span>
						</li>
					</ul>
					
					</div>
					
				<% end_loop %>
			<% else %>
			
				<!--	All questions for coaches to answer
				------------------------------------->
				<% loop Top.getCoachQuestions %>
					
					<div class="size1of2 box<% if Pos = 2 %> rl<% else_if Last %> rl<% end_if %>">
					
					<a href="{$Top.Link}view/{$ID}">
						<h5>
							$Title 
						</h5>
					</a>
					<p>$Content.LimitCharacters(160)</p>
					<ul class="lined">
						<li>
							<span class="h6">$Date.Long</span> 
							<span class="text-bar">I</span>
							<span class="h6">$Categories</span> 
							<span class="floatR h6">
							<% if Replies %>
								<% loop Replies %><% if First %>$TotalItems<% end_if %><% end_loop %>
							<% else %>
								0
							<% end_if %> Replies
							</span>
						</li>
					</ul>
					
					</div>
					
				<% end_loop %>
			<% end_if %>
			<% end_with %>
			
		</div>
		
		
		<!--	Archived Questions
		---------------------------------->
		<% with CurrentMember %>
		<% if not inGroup(7) %>
		<div class="line">
			<hr>
			<h3>Archived questions:</h3>
			
			<% loop Top.getArchivedQuestions %>
				
				<div class="size1of2 box<% if Pos = 2 %> rl<% else_if Last %> rl<% end_if %>">
				
				<a href="{$Top.Link}view/{$ID}">
					<h5>
						$Title 
					</h5>
				</a>
				<p>$Content.LimitCharacters(160)</p>
				<ul class="lined">
					<li>
						<span class="h6 nomargin">$Date.Long</span>
						<span class="text-bar">I</span>
						<span class="h6">$Categories</span> 
						<span class="floatR h6 nomargin">
						<% if Replies %>
							<% loop Replies %><% if First %>$TotalItems<% end_if %><% end_loop %>
						<% else %>
							0
						<% end_if %> Replies
						</span>
					</li>
				</ul>
				
				</div>
				
			<% end_loop %>
				
		</div>
		<% end_if %>
		<% end_with %>
		
		
		
	</div>
	$Form
</div>

