<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		// determine data according the item request
		if (empty($item)) {
			// if no item selected = show list of all articles
			$data["entries"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT a.id AS aid, a.cat, a.posted, a.name AS article_name, a.dscr, g.id AS gid, g.name AS gallery_name, u.u_displayed_name AS author_name FROM elrh_articles a LEFT JOIN elrh_gallery_galleries g ON a.gallery=g.id JOIN elrh_users u ON a.author=u.u_name ORDER BY a.posted DESC");
			// notify content renderer, there will be only list of articles
			$data["single"] = false;
		} else {
			// still have to determine between article-id and admin operations
			if (is_numeric($item)) {
				// notify content renderer, there will be only one article
				$data["single"] = true;
				// try to find particular article
				$data["entry"] = ELRHDataExtractor::retrieveRow($mysqli, "SELECT a.id AS aid, a.author, a.cat, a.posted, a.name AS article_name, a.dscr, a.content, g.id AS gid, g.name AS gallery_name, g.images, u.u_displayed_name AS author_name FROM elrh_articles a LEFT JOIN elrh_gallery_galleries g ON a.gallery=g.id JOIN elrh_users u ON a.author=u.u_name WHERE a.id='".mysqli_real_escape_string($mysqli, $item)."'");
				if (!empty($data["entry"])) {
					// page title adjustment
					$data["item_title"] = ": ".$data["entry"]["article_name"];
					// notify content renderer, that article exists
					$data["exists"] = true;
				} else {
					// notify content renderer, that article not found
					$data["exists"] = false;
				}
			} else {
				// TODO admin operations
			}
		}
		// save prepared data for renderer
		return $data;
	}
}