<?php
// TODO admin functions
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		include_once getcwd().'/scripts/admin-helpers/elrh_admin_resolver.php';
		
		// login-action
		// must be before "logged-in only" section
		if ($item=="login") {
			// tries to log user in (may success or fail)
			$data["admin_output"] = ELRHAdminResolver::loginAction($mysqli);
		}
		
		// other options only available for logged-in user
		if (isset($_SESSION["user"])) {
			
			// split request by "/" (there might be some extra data regarding image IDs
			$request = preg_split('~/~', $item);
			
			// determine action by request (excluding "login" action - already resolved
			switch ($request[0]) { 
				case "login":
					// just to avoid falling into "invalid_request" branch
					break;
				case "logout":
					// pefrom logout for current user
					$data["admin_output"] = ELRHAdminResolver::logoutAction();
					break;
				case "select_gallery":
					// try to load details for gallery
					// gallery might have been selected by posting form or through direct link
					if ((!empty($request[1]))&&(is_numeric($request[1]))) {
						$gallery = $request[1];
					} else {
						if (!empty($_POST["gallery"])) {
							$gallery = $_POST["gallery"];
						} else {
							$gallery = 0;
						}
					}
					$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $gallery);
					$data["admin_output"] = $data["current_gallery"]["result"];
					break;
				case "edit_gallery":
					// try to perform DB action (add/edit gallery)
					$data["admin_output"] = ELRHAdminResolver::editGalleryAction($mysqli);
					// try to load details for edited gallery
					if (empty($_POST["gid"])) {
						$_POST["gid"] = 0;
					}
					$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $_POST["gid"]);
					break;
				case "delete_gallery":
					// try to perform DB action (delete gallery)
					$data["admin_output"] = ELRHAdminResolver::deleteGalleryAction($mysqli);
					break;
				case "select_image":
					// try to load details for image
					// image might have been selected by posting form or through direct link
					if ((!empty($request[1]))&&(is_numeric($request[1]))) {
						$image = $request[1];
					} else {
						if (!empty($_POST["image"])) {
							$image = $_POST["image"];
						} else {
							$image = 0;
						}
					}
					$data["current_image"] = ELRHAdminResolver::selectImageAction($mysqli, $image);
					$data["admin_output"] = $data["current_image"]["result"];
					// after loading image, try load details for its gallery
					if ($data["current_image"]["exists"]) {
						$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $data["current_image"]["gallery"]);
					}
					break;
				case "edit_image":
					// try to perform DB action (add/edit image)
					$data["admin_output"] = ELRHAdminResolver::editImageAction($mysqli);
					// try to load details for edited image
					if (empty($_POST["iid"])) {
						$_POST["iid"] = 0;
					}
					$data["current_image"] = ELRHAdminResolver::selectImageAction($mysqli, $_POST["iid"]);
					// try to load details for image's gallery
					if ($data["current_image"]["exists"]) {
						$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $data["current_image"]["gallery"]);
					}
					break;
				case "move_image":
				case "move_forwards":
				case "move_backwards":
				case "delete_image":
					$data["admin_output"] = "admin_unsupported_request";
					break;
				default:
					if (!empty($item)) {
						// requested action doesn't exist
						$data["admin_output"] = "admin_invalid_request";
					} else {
						// no action requested
						// (just some mock data to avoid errors later)
						$data["null"] = "null";
					}
			}
			
			// get necessary data to be displayed throughout administration
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			// get all existing galleries
			$data["galleries"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT g.id, g.name, (SELECT name FROM elrh_gallery_galleries WHERE id=g.parent) AS parent FROM elrh_gallery_galleries g ORDER BY g.name");
			// if there is selected gallery, pick all images from it
			if ((!empty($data["current_gallery"]))&&($data["current_gallery"]["exists"])) {
				$data["images"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT id, name FROM elrh_gallery_images WHERE gallery='".$data["current_gallery"]["id"]."' ORDER BY ord");
			} else {
				// notify renderer that gallery selection is empty
				$data["current_gallery"]["exists"] = false;
				// some mock data to avoid errors later
				$data["images"] = "null";
			}
			// notify renderer that image selection is empty, if needed
			if (empty($data["current_image"])) {
				$data["current_image"]["exists"] = false;
			}
		} else {
			// not logged in
			// (just some mock data to avoid errors later)
		    $data["null"] = "null";
		}
		
		// save prepared data for renderer
		return $data;
	}
}