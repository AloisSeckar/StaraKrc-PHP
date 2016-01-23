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
		echo '<form action="/admin/login" method="post">'.PHP_EOL;
				echo '<table class="admin">'.PHP_EOL;
					echo '<tr><td><strong>'.$texts["admin_login_name"].':</strong></td>'.PHP_EOL;
					echo '<td><input type="text" name="name"></td></tr>'.PHP_EOL;
					echo '<tr><td><strong>'.$texts["admin_login_pass"].':</strong></td>'.PHP_EOL;
					echo '<td><input type="password" name="pass"><br /></td></tr>'.PHP_EOL;
					echo '<tr><td colspan="2"><input type="submit" value="'.$texts["admin_login_login"].'"></td></tr>'.PHP_EOL;
				echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
	}
	
	/**
	 * Select existing gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderSelectGalleryForm($texts, $current, $galleries) {
		// to avoid php warnings...
		if (!$current["exists"]) {
			$current["id"] = 0;
		}
		// render form
		echo '<form method="post" action="/admin/select_gallery">'.PHP_EOL;
			echo '<strong>'.$texts["admin_select_gallery_info"].':</strong> '.PHP_EOL;
			echo ELRHAdminRenderer::renderGalleriesSelect("gallery", $galleries, false, $current["id"]);
			echo ' <input type="submit" value="'.$texts["admin_select"].'">';
		echo '</form>'.PHP_EOL;
	}
	
	/**
	 * Add/edit gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderEditGalleryForm($texts, $current, $galleries) {
		// to avoid php warnings...
		if (!$current["exists"]) {
			$current["id"] = 0;
			$current["parent"] = 0;
			$current["name"] = "";
			$current["dscr"] = "";
		}
		// render form
		echo '<form method="post" action="/admin/edit_gallery">'.PHP_EOL;
			echo '<table class="admin">'.PHP_EOL;
				// info about selected gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_current"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current["exists"]) {
							echo '<a href="/gallery/g/'.$current["id"].'">'.$current["name"].'</a>'.PHP_EOL;
							echo ' [<a href="/admin">'.$texts["admin_gallery_addnew"].'</a>]'.PHP_EOL;
						} else {
							echo $texts["admin_gallery_new"].PHP_EOL;
						}
						echo '<input type="hidden" name="gid" value="'.$current["id"].'">'; // store ID value for processing script (0 means new)
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// name
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_name"].':</td>'.PHP_EOL;
					echo '<td class="value"><input type="text" name="name" value="'.$current["name"].'" size="64" maxlength="100"></td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// parent gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_parent"].':</td>'.PHP_EOL;
					echo '<td class="value">'.ELRHAdminRenderer::renderGalleriesSelect("parent", $galleries, true, $current["parent"]).'</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// description
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_dscr"].':<br />'.$texts["admin_voluntary"].'</td>'.PHP_EOL;
					echo '<td class="value"><textarea name="dscr" rows="10" cols="55">'.$current["dscr"].'</textarea></td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// submit button
				echo '<tr>'.PHP_EOL;
					echo '<td colspan="2">'.PHP_EOL;
						if ($current["exists"]) {
							// edit
							echo '<input type="submit" value="'.$texts["admin_edit"].'">'.PHP_EOL;
						} else {
							// add new
							echo '<input type="submit" value="'.$texts["admin_add"].'">'.PHP_EOL;
						}
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
			echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
	}
	
	/**
	 * Delete existing gallery
	 * $texts - localized labels and hints
	 * $current - selected gallery (if any)
	 * $galleries - available galleries info
	 */
	public static function renderDeleteGalleryForm($texts, $current, $galleries) {
		// to avoid php warnings...
		if (!$current["exists"]) {
			$current["id"] = 0;
		}
		// render form
		// including JS confirmation
		echo '<form method="post" action="/admin/delete_gallery" onsubmit="return confirm(\''.$texts["admin_delete_gallery_confirm"].'\');">'.PHP_EOL;
			echo '<strong>'.$texts["admin_delete_gallery_info"].':</strong> '.PHP_EOL;
			echo ELRHAdminRenderer::renderGalleriesSelect("gallery", $galleries, false, $current["id"]);
			echo ' <input type="submit" value="'.$texts["admin_delete"].'">';
		echo '</form>'.PHP_EOL;
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
		// to avoid php warnings...
		if (!$current_gallery["exists"]) {
			$current_gallery["id"] = 0;
		}
		if (!$current_image["exists"]) {
			$current_image["id"] = 0;
			$current_image["gallery"] = 0;
			$current_image["name"] = "";
			$current_image["dscr"] = "";
			$current_image["prev"] = 0;
			$current_image["next"] = 0;
			$current_image["image"] = "";
		}
		// render form(s)
		// 1st - form to select image within gallery
		echo '<form method="post" action="/admin/select_image">'.PHP_EOL;
			echo '<table class="admin">'.PHP_EOL;
				// info about selected gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_current"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_gallery["exists"]) {
							echo '<a href="/gallery/g/'.$current_gallery["id"].'">'.$current_gallery["name"].'</a>'.PHP_EOL;
						} else {
							echo $texts["admin_gallery_notselected"].PHP_EOL;
						}
						echo '<input type="hidden" name="gid" value="'.$current_gallery["id"].'">'; // store ID value for processing script (0 means new)
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// select image
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_select"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_gallery["exists"]) {
							echo ELRHAdminRenderer::renderImagesSelect($images, $current_image["id"]).PHP_EOL;
							echo ' <input type="submit" value="'.$texts["admin_select"].'">';
						} else {
							echo $texts["admin_gallery_notselected"].PHP_EOL;
						}
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
			echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
		// 2nd - form to add/edit image
		echo '<form method="post" action="/admin/edit_image" enctype="multipart/form-data">'.PHP_EOL;
			echo '<table class="admin">'.PHP_EOL;
				// info about selected gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_current"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_image["exists"]) {
							echo '<a href="/gallery/i/'.$current_image["id"].'">'.$current_image["name"].'(#'.$current_image["id"].')</a>'.PHP_EOL;
							echo ' [<a href="/admin">'.$texts["admin_image_addnew"].'</a>]'.PHP_EOL;
						} else {
							echo $texts["admin_image_new"].PHP_EOL;
						}
						echo '<input type="hidden" name="iid" value="'.$current_image["id"].'">'; // store ID value for processing script (empty means new)
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// name
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_name"].':</td>'.PHP_EOL;
					echo '<td class="value"><input type="text" name="name" value="'.$current_image["name"].'" size="64" maxlength="100"></td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_gallery"].':</td>'.PHP_EOL;
					// only allow selection for new images
					// moving existing images is treated in different form
					echo '<td class="value">'.PHP_EOL;
						if (!$current_image["exists"]) {
							echo ELRHAdminRenderer::renderGalleriesSelect("gallery", $galleries, false, $current_image["gallery"]).PHP_EOL;
						} else {
							echo '<a href="/gallery/g/'.$current_gallery["id"].'">'.$current_gallery["name"].'</a>'.PHP_EOL;
						}
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// description
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_dscr"].':<br />'.$texts["admin_voluntary"].'</td>'.PHP_EOL;
					echo '<td class="value"><textarea name="dscr" rows="6" cols="55">'.$current_image["dscr"].'</textarea></td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// image itself
				// including arrows to navigate and move
				// including file dialog for (re)upload
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_img"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_image["exists"]) {
							// display existing
							echo ELRHAdminRenderer::renderImageNavigation($current_image["prev"], $current_image["next"], $current_image["id"], $current_image["name"], "/content/gallery/thumbs/".$current_image["image"], $texts, 24);
							// uploading input
							// TODO think about enabling
							// echo '<br /><input type="file" name="img_file" value="'.$current_image["image"].'"><br />('.$texts["admin_image_leave_blank"].')'.PHP_EOL;
						} else {
							echo '<input type="file" name="img_file">'.PHP_EOL;
						}							
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// submit button
				echo '<tr>'.PHP_EOL;
					echo '<td colspan="2">'.PHP_EOL;
						if ($current_image["exists"]) {
							// edit
							echo '<input type="submit" value="'.$texts["admin_edit"].'">'.PHP_EOL;
						} else {
							// add new
							echo '<input type="submit" value="'.$texts["admin_add"].'">'.PHP_EOL;
						}
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
			echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
		// 3rd - form to move image to different gallery
		// TODO
		// 4th - form to delete image
		echo '<form method="post" action="/admin/delete_image" onsubmit="return confirm(\''.$texts["admin_delete_image_confirm"].'\');">'.PHP_EOL;
			echo '<table class="admin">'.PHP_EOL;
				// info about selected gallery
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_gallery_current"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_gallery["exists"]) {
							echo '<a href="/gallery/g/'.$current_gallery["id"].'">'.$current_gallery["name"].'</a>'.PHP_EOL;
						} else {
							echo $texts["admin_gallery_notselected"].PHP_EOL;
						}
						echo '<input type="hidden" name="gid" value="'.$current_gallery["id"].'">'; // store ID value for processing script (0 means new)
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
				// select image
				echo '<tr>'.PHP_EOL;
					echo '<td class="label">'.$texts["admin_image_delete"].':</td>'.PHP_EOL;
					echo '<td class="value">'.PHP_EOL;
						if ($current_gallery["exists"]) {
							echo ELRHAdminRenderer::renderImagesSelect($images, $current_image["id"]).PHP_EOL;
							echo ' <input type="submit" value="'.$texts["admin_delete"].'">';
						} else {
							echo $texts["admin_gallery_notselected"].PHP_EOL;
						}
					echo '</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
			echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
	}
	
	// PRIVATE FUNCTIONS
	private static function renderGalleriesSelect($name, $galleries, $null_option, $selected) {
		// render select form input with all available galleries
		$select = '<select name="'.$name.'">'.PHP_EOL;
			// "null" option
			if ($null_option) {
				$select .= '<option value="0">-----</option>'.PHP_EOL;
			}
			// all galleries
			if (!empty($galleries)) {
				foreach($galleries as $gallery) {
					$select .= '<option value="'.$gallery["id"].'"';
					if ($gallery["id"]==$selected) {
						$select .= ' selected';
					}
					//
					if (empty($gallery["parent"])) {
						$gallery["parent"] = "-----";
					}
					//
					$select .= '>'.$gallery["name"].' ('.$gallery["parent"].')</option>'.PHP_EOL;
				}
			}
		$select .= '</select>'.PHP_EOL;
		//
		return $select;
	}
	
	private static function renderImagesSelect($images, $selected) {
		$select = '<select name="image">'.PHP_EOL;
			// all images
			if (!empty($images)) {
				foreach($images as $image) {
					$select .= '<option value="'.$image["id"].'"';
					if ($image["id"]==$selected) {
						$select .= ' selected';
					}
					$select .= '>'.$image["name"].'(#'.$image["id"].')</option>'.PHP_EOL;
				}
			}
		$select .= '</select>'.PHP_EOL;
		//
		return $select;
	}
	
	private static function renderImageNavigation($prev, $next, $iid, $name, $image, $lang, $size) {
		// build navigation 
		$imageNavigation = '';
			// to prev image
			if ($prev!=0) {
				$imageNavigation .= '<a href="/admin/move_backwards/'.$prev.'"><img src="/images/image_backwards.gif" alt="'.$lang["admin_image_backwards"].'" title="'.$lang["admin_image_prev"].'" height="'.$size.'" /></a> '.PHP_EOL;
				$imageNavigation .= '<a href="/admin/select_image/'.$prev.'"><img src="/images/image_prev.gif" alt="'.$lang["admin_image_prev"].'" title="'.$lang["admin_image_backwards"].'" height="'.$size.'" /></a> '.PHP_EOL;
			} else {
				$imageNavigation .= '<img src="/images/image_prev_none.gif" alt="'.$lang["admin_image_backwards"].'" title="'.$lang["admin_image_backwards"].'" height="'.$size.'" /> '.PHP_EOL;
				$imageNavigation .= '<img src="/images/image_prev_none.gif" alt="'.$lang["admin_image_prev"].'" title="'.$lang["admin_image_prev"].'" height="'.$size.'" /> '.PHP_EOL;
			}
			// image itself
			$imageNavigation .= '<a href="/gallery/i/'.$iid.'"><img src="'.$image.'" alt="'.$name.'" title="'.$name.'" /></a>'.PHP_EOL;
			// to next image
			if ($next!=0) {
				$imageNavigation .= '<a href="/admin/select_image/'.$next.'"><img src="/images/image_next.gif" alt="'.$lang["admin_image_next"].'" title="'.$lang["admin_image_next"].'" height="'.$size.'" /></a> '.PHP_EOL;
				$imageNavigation .= '<a href="/admin/move_forwards/'.$next.'"><img src="/images/image_forwards.gif" alt="'.$lang["admin_image_forwards"].'" title="'.$lang["admin_image_forwards"].'" height="'.$size.'" /></a> '.PHP_EOL;
			} else {
			  $imageNavigation .= ' <img src="/images/image_next_none.gif" alt="'.$lang["admin_image_next"].'" title="'.$lang["admin_image_next"].'" height="'.$size.'" />'.PHP_EOL;
			  $imageNavigation .= ' <img src="/images/image_next_none.gif" alt="'.$lang["admin_image_forwards"].'" title="'.$lang["admin_image_forwards"].'" height="'.$size.'" />'.PHP_EOL;
			}
		// return navbox result
		return $imageNavigation;
	}
}