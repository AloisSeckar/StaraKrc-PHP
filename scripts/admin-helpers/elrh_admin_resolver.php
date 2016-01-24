<?php
/**
 * Methods to support admin actions
 */
class ELRHAdminResolver {
	/**
	 * Validates login
	 */
	public static function loginAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_login_handler.php';
		return ELRHLoginHandler::loginAction($mysqli);
	}
	
	/**
	 * Process logout
	 */
	public static function logoutAction() {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_login_handler.php';
		return ELRHLoginHandler::logoutAction();
	}
	
	/**
	 * Get details for selected gallery
	 */
	public static function selectGalleryAction($mysqli, $gid) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_item_selector.php';
		return ELRHItemSelector::selectGalleryAction($mysqli, $gid);
	}
	
	/**
	 * Get details for selected image
	 */
	public static function selectImageAction($mysqli, $iid) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_item_selector.php';
		return ELRHItemSelector::selectImageAction($mysqli, $iid);
	}
	
	/**
	 * Add new / Edit selected gallery
	 */
	public static function editGalleryAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_gallery_manipulator.php';
		return ELRHGalleryManipulator::editGalleryAction($mysqli);
	}
	
	/**
	 * Delete selected gallery
	 */
	public static function deleteGalleryAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_gallery_manipulator.php';
		return ELRHGalleryManipulator::deleteGalleryAction($mysqli);
	}
	
	/**
	 * Add new / Edit selected image
	 */
	public static function editImageAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_image_manipulator.php';
		return ELRHImageManipulator::editImageAction($mysqli);
	}
	
	/**
	 * Delete selected image
	 */
	public static function deleteImageAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_image_manipulator.php';
		return ELRHImageManipulator::deleteImageAction($mysqli);
	}
	
	/**
	 * Move selected image to other gallery
	 */
	public static function moveImageToGalleryAction($mysqli) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_image_mover.php';
		return ELRHImageMover::moveImageToGalleryAction($mysqli);
	}
	
	/**
	 * Move selected image backwards in gallery (ord--)
	 */
	public static function moveImageBackwardsAction($mysqli, $iid) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_image_mover.php';
		return ELRHImageMover::moveImageBackwardsAction($mysqli, $iid);
	}
	
	/**
	 * Move selected image forwards in gallery (ord++)
	 */
	public static function moveImageForwardsAction($mysqli, $iid) {
		include_once getcwd().'/scripts/admin-helpers/admin-actions/elrh_image_mover.php';
		return ELRHImageMover::moveImageForwardsAction($mysqli, $iid);
	}
}
?>