<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// get relevant links
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		// find all categories
		$data["link_cats"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name FROM elrh_links_cat ORDER BY ord");
	    // find links for each category
	    foreach($data["link_cats"] as $cat) {
			$data["links"][$cat["name"]] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT author, posted, name, dscr, link, thumb FROM elrh_links WHERE cat='".$cat["id"]."' ORDER BY ord");
		}
		
		// save prepared data for renderer
		return $data;
	}
}