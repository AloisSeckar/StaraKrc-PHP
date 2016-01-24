<?php
/**
 * Render various admin forms
 */
class ELRHAdminRenderer {
	/**
	 * Login for admin
	 * $texts - localized labels and hints
	 */
	public static function renderLoginForm($texts) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_login.php';
		return ELRHLoginFormRenderer::renderLoginForm($texts);
	}
	
	/**
	 * Select existing gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderSelectGalleryForm($texts, $current, $galleries) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_gallery.php';
		return ELRHGalleryFormRenderer::renderSelectGalleryForm($texts, $current, $galleries);
	}
	
	/**
	 * Add/edit gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderEditGalleryForm($texts, $current, $galleries) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_gallery.php';
		return ELRHGalleryFormRenderer::renderEditGalleryForm($texts, $current, $galleries);
	}
	
	/**
	 * Delete existing gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderDeleteGalleryForm($texts, $current, $galleries) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_gallery.php';
		return ELRHGalleryFormRenderer::renderDeleteGalleryForm($texts, $current, $galleries);
	}
	
	/**
	 * Add/edit image
	 * $texts - localized labels and hints
	 * $current_gallery - selected gallery (if any)
	 * $current_image - selected image (if any)
	 * $galleries - available galleries info
	 * $images - all images within selected gallery (just ID and name)
	 */
	public static function renderEditImageForm($texts, $current_gallery, $current_image, $galleries, $images) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_image.php';
		return ELRHImageFormRenderer::renderEditImageForm($texts, $current_gallery, $current_image, $galleries, $images);
	}
	
	/**
	 * Delete existing image
	 * $texts - localized labels and hints
	 * $current_gallery - selected gallery (if any)
	 * $current_image - selected image (if any)
	 * $images - available images info
	 */
	public static function renderDeleteImageForm($texts, $current_gallery, $current_image, $images) {
		include_once getcwd().'/scripts/admin-helpers/admin-forms/elrh_forms_image.php';
		return ELRHImageFormRenderer::renderDeleteImageForm($texts, $current_gallery, $current_image, $images);
	}
}
?>