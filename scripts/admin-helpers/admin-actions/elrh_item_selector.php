<?php
/**
 * Methods to select items from DB
 */
class ELRHItemSelector {
	/**
	 * Get details for selected gallery
	 */
	public static function selectGalleryAction($mysqli, $gid) {
		// get selected gallery
		if (!empty($gid)) {
			// check for given gallery ID in db
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, parent, name, dscr FROM elrh_gallery_galleries WHERE id='".mysqli_real_escape_string($mysqli, $gid)."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// gallery details loaded
				$result["exists"] = true;
				$result["result"] = "admin_select_gallery_success";
			} else {
				// wrong gallery id
				$result["exists"] = false;
				$result["result"] = "admin_gallery_wrongid";
			}
		} else {
			// input not set correctly
			$result["exists"] = false;
			$result["result"] = "admin_gallery_noid";
		}
		//
		return $result;
	}
	
	/**
	 * Get details for selected image
	 */
	public static function selectImageAction($mysqli, $iid) {
		// get selected gallery
		if (!empty($iid)) {
			// check for given image ID in gallery
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, gallery, ord, name, dscr, image, prev, next FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $iid)."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// gallery details loaded
				$result["exists"] = true;
				$result["result"] = "admin_select_image_success";
			} else {
				// wrong gallery id
				$result["exists"] = false;
				$result["result"] = "admin_image_wrongid";
			}
		} else {
			// input not set correctly
			$result["exists"] = false;
			$result["result"] = "admin_image_noid";
		}
		//
		return $result;
	}
	
	/**
	 * Get details for selected article
	 */
	public static function selectArticleAction($mysqli, $aid) {
		return "TODO implement this action";
	}
	
	/**
	 * Get details for selected link
	 */
	public static function selectLinkAction($mysqli, $lid) {
		return "TODO implement this action";
	}
}
?>