<?php
/** 
 * Renders some java-script for social networks
 */
class ELRHJSRenderer {
	// from FB - comments
	public static function renderJSComments() {
		echo '<script>';
			echo '(function(d, s, id) {';
			echo 'var js, fjs = d.getElementsByTagName(s)[0];';
			echo 'if (d.getElementById(id)) return;';
			echo 'js = d.createElement(s); js.id = id;';
			echo 'js.src = "//connect.facebook.net/cs_CZ/all.js#xfbml=1";';
			echo 'fjs.parentNode.insertBefore(js, fjs);';
			echo '}(document, "script", "facebook-jssdk"))';
		echo '</script>';
	}
	// from Twitter - share
	public static function renderJSShare() {
		echo '<script>';
			echo "!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');";
		echo '</script>';
	}
}
?>