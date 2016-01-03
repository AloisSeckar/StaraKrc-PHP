<?php
/**
 * Build menu elements for page
 */
class ELRHMenuCreator {
	
	/** 
	 * Builds a drop-down menu in top of each page.
	 */
	public static function createMenuContent($texts) {
		// menu designed for black beat css template
	    $menu["top"] = '<div id="menu">
							<ul>
								<li><a href="/index" title="'.$texts["global_menu_index_dscr"].'">'.$texts["global_menu_index"].'</a></li>
								<li><a href="/articles" title="'.$texts["global_menu_articles_dscr"].'">'.$texts["global_menu_articles"].'</a></li>
								<li><a href="/gallery" title="'.$texts["global_menu_gallery_dscr"].'">'.$texts["global_menu_gallery"].'</a></li>
								<li><a href="/library" title="'.$texts["global_menu_library_dscr"].'">'.$texts["global_menu_library"].'</a></li>
								<li><a href="/links" title="'.$texts["global_menu_links_dscr"].'">'.$texts["global_menu_links"].'</a></li>
								<li><a href="/contacts" title="'.$texts["global_menu_contacts_dscr"].'">'.$texts["global_menu_contacts"].'</a></li>
							</ul>
						 </div>';
	    $menu["bottom"] = '<ul class="footer_menu">
							  <li><a href="/index" title="'.$texts["global_menu_index_dscr"].'">'.$texts["global_menu_index"].'</a></li>
							  <li><a href="/articles" title="'.$texts["global_menu_articles_dscr"].'">'.$texts["global_menu_articles"].'</a></li>
							  <li><a href="/gallery" title="'.$texts["global_menu_gallery_dscr"].'">'.$texts["global_menu_gallery"].'</a></li>
							  <li><a href="/library" title="'.$texts["global_menu_library_dscr"].'">'.$texts["global_menu_library"].'</a></li>
							  <li><a href="/links" title="'.$texts["global_menu_links_dscr"].'">'.$texts["global_menu_links"].'</a></li>
							  <li class="last_menu"><a href="/contacts" title="'.$texts["global_menu_contacts_dscr"].'">'.$texts["global_menu_contacts"].'</a></li>
							</ul>';
		// return menu result
		return $menu;
	}
}
?>