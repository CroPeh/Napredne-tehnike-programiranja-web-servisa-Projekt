<?php 
print '
<!DOCTYPE HTML>

<html>
	<head>
		<title>Napredne tehnike programiranja web servisa</title>
		<link rel="stylesheet" href="style.css">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta name="description" content="Projekt za vježbe iz Naprednih tehnika programiranja web servisa">
		<meta name="keywords" content="games, news, overview">
		<meta name="author" content="Fran Peh">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
	</head>
<body>
	<header>
		<div class="games_banner"></div>
		<nav>
            <div'; if ($_GET['menu'] > 1) { print ' class="first_short"'; } else { print ' class="first"'; }  print '></div>
			<ul>
			  <li><a href="index.php?menu=1">Home</a></li>
			  <li><a href="index.php?menu=2">News</a></li>
			  <li><a href="index.php?menu=3">Contact</a></li>
			  <li><a href="index.php?menu=4">About</a></li>
			  <li><a href="index.php?menu=5">Gallery</a></li>
			</ul>
		</div>
		</nav>
	</header>
	<main>';
        if (!isset($_GET['menu']) || $_GET['menu'] == 1) { include("home.php"); }
        else if ($_GET['menu'] == 2) { include("news.php"); }
        else if ($_GET['menu'] == 3) { include("contact.php"); }
        else if ($_GET['menu'] == 4) { include("about.php"); }
        else if ($_GET['menu'] == 5) { include("gallery.php"); }
        print '
	</main>
	<footer>
		<p>Copyright &copy; 2021 Fran Peh. <a href="https://github.com/CroPeh?tab=repositories"><img src="img/GitHub-Mark-Light-32px.png"></a></p>
	</footer>
</body>
</html>';
?>