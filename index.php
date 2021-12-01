<?php 
session_start();
include ("dbConnection.php");
if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
	if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }
if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }
if (!isset($menu)) { $menu = 1; }
include_once("functions.php");
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
		<nav>';
		include("menu.php");
		print '
		</nav>
	</header>
	<main>';
	if (isset($_SESSION['message'])) {
		print $_SESSION['message'];
		unset($_SESSION['message']);
	}
        if (!isset($_GET['menu']) || $_GET['menu'] == 1) { include("home.php"); }
        else if ($_GET['menu'] == 2) { include("news.php"); }
        else if ($_GET['menu'] == 3) { include("contact.php"); }
        else if ($_GET['menu'] == 4) { include("about.php"); }
        else if ($_GET['menu'] == 5) { include("gallery.php"); }
		else if ($_GET['menu'] == 6) { include("register.php"); }
		else if ($_GET['menu'] == 7) { include("signin.php"); }
		else if ($_GET['menu'] == 8) { include("admin.php"); }
		else if ($_GET['menu'] == 9) { include("api.php"); }
        print '
	</main>
	<footer>
		<p>Copyright &copy; 2021 Fran Peh. <a href="https://github.com/CroPeh?tab=repositories"><img src="img/GitHub-Mark-Light-32px.png"></a></p>
	</footer>
</body>
</html>';
?>