<?php 
	if ($_SESSION['user']['valid'] == 'true') {
		if (!isset($action)) { $action = 1; }
		print '
		<h1>Administration</h1>
		<div id="admin">
			<ul style="background:none;">
				<li style="margin-left:25em;"><a href="index.php?menu=8&amp;action=1" style="padding:0px"><img src="img/users.png" alt="users" style="width:15em;height:10em;"></a></li>
				<li style="margin-left:25em;"><a href="index.php?menu=8&amp;action=2" style="padding:0px"><img src="img/news.png" alt="users" style="width:15em;height:10em;"></a></li>
			</ul>';
			# Admin Users
			if ($action == 1) { include("users.php"); }
			
			# Admin News
			else if ($action == 2) { include("admin-news.php"); }
		print '
		</div>';
	}
	else {
		$_SESSION['message'] = '<p>Please register or login using your credentials!</p>';
		header("Location: index.php?menu=7");
	}
?>