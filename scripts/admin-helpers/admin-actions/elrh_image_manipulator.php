<?php
/**
 * Methods to alter image records in DB
 */
 class ELRHImageManipulator {
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
					$ext = ELRHImageManipulator::getImageExtension($_FILES["img_file"]);
					if ($ext!="error") {
						// process image file
						$time = Time();
						$dest = getcwd()."/content/gallery/".$time.$ext;
						if (move_uploaded_file($_FILES["img_file"]["tmp_name"],$dest)) {
							// create thumb
							$thumb = getcwd()."/content/gallery/thumbs/".$time.$ext;
							ELRHImageManipulator::createThumb($dest, $thumb);
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
	
	/**
	 * Delete selected image
	 */
	public static function deleteImageAction($mysqli) {
		// get posted image ID
		if (!empty($_POST["item"])) {
			// check for given image in DB
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, gallery, image, prev, next FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $_POST["item"])."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// image details loaded
				include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
				// 1st - perform delete itself
				$query = ELRHDataManipulator::deleteRecord($mysqli, "DELETE FROM elrh_gallery_images WHERE id='".$result["id"]."'");
				// 2nd - delete related image files
				if ($query) {
					unlink(getcwd()."/content/gallery/".$result["image"]);
					unlink(getcwd()."/content/gallery/thumbs/".$result["image"]);
				}
				// 3rd - re-link prev and next images in gallery
				if ($query) {
					if ($result["prev"]>0) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET next='".$result["next"]."' WHERE id='".$result["prev"]."'");
					}
				}
				if ($query) {
					if ($result["next"]>0) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET prev='".$result["prev"]."' WHERE id='".$result["next"]."'");
					}
				}
				// h4x for keeping "current_gallery" info
				$_POST["item"] = $result["gallery"];
				// inform about result
				if ($query) {
					// gallery edited
					return "admin_delete_image_success";
				} else {
					// delete query wasn't successful
					return "admin_delete_image_fail";
				}
			} else {
				// wrong image id
				return "admin_image_wrongid";
			}
		} else {
			// input not set correctly
			return "admin_image_noid";
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
 ?>