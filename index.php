<?php 

// Хост сайта
define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

// Физический путь к корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();

/* ..........................................

РОУТЕР

............................................. */

// request URL = http://project/blog/post?id=15
$uri =  $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0]) {
	case '':
		include "modules/main/index.php";
		break;

	// ::::::::::::::::::: USERS :::::::::::::::::::

	case 'login':
		include "modules/login/login.php";
		break;

	case 'registration':
		include "modules/login/registration.php";
		$top_title = "регистрация";
		break;

	case 'logout':
		include "modules/login/logout.php";
		break;

	case 'lost-password':
		include "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include "modules/login/set-new-password.php";
		break;

	case 'profile':
		include "modules/profile/index.php";
		break;

	case 'profile-edit':
		include "modules/profile/edit.php";
		break;

	// ::::::::::::::::::: BLOG :::::::::::::::::::

	case 'blog':
		include "modules/blog/index.php";
		break;

	case 'blog/post':
		include "modules/blog/post.php"; 
		break;

	case 'blog/post-new':
		include "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include "modules/blog/post-edit.php";
		break;

	// ::::::::::::::::::: WORK :::::::::::::::::::

	case 'work':
		include "modules/work/index.php";
		break;

	case 'work/post':
		include "modules/work/post.php";
		break;

	case 'work/post-new':
		include "modules/work/post-new.php";
		break;

	case 'work/post-edit':
		include "modules/work/post-edit.php";
		break;

	// ::::::::::::::::::: CATEGORIES :::::::::::::::::::

	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;


	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;

	// ::::::::::::::::::: PAGES :::::::::::::::::::

	case 'about':
		include "modules/about/index.php";
		break;

	case 'about-edit':
		include "modules/about/edit.php";
		break;

	case 'skills-edit':
		include "modules/about/skills-edit.php";
		break;

	case 'expirience-edit':
		include "modules/about/expirience-edit.php";
		break;

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/edit.php";
		break;

	case 'messages':
		include "modules/contacts/messages.php";
		break;

	case 'messages-delete':
		include "modules/contacts/delete.php";
		break;



	default:
		include "modules/main/index.php";
		break;
}

?>