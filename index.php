<?php
// TODO enable in production version
// error_reporting(0);

// session init
session_start();

// get content request
if (isset($_GET["page"])) {
	$page = $_GET["page"];
} else {
	$page = "";
}

// page setup
include_once getcwd().'/scripts/elrh_page_controller.php';
$controller = new ELRHPageController();

// prepare data
$controller->resolvePath(mb_strtolower($page, 'UTF-8'));
$controller->prepareData();

// display page
$controller->renderPage();
?>