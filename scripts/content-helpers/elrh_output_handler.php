<?php
/**
 * Some functions to transform data before printing them out via "echo"
 */
class ELRHOutputHandler {
	
	/** 
	 * Shorten longer text to given amount of characters and build link to see rest 
	 * $text - input text
	 * $length - character limit
	 * $link_url - where to read the rest
	 * $link_text - text to display
	 */
	public static function shortenText($text, $length, $link_url, $link_text) {
		// strip first "length" characters
		$result = substr($text, 0, $length);
		// add link if needed
		if (strlen($text)>$length) {
			$result .= '...';
			$result .= ' [<a href="'.$link_url.'" title="'.$link_text.'">'.$link_text.'</a>]';
		}
		// return title result
		return $result;
	}
	
	/** 
	 * Put "&nbsp;" where needed (to avoid text wrapping in undesired places)
	 * $text - input text
	 * $lang - determine rules
	 */
	public static function addNBSP($text, $lang) {
		if ($lang=="cz") {
			// TODO transform text accordingly
			return $text;
		} else {
			// for other languages there will be different (or no) rules
			return $text;
		}
	}
	 
	 /** 
	 * For czech language adjust word used for "images count"
	 * In czech there are differend word shapes...
	 * $text - input text
	 * $count - target images count
	 * $lang - determine rules
	 */
	public static function adjustImageCountText($text, $count, $lang) {
		if ($lang=="cz") {
			if ($count==1) {
				return "obrázek";
			} elseif (($count>1)&&($count<5)) {
			    return "obrázky";
			} else {
				return $text;
			}
		 } else {
			 // for other languages there will be different (or no) rules
			 return $text;
		 }
	 }
}
?>