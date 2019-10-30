<?php
// global constants
define('TMPL_PATH', 'tmpl/');
define('CSS_PATH', 'css/');
define('JS_PATH', 'js/');
define('SCRIPT_PATH', '../script/');
define('CLASS_PATH', '../class/');
define('INDEX_PATH', '../public/');

require_once CLASS_PATH . 'Session.php';
require "../src/includes.php";

//$page = '';
$phpfile = false;
if (isset($_GET['page'])) {
    $p = htmlspecialchars($_GET['page']);
    switch ($p) {
        case 'result' :
            $page = 'result';
            $phpfile = true;
            break;
        case 'post' :
            $page = 'post';
            $phpfile = true;
            break;
        case 'register' :
            $page = 'register';
            $phpfile = true;
            break;
        case 'login' :
            $page = 'login';
            $phpfile = true;
            break;
        case 'newpost' :
            $page = 'newpost';
            $phpfile = true;
            break;
        default :
            $page = 'home';
    }
} else {
    $page = 'home';
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>DVA231</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="css/mainstyle.css" rel="stylesheet" type="text/css"/>


    <script src="<?= JS_PATH ?>jquery-3.3.1.js"></script>
    <script src="<?= JS_PATH ?>requestService.js"></script>
    <script src="<?= JS_PATH ?>productTemplateBuilder.js"></script>
    <script src="<?= JS_PATH ?>productService.js"></script>
    <script src="<?= JS_PATH ?>login.js"></script>
	<script src="<?= JS_PATH ?>product.js"></script>
    


</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="index.php" class="navbar-brand">
                <img src="img/logo2.png" width=23%
                     style=" display: block; margin-left: auto; margin-right: auto; margin-top:-10px;">
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#"> </a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" id="logout">
                <li><a href="index.php">Search</a></li>
                <li><a href="index.php?page=newpost">New Post</a></li>
                <?php
                if (SessionManagement::isLoggedIn()) {
                    echo '<li><div class="dropdown">
                <button id="userbutton" class="header-dropdown" data-toggle="dropdown" value="text"> Logged in as:
                <span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li><a href="#">My favorites</a></li>
                    <li><a href="#">My products</a></li>
                    <li><a onclick="logoutUser()">Logout</a></li>
                </ul>
                </div></li>';
                } else {
                    echo '<li><a href="index.php?page=login">Login</a></li>';
                }
                ?>
            </ul>
        </div>
    </div>
</nav>
<br><br><br>
<section id="main_container" class="container">
    <?php
    if ($phpfile) {
        require_once SCRIPT_PATH . $page . '.php';
        //require_once '../script/index.php';
    }
    require_once TMPL_PATH . $page . '.tpl';
    //require_once 'tmpl/'.$page.'.tpl';
    ?>
</section>

<footer class="footer">
    <div>[Footer]
        <a href="index.php"> [Link]</a>
    </div>
</footer>

<script src="<?= JS_PATH ?>bootstrap.js"></script>

</body>
</html>
