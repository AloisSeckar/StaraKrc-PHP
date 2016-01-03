<?php
/**
 * Build menu elements for page
 */
class ELRHTitleCreator {
	
	/** 
	 * Builds html title to be displayed for each page.
	 * $global_title - always presented title of whole web
	 * $page_title - specific title for displayed page
	 * $item_tile - specific title for displayed item within the page
	 */
	public static function createSiteTitle($global_title, $page_title, $item_title) {
		// global always contained
		$title = $global_title;
		// if exists... (and not for index page)
		if (!empty($page_title)) {
			$title .= ' - '.$page_title;
		}
		// if exists...
		if (!empty($item_title)) {
			$title .= ': '.$item_title;
		}
		// return title result
		return $title;
	}
}
?>