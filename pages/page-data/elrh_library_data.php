<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// get relevant books
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		// find all categories
		$data["books_cats"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name FROM elrh_books_cat ORDER BY ord");
	    // find books for each category
	    foreach($data["books_cats"] as $cat) {
			$data["books"][$cat["name"]] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT name, writer, year, dscr, url, thumb, review, review_ext FROM elrh_books WHERE cat='".$cat["id"]."' ORDER BY ord");
		}
		
		// save prepared data for renderer
		return $data;
	}
}