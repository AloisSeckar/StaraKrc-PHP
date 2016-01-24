<?php
/**
 * Methods to alter gallery records in DB
 */
 class ELRHGalleryManipulator {
	/**
	 * Add new / Edit selected gallery
	 */
	public static function editGalleryAction($mysqli) {
		// check for gallery name - MANDATORY atribute
		if (!empty($_POST["name"])) {
			// get posted gallery ID
			if (!empty($_POST["gid"])) {
				// edit existing gallery
				// check if exists
				include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
				$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id FROM elrh_gallery_galleries WHERE id='".mysqli_real_escape_string($mysqli, $_POST["gid"])."'");
				if ((!empty($result))&&($result[0]!="db_error")) {
					// perform edit action
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_galleries SET name='".mysqli_real_escape_string($mysqli, $_POST["name"])."', parent='".mysqli_real_escape_string($mysqli, $_POST["parent"])."', dscr='".mysqli_real_escape_string($mysqli, $_POST["dscr"])."' WHERE id='".mysqli_real_escape_string($mysqli, $_POST["gid"])."'");
					if ($query) {
						// gallery edited
						return "admin_edit_gallery_success";
					} else {
						// edit query wasn't successful
						return "admin_edit_gallery_fail";
					}
				} else {
					// wrong gallery id
					return "admin_gallery_wrongid";
				}
			} else {
				// add new gallery
				include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
				$query = ELRHDataManipulator::addRecord($mysqli, "INSERT INTO elrh_gallery_galleries (parent, author, created, name, dscr) VALUES (".mysqli_real_escape_string($mysqli, $_POST["parent"]).", '".mysqli_real_escape_string($mysqli, $_SESSION["user"])."', Now(), '".mysqli_real_escape_string($mysqli, $_POST["name"])."', '".mysqli_real_escape_string($mysqli, $_POST["dscr"])."')");
				if ($query) {
					// get newly inserted ID
					// update it for further loading of gallery details
					$_POST["gid"] = $mysqli->insert_id;
					// gallery added
					return "admin_add_gallery_success";
				} else {
					// edit query wasn't successful
					return "admin_add_gallery_fail";
				}
			}
		} else {
			// no name given
			return "admin_edit_gallery_noname";
		}
	}
	
	/**
	 * Delete selected gallery
	 * Gallery must be empty, with no child galleries and no related articles
	 */
	public static function deleteGalleryAction($mysqli) {
		// get posted gallery ID
		if (!empty($_POST["gallery"])) {
			// check for given gallery in DB
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT g.id, (SELECT count(*) FROM elrh_gallery_images i WHERE i.gallery = g.id) AS images, (SELECT count(*) FROM elrh_gallery_galleries c WHERE c.parent = g.id) AS children, (SELECT count(*) FROM elrh_articles a WHERE a.gallery = g.id) AS articles FROM elrh_gallery_galleries g WHERE g.id='".mysqli_real_escape_string($mysqli, $_POST["gallery"])."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// gallery details loaded
				if (($result["images"]==0)&&($result["children"]==0)&&($result["articles"]==0)) {
					// perform delete
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					$query = ELRHDataManipulator::deleteRecord($mysqli, "DELETE FROM elrh_gallery_galleries WHERE id='".mysqli_real_escape_string($mysqli, $_POST["gallery"])."'");
					if ($query) {
						// gallery edited
						return "admin_delete_gallery_success";
					} else {
						// delete query wasn't successful
						return "admin_delete_gallery_fail";
					}
				} else {
					// cannot delete
					return "admin_delete_gallery_restricted";
				}
			} else {
				// wrong gallery id
				return "admin_gallery_wrongid";
			}
		} else {
			// input not set correctly
			return "admin_gallery_noid";
		}
	}
 }
 ?>