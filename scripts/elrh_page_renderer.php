<?php
/**
 * Render html codes for page
 */
class ELRHPageRenderer {
	public static function renderHTMLStart() {
		echo '<!DOCTYPE html>'.PHP_EOL;
		echo '<html>'.PHP_EOL;
	}
	
	public static function renderHTMLHead($title, $dscr, $fb_image) {
		echo '<head>'.PHP_EOL;
			echo '<meta http-equiv="content-type" content="text/html; charset=utf-8" />'.PHP_EOL;
			echo '<title>'.$title.'</title>'.PHP_EOL;
			echo '<meta name="generator" content="PSPad editor, www.pspad.com" />'.PHP_EOL;
			echo '<meta name="description" content="'.$dscr.'" />'.PHP_EOL;
			echo '<meta property="og:image" content="'.$fb_image.'" />'.PHP_EOL;
			echo '<link rel="stylesheet" type="text/css" href="/elrh-black-beat.css" />'.PHP_EOL;
			// black beat css javascript
			echo '<script language="javascript" type="text/javascript">'.PHP_EOL;
				echo 'function clearText(field) {'.PHP_EOL;
					echo "if (field.defaultValue == field.value) field.value = '';".PHP_EOL;
					echo "else if (field.value == '') field.value = field.defaultValue;".PHP_EOL;
				echo '}'.PHP_EOL;
			echo '</script>'.PHP_EOL;
		echo '</head>'.PHP_EOL;
	}
	
	public static function renderBodyStart($ga_id) {
		echo '<body id="top">'.PHP_EOL;
		// google analytics
		include_once getcwd().'/scripts/java-script/elrh_ga_renderer.php';
		ELRHGARenderer::renderGA($ga_id);
		//
		echo '<div id="container">'.PHP_EOL;
	}
	
	public static function renderPageHeader($dscr, $motto) {
		echo '<div id="banner">'.PHP_EOL;
			echo '<div id="site_title">'.PHP_EOL;
				echo '<h1><a href="/"><img src="/images/logo.png" alt="'.$dscr.'" title="'.$dscr.'" /></a></h1>'.PHP_EOL;
			echo '</div>'.PHP_EOL;
			echo '<p>'.$motto.'</p>'.PHP_EOL;
		echo '</div>'.PHP_EOL;
	}
	
	public static function renderPageMenu($menu) {
		echo '<nav>'.PHP_EOL;
			echo $menu.PHP_EOL;
		echo '</nav>'.PHP_EOL;
	}
	
	public static function renderContentStart($login_text, $admin_text, $logout_text) {
		echo '<div id="content">'.PHP_EOL;
	    echo '<div id="main_column">'.PHP_EOL;
		// show login name (if any)
		if (isset($_SESSION["user"])) {
			echo '<p class="centered">'.PHP_EOL;
				echo $login_text.': <strong>'.$_SESSION["user_name"].'</strong> [<a href="/admin">'.$admin_text.'</a>] [<a href="/admin/logout">'.$logout_text.'</a>]'.PHP_EOL;
			echo '</p>'.PHP_EOL;
		}
		echo '<article>'.PHP_EOL;
	}
	
	public static function renderContentEnd($nav, $toplist_id) {
		echo '</article>'.PHP_EOL;
		// bottom navigation box
		echo $nav; 
		// visits counter
		echo '<a href="http://www.toplist.cz/stat/'.$toplist_id.'" target="_top"><img src="http://toplist.cz/count.asp?id='.$toplist_id.'&amp;start=3529&amp;logo=mc" border="0" alt="TOPlist" width="88" height="60" /></a>';
		echo '</div>'.PHP_EOL;
		echo '</div>'.PHP_EOL;
	}
	
	public static function renderPageFooter($title, $menu, $ads_left, $ads_right) {
		echo '<div id="footer">'.PHP_EOL;
		    echo $menu;
			echo $ads_left.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/admin"><img src="/images/admin.png" alt="Admin" title="Admin" /></a> '; // admin link
			echo '<strong>'.$title.'</strong> &copy; 2015-2016 <a href="https://github.com/AloisSeckar/ELRHistory">System by Alois Sečkár</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$ads_right.'<br />Based on customized <strong>Black Beat</strong> CSS template by <a target="_blank" rel="nofollow" href="http://www.templatemo.com">templatemo</a> | Icons by <a  target="_blank" rel="nofollow" href="http://www.wpzoom.com/wpzoom/new-freebie-wpzoom-developer-icon-set-154-free-icons/">WPZOOM</a>'.PHP_EOL;
		echo '</div>'.PHP_EOL;
	}
	
	public static function renderHTMLEnd() {
		echo '</div>'.PHP_EOL;
		echo '</body>'.PHP_EOL;
		echo '</html>'.PHP_EOL;
	}	
}
?>