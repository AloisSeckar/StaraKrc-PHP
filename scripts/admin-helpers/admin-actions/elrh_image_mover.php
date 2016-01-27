<?php
/**
 * Methods to alter image records in DB - moving them around
 */
 class ELRHImageMover {
	/**
	 * Move selected image to other gallery
	 */
	public static function moveImageToGalleryAction($mysqli) {
		// get posted image ID
		if (!empty($_POST["iid"])) {
			// check for given image in DB
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, gallery, ord, prev, next FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $_POST["iid"])."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// image details loaded
				// check if target gallery different from current
				if ($result["gallery"]!=$_POST["target"]) {
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					// 1st - get current last image in target gallery
					$last = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, ord FROM elrh_gallery_images WHERE gallery='".mysqli_real_escape_string($mysqli, $_POST["target"])."' AND next='0'");
					// 2nd - perform move itself
					if (!empty($last)) {
						// there are some images in gallery, moved image will be last
						// image will have new gallery, be placed after current last image, linked to it and there will be no next atm
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET gallery='".mysqli_real_escape_string($mysqli, $_POST["target"])."', ord=".$last["ord"]."+1, prev='".$last["id"]."', next='0' WHERE id='".$result["id"]."'");
						// now adjust former last image
						// image will be linked to moved image
						if ($query) {
							$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET next='".$result["id"]."' WHERE id='".$last["id"]."'");
						}
					} else {
						// the target gallery is empty, moved image will be first
						// no prev and next image, ord=1
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET gallery='".mysqli_real_escape_string($mysqli, $_POST["target"])."', ord='1', prev='0, next='0' WHERE id='".$result["id"]."'");
					}
					// 3rd - re-link prev and next images in original gallery
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
					// 4th - adjust ord (ord--) for next and all other images in original gallery
					if ($query) {
						if ($result["next"]>0) {
							$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET ord=ord-1 WHERE ord>'".$result["ord"]."' AND gallery='".$result["gallery"]."'");
						}
					}
					// inform about result
					if ($query) {
						// gallery edited
						return "admin_move_image_success";
					} else {
						// delete query wasn't successful
						return "admin_move_image_fail";
					}
				} else {
					// can't move to same gallery
					return "admin_move_image_samegallery";
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
	
	/**
	 * Move selected image backwards in gallery (ord--)
	 */
	public static function moveImageBackwardsAction($mysqli, $iid) {
		// check given id
		if (!empty($iid)) {
			// check for given image in DB
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, prev, next FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $iid)."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// image details loaded
				// check if image isn't first in gallery
				if ($result["prev"]>0) {
					// 1st - get info for prev image
					$prev = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, prev FROM elrh_gallery_images WHERE id='".$result["prev"]."'");
					// 2nd - place original image one position "backwards"
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET ord=ord-1, prev='".$prev["prev"]."', next='".$result["prev"]."' WHERE id='".$result["id"]."'");
					// 3rd - place prev image one position "forward"
					if ($query) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET ord=ord+1, prev='".$result["id"]."', next='".$result["next"]."' WHERE id='".$result["prev"]."'");
					}
					// 3rd - re-link prev of prev image
					if ($query) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET next='".$result["id"]."' WHERE id='".$prev["prev"]."'");
					}
					// 4th re-link next of original image
					if ($query) {
						if ($result["next"]>0) {
							$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET prev='".$result["prev"]."' WHERE id='".$result["next"]."'");
						}
					}
					// inform about result
					if ($query) {
						// gallery edited
						return "admin_move_backwards_success";
					} else {
						// delete query wasn't successful
						return "admin_move_backwards_fail";
					}
				} else {
					// image is first
					return "admin_image_first";
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
	
	/**
	 * Move selected image forwards in gallery (ord++)
	 */
	public static function moveImageForwardsAction($mysqli, $iid) {
		// check given id
		if (!empty($iid)) {
			// check for given image in DB
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$result = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, prev, next FROM elrh_gallery_images WHERE id='".mysqli_real_escape_string($mysqli, $iid)."'");
			if ((!empty($result))&&($result[0]!="db_error")) {
				// image details loaded
				// check if image isn't last in gallery
				if ($result["next"]>0) {
					// 1st - get info for next image
					$next = ELRHDataExtractor::retrieveRow($mysqli, "SELECT id, next FROM elrh_gallery_images WHERE id='".$result["next"]."'");
					// 2nd - place original image one position "forward"
					include_once getcwd().'/scripts/data-helpers/elrh_db_manipulator.php';
					$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET ord=ord+1, prev='".$result["next"]."', next='".$next["next"]."' WHERE id='".$result["id"]."'");
					// 3rd - place prev image one position "backward"
					if ($query) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET ord=ord-1, prev='".$result["prev"]."', next='".$result["id"]."' WHERE id='".$result["next"]."'");
					}
					// 3rd - re-link next of next image
					if ($query) {
						$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET prev='".$result["id"]."' WHERE id='".$next["next"]."'");
					}
					// 4th re-link prev of original image
					if ($query) {
						if ($result["prev"]>0) {
							$query = ELRHDataManipulator::editRecord($mysqli, "UPDATE elrh_gallery_images SET next='".$result["next"]."' WHERE id='".$result["prev"]."'");
						}
					}
					// inform about result
					if ($query) {
						// gallery edited
						return "admin_move_forwards_success";
					} else {
						// delete query wasn't successful
						return "admin_move_forwards_fail";
					}
				} else {
					// image is last
					return "admin_image_last";
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
 }
 ?>