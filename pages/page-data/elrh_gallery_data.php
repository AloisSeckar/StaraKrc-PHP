<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		// determine data according the item request
		if (empty($item)) {
			// notify content renderer, there will be index of galleries
			$data["display"] = "index";
				// try to load galleries
			$data["galleries"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name, dscr, (SELECT count(*) FROM elrh_gallery_images i WHERE i.gallery=g.id) AS images FROM elrh_gallery_galleries g WHERE parent='0' ORDER BY name");
			// for each gallery load further info
			if (!empty($data["galleries"])) {
				foreach($data["galleries"] as $gallery) {
					// first 7 images to feature
					$data[$gallery["name"]]["images"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name, image FROM elrh_gallery_images WHERE gallery='".$gallery["id"]."' ORDER BY ord LIMIT 7");
					// related galleries
					$data[$gallery["name"]]["galleries"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name, (SELECT count(*) FROM elrh_gallery_images i WHERE i.gallery=g.id) AS images FROM elrh_gallery_galleries g WHERE parent='".$gallery["id"]."' ORDER BY name");
					// related articles
					$data[$gallery["name"]]["articles"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT a.id, a.name, u.u_displayed_name AS author_name FROM elrh_articles a JOIN elrh_users u ON a.author=u.u_name WHERE gallery='".$gallery["id"]."' ORDER BY name");
				}
			}
		} else {
			// TODO admin operations
			// still have to determine whether displaying particular gallery or particular image
			// split request by "/"
			$request = preg_split('~/~', $item);
			if ($request[0]=="g") {
				// notify content renderer, there will be detail of particular gallery
				$data["display"] = "gallery";
				// try to load gallery details
				$data["entry"] = ELRHDataExtractor::retrieveRow($mysqli, "SELECT g.id AS gid, g.parent AS pid, g.created, g.name, g.dscr, (SELECT count(*) FROM elrh_gallery_images i WHERE i.gallery=g.id) AS images, u.u_displayed_name AS author_name FROM elrh_gallery_galleries g JOIN elrh_users u ON g.author=u.u_name WHERE g.id='".mysqli_real_escape_string($mysqli, $request[1])."'");
				if (!empty($data["entry"])) {
					// images to display
					$data["images"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name, image FROM elrh_gallery_images WHERE gallery='".$data["entry"]["gid"]."' ORDER BY ord");
					// possible parent gallery
					$data["parent"] = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, name FROM elrh_gallery_galleries WHERE id='".$data["entry"]["pid"]."'");
					// related galleries
					$data["galleries"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name, (SELECT count(*) FROM elrh_gallery_images i WHERE i.gallery=g.id) AS images FROM elrh_gallery_galleries g WHERE parent='".$data["entry"]["gid"]."' ORDER BY name");
					// related articles
					$data["articles"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT a.id, a.name, u.u_displayed_name AS author_name FROM elrh_articles a JOIN elrh_users u ON a.author=u.u_name WHERE gallery='".$data["entry"]["gid"]."' ORDER BY name");
					// page title adjustment
					$data["item_title"] = ": ".$data["entry"]["name"];
					// notify content renderer, that gallery exists
					$data["exists"] = true;
				} else {
					// notify content renderer, that gallery not found
					$data["exists"] = false;
				}
			} else if ($request[0]=="i") {
				// notify content renderer, there will be detail of particular gallery
				$data["display"] = "image";
				// try to load image details
				$data["entry"] = ELRHDataExtractor::retrieveRow($mysqli, "SELECT i.id AS iid, i.gallery AS gid, i.created, i.name, i.dscr, i.image, i.prev, i.next, u.u_displayed_name AS author_name FROM elrh_gallery_images i JOIN elrh_users u ON i.author=u.u_name WHERE i.id='".mysqli_real_escape_string($mysqli, $request[1])."'");
				if (!empty($data["entry"])) {
					// parent gallery info
					$data["parent"] = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, name FROM elrh_gallery_galleries WHERE id='".$data["entry"]["gid"]."'");
					// page title adjustment
					$data["item_title"] = ": ".$data["entry"]["name"];
					// notify content renderer, that gallery exists
					$data["exists"] = true;
				} else {
					// notify content renderer, that gallery not found
					$data["exists"] = false;
				}
			} else {
				// notify content renderer, there is an error
				$data["display"] = "error";
			}
		}
		// save prepared data for renderer
		return $data;
	}
}