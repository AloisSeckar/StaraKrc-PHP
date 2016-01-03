<?php
// TODO admin page 
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["admin_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["admin_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
	}
}