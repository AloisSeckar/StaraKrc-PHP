<?php
// TODO admin page 
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["admin_headline"].'</h1>'.PHP_EOL;
		// show admin script output (if any)
		if (!empty($page_data["texts"]["admin_output"])) {
			echo $page_data["texts"]["admin_output"].PHP_EOL;
		}
		// show content
		include_once getcwd().'/scripts/admin-helpers/elrh_admin_renderer.php';
		if (isset($_SESSION["user"])) {
			// for logged-in admin
			echo '<h2>'.$page_data["texts"]["admin_galleries"].'</h2>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				// select existing gallery for editing its details)
				ELRHAdminRenderer::renderSelectGalleryForm($page_data["texts"], $page_data["current_gallery"], $page_data["galleries"]);
				// add/edit gallery
				ELRHAdminRenderer::renderEditGalleryForm($page_data["texts"], $page_data["current_gallery"], $page_data["galleries"]);
				// delete existing gallery
				ELRHAdminRenderer::renderDeleteGalleryForm($page_data["texts"], $page_data["current_gallery"], $page_data["galleries"]);
			echo '</p>'.PHP_EOL;
			echo '<h2>'.$page_data["texts"]["admin_images"].'</h2>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				// select existing gallery (for editing its images)
				ELRHAdminRenderer::renderSelectGalleryForm($page_data["texts"], $page_data["current_gallery"], $page_data["galleries"]);
				// add/edit image
				ELRHAdminRenderer::renderEditImageForm($page_data["texts"], $page_data["current_gallery"], $page_data["current_image"], $page_data["galleries"], $page_data["images"]);
			echo '</p>'.PHP_EOL;
			echo '<h2>'.$page_data["texts"]["admin_articles"].'</h2>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				echo $page_data["texts"]["admin_info"].PHP_EOL;
			echo '</p>'.PHP_EOL;
			echo '<h2>'.$page_data["texts"]["admin_links"].'</h2>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				echo $page_data["texts"]["admin_info"].PHP_EOL;
			echo '</p>'.PHP_EOL;
		} else {
			// show login form
			ELRHAdminRenderer::renderLoginForm($page_data["texts"]);
		}
	}
}