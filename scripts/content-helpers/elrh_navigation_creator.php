<?php
class ELRHNavigationCreator {
	
	/** 
	 * Builds a navigation box included at the bottom of the page. 
	 */
	public static function createNavigationContent($lang, $mysqli) {
		// get lang variables
		include_once getcwd().'/scripts/data-helpers/elrh_text_retriever.php';
		$data["nav_top"] = ELRHTextRetriever::getText($mysqli, $lang, "nav_top");
		$data["nav_index"] = ELRHTextRetriever::getText($mysqli, $lang, "nav_index");
		$data["nav_map"] = ELRHTextRetriever::getText($mysqli, $lang, "nav_map");
		// build navbox
		$navigation = '<p id="navbox">'.PHP_EOL;
			$navigation .= '- <a href="#top" title="'.$data["nav_top"].'">'.$data["nav_top"].'</a><br />'.PHP_EOL;
			$navigation .= '- <a href="/index" title="'.$data["nav_index"].'">'.$data["nav_index"].'</a><br />'.PHP_EOL;
			$navigation .= '- <a href="/map" title="'.$data["nav_map"].'">'.$data["nav_map"].'</a>'.PHP_EOL;
        $navigation .= '</p>'.PHP_EOL;
		// return navbox result
		return $navigation;
	}
	
	/** 
	 * Builds a navigation box for browsing through images in gallery.
	 * $prev - ID of previous image in gallery
	 * $next - ID of next image in gallery
	 * $gallery - ID of parent gallery
	 */
	// TODO implement admin functions for moving back/forward
	public static function createImageNavbox($prev, $next, $gallery, $lang) { 
	    // icon dimensons
		$size = 24;
	    // build navigation 
		$navigation = '';
			// link to prev image
			if ($prev!=0) {
				$navigation .= '<a href="/gallery/i/'.$prev.'"><img src="/images/image_prev.gif" alt="'.$lang["prev"].'" title="'.$lang["prev"].'" height="'.$size.'" /></a> '.PHP_EOL;
			} else {
				$navigation .= '<img src="/images/image_prev_none.gif" alt="'.$lang["prev"].'" title="'.$lang["prev"].'" height="'.$size.'" /> '.PHP_EOL;
			}
			// link to gallery
			$navigation .= '<a href="/gallery/g/'.$gallery.'"><img src="/images/image_home.gif" alt="'.$lang["gallery"].'" title="'.$lang["gallery"].'" height="'.$size.'" /></a>'.PHP_EOL;
			// link to next image
			if ($next!=0) {
				$navigation .= ' <a href="/gallery/i/'.$next.'"><img src="/images/image_next.gif" alt="'.$lang["next"].'" title="'.$lang["next"].'" height="'.$size.'" /></a>'.PHP_EOL;
			} else {
			  $navigation .= ' <img src="/images/image_next_none.gif" alt="'.$lang["next"].'" title="'.$lang["next"].'" height="'.$size.'" />'.PHP_EOL;
			}
		// return navbox result
		return $navigation;
	}
}
?>