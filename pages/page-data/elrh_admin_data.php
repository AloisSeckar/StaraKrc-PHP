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
			
			// determine action by request
			// excluding "login" action, that already resolved, and "select", that will be resolved later
			switch ($request[0]) { 
				case "login":
				case "select_gallery":
				case "select_image":
					// just to avoid falling into "invalid_request" branch
					break;
				case "logout":
					// pefrom logout for current user
					$data["admin_output"] = ELRHAdminResolver::logoutAction();
					break;
				case "edit_gallery":
					// try to perform DB action (add/edit gallery)
					$data["admin_output"] = ELRHAdminResolver::editGalleryAction($mysqli);
					// predend "select gallery" action for loading gallery details later in "SELECT actions" block
					if (!empty($_POST["gid"])) {
						$request[0] = "load_gallery";
						$_POST["item"] = $_POST["gid"];
					}
					break;
				case "delete_gallery":
					// try to perform DB action (delete gallery)
					$data["admin_output"] = ELRHAdminResolver::deleteGalleryAction($mysqli);
					break;
				case "edit_image":
					// try to perform DB action (add/edit image)
					$data["admin_output"] = ELRHAdminResolver::editImageAction($mysqli);
					// predend "select image" action for loading image details later in "SELECT actions" block
					if (!empty($_POST["iid"])) {
						$request[0] = "load_image";
						$_POST["item"] = $_POST["iid"];
					}
					break;
				case "delete_image":
					// try to perform DB action (delete gallery)
					$data["admin_output"] = ELRHAdminResolver::deleteImageAction($mysqli);
					// predend "select gallery" action for loading gallery details later in "SELECT actions" block
					// (ID is set inside deleteImageAction method)
					$request[0] = "load_gallery";
					break;
				case "move_image":
				case "move_forwards":
				case "move_backwards":
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
			
			// SELECT actions
			// default - no item selected
			$id = 0;
			// option 1 - ID given in $_GET request
			// option 2 - ID given in $_POST request
			if ((!empty($request[1]))&&(is_numeric($request[1]))) {
				$id = $request[1];
			} elseif (!empty($_POST["item"])) {
				$id = $_POST["item"];
			}
			// if there is request - eleaborate it
			if ($id>0) {
				switch ($request[0]) {
					case "select_gallery":
					case "load_gallery":
						$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $id);
						// for initial select, action result shall be displayed
						if ($request[0]=="select_gallery") {
							$data["admin_output"] = $data["current_gallery"]["result"];
						}
						break;
					case "select_image":
					case "load_image":
						$data["current_image"] = ELRHAdminResolver::selectImageAction($mysqli, $id);
						// for initial select, action result shall be displayed
						if ($request[0]=="select_image") {
							$data["admin_output"] = $data["current_image"]["result"];
						}
						// after loading image, try load details for its gallery
						if ($data["current_image"]["exists"]) {
							$data["current_gallery"] = ELRHAdminResolver::selectGalleryAction($mysqli, $data["current_image"]["gallery"]);
						}
						break;
					// select_article and select_link not yet implemented
				}
			}
			// SELECT actions
			
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
?>