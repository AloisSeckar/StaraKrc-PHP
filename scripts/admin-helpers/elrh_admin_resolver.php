<?php
/**
 * Methods to support admin actions
 */
class ELRHAdminResolver {
	/**
	 * Validates login
	 */
	public static function loginAction($mysqli) {
		// get login data
		if ((!empty($_POST["name"]))&&(!empty($_POST["pass"]))) {
			// check for given user's password in db
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$user = ELRHDataExtractor::retrieveRow($mysqli, "SELECT u_name, u_displayed_name, u_pass FROM elrh_users WHERE u_name='".mysqli_real_escape_string($mysqli, $_POST["name"])."'");
			if ((!empty($user))&&($user[0]!="db_error")) {
				// check password match
				$hashpass = hash('sha512', $_POST["pass"]);
				if ($hashpass==$user["u_pass"]) {
					// set admin sessions
					$_SESSION["user"] = $user["u_name"];
					$_SESSION["user_name"] = $user["u_displayed_name"];
					//
					return "admin_login_success";
				} else {
					// wrong pass
					return "admin_login_wrong";
				}
			} else {
				// wrong user
				return "admin_login_wrong";
			}
		} else {
			// input not set correctly
			return "admin_login_invalid";
		}
	}
	
	/**
	 * Process logout
	 */
	public static function logoutAction() {
		// destroy login sessions
		unset($_SESSION["user"]);
		unset($_SESSION["user_name"]);
		//
		return "admin_logout_processed";
	}
	
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
	 * Add new / Edit selected image
	 */
	public static function editImageAction($mysqli) {
		// check for image name - MANDATORY atribute
		if (!empty($_POST["name"])) {
			// get posted gallery ID
			if (!empty($_POST["iid"])) {
				// edit existing image
				// check if exists
				include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
				$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $_POST["iid"])."'");
				if ((!empty($result))&&($result[0]!="db_error")) {
					// perform edit action - name and description
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET name='".mysqli_real_escape_string($mysqli, $_POST["name"])."', dscr='".mysqli_real_escape_string($mysqli, $_POST["dscr"])."' WHERE id='".mysqli_real_escape_string($mysqli, $_POST["iid"])."'");
					if ($query) {
						// image edited
						return "admin_edit_image_success";
					} else {
						// edit query wasn't successful
						return "admin_edit_image_fail";
					}
				} else {
					// wrong image id
					return "admin_image_wrongid";
				}
			} else {
				// add new image
				// check for image file
				if (!empty($_FILES["img_file"]["name"])) {
					// check for image file type
					// only JPG, PNG and GIF allowed
					$ext = ELRHAdminResolver::getImageExtension($_FILES["img_file"]);
					if ($ext!="error") {
						// process image file
						$time = Time();
						$dest = getcwd()."/content/gallery/".$time.$ext;
						if (move_uploaded_file($_FILES["img_file"]["tmp_name"],$dest)) {
							// create thumb
							$thumb = getcwd()."/content/gallery/thumbs/".$time.$ext;
							ELRHAdminResolver::createThumb($dest, $thumb);
							// perform DB actions
							include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
							include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
							// get ID of currently last image in gallery
							$prev = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, ord FROM elrh_gallery_images WHERE gallery=".mysqli_real_escape_string($mysqli, $_POST["gallery"])." AND next='0'");
							// insert new image
							$query = ELRHDataManipulator::addRecord($mysqli, "INSERT INTO elrh_gallery_images (author, created, gallery, ord, name, dscr, image, prev, next) VALUES ('".mysqli_real_escape_string($mysqli, $_SESSION["user"])."', Now(), '".mysqli_real_escape_string($mysqli, $_POST["gallery"])."', ".$prev["ord"]."+1, '".mysqli_real_escape_string($mysqli, $_POST["name"])."', '".mysqli_real_escape_string($mysqli, $_POST["dscr"])."', '".$time.$ext."', '".$prev["id"]."', '0')");
							if ($query) {
								// get newly inserted ID
								$_POST["iid"] = $mysqli->insert_id;
								// update previously last image in gallery
								$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET next='".$_POST["iid"]."' WHERE id='".$prev["id"]."'");
							}
							// return action result
							if ($query) {
								// image added
								return "admin_add_image_success";
							} else {
								// edit query wasn't successful
								return "admin_add_image_fail";
							}
						} else {
							// failed to upload image
							return "admin_add_image_uploadfail";
						}
					} else {
						// wrong image type given
						return "admin_add_image_wrongfile";
					}
				} else {
					// no image file given
					return "admin_add_image_nofile";
				}
			}
		} else {
			// no name given
			return "admin_edit_image_noname";
		}
	}
	
	
	// PRIVATE FUNCTIONS
	
	private static function getImageExtension($file) {
		switch ($file["type"]) {
			case "image/jpeg":
			case "image/pjpeg":
				return ".jpg";
		    case "image/png":
			case "image/x-png": 
				return ".png";
			case "image/gif":
				return ".gif";
			default:
				return "error";
		}
	}
	
	private static function createThumb($source, $target) {
		include_once getcwd().'/scripts/external/ImageResize.php';
		$image = new \Eventviva\ImageResize($source);
		$image->resize(100, 75);
		$image->save($target);
	}
}