<?php
/**
 * Render form(s) for gallery administration
 */
class ELRHGalleryFormRenderer {
	
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
			if (!empty($galleries)) {
				echo ELRHGalleryFormRenderer::renderGalleriesSelect("item", $galleries, false, $current["id"]);
				echo ' <input type="submit" value="'.$texts["admin_select"].'">'.PHP_EOL;
			} else {
				echo $texts["admin_no_galleries"].PHP_EOL;
			}
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
					echo '<td class="value">'.ELRHGalleryFormRenderer::renderGalleriesSelect("parent", $galleries, true, $current["parent"]).'</td>'.PHP_EOL;
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
			if (!empty($galleries)) {
				echo ELRHGalleryFormRenderer::renderGalleriesSelect("gallery", $galleries, false, $current["id"]);
				echo ' <input type="submit" value="'.$texts["admin_delete"].'">'.PHP_EOL;
			} else {
				echo $texts["admin_no_galleries"].PHP_EOL;
			}
		echo '</form>'.PHP_EOL;
	}
	
	/**
	 * Helper - render select with all available galelries
	 * $name - name for select input
	 * $galleries - available galleries info
	 * $null_option - display "no gallery" option yes/no
	 * $selected - id of selected gallery (if any)
	 */
	public static function renderGalleriesSelect($name, $galleries, $null_option, $selected) {
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
}
?>