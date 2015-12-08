<?php
///////////////////////////////////////////////////////////////////////
//                                                                   //
//                             STARÁ KRČ                             //
//                  Historie městské části Praha-Krč                 //
//                                                                   //
//                   Copyright © Ellrohir 2010-2015                  // 
//                                                                   //
//                                                                   //
//    Page Info                                                      //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// *  Author:         *  Ellrohir [ ellrohir@seznam.cz ]           * //
// *  Homepage:       *  http://ellrohir.mzf.cz                    * //
// *  File:           *  index.php                                 * //
// *  Purpose:        *  Main index page                           * //
// *  System Version: *  2.2 fix 2                                 * //
// *  Last Modified:  *  2015-10-15 1942 GMT+2                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////


// SESSION INIT //
session_start();
// SESSION INIT //

// DB CONNECTION //
$mysqli = new mysqli('wm27.wedos.net', 'w33148_krc', 'jssLbD6d', 'd33148_krc');
// set names
if ($mysqli->errno==0) {
 $mysqli->set_charset("utf8");
}
// DB CONNECTION //

// POSSIBLE LOGIN ACTION
  // get possible action
  if (!empty($_GET["action"])) {
    $action = $_GET["action"];
  } else {
    $action = "none"; // default is no action
  }
  
  // handle actions
  if ($action=="login") {
   // test db connection
   if ($mysqli->errno==0) {
    // get variables
    if (!empty($_POST["elrh_login_name"])) { 
      $elrh_login_name = $_POST["elrh_login_name"];
    } else {
      $error_message = 'Nezadáno uživatelské jméno.';
    }
    if (!empty($_POST["elrh_login_pass"])) {
     $elrh_login_pass = $_POST["elrh_login_pass"];
    } else {
     $error_message = 'Nezadáno uživatelské heslo.';
    }
    
    if (empty($error_message)) {
     // get user data from db
     $result = $mysqli->query("SELECT u_pass FROM elrh_users WHERE u_name='".$elrh_login_name."'");
     if ($result->num_rows>0) {
      $login_data = $result->fetch_array();
      
      // test password match
      if (sha1(md5($elrh_login_pass))==$login_data["u_pass"]) {
       // if match, set login session
       $_SESSION["user_name"] = $elrh_login_name;
      } else {
       $error_message = 'Špatné heslo.';
      }
     } else {
      $error_message = 'Neexistující uživatel.';
     }
    } // variables filled
   } else {
    $error_message = 'Nepodařilo se spojit s databází.';
   }
  } elseif ($action=="logout") {
   // simply unset the login session
   unset($_SESSION["user_name"]); 
  }
// POSSIBLE LOGIN ACTION

// GET PAGE REQUEST
if (!empty($_GET["page"])) {
 $page = $_GET["page"];
} else {
 $page = "main"; // default is index
}
// GET PAGE REQUEST

// BUILD PAGE TITLE
switch ($page) {
 case "articles":
  // try to get currently selected article (if any)
   if (!empty($_GET["aid"])) {
    $id = $_GET["aid"];
    $result = $mysqli->query("SELECT name FROM elrh_articles WHERE id='".$id."'");
    if ($result->num_rows>0) {
     $article_info = $result->fetch_array();
     $title = "Stará Krč - ".$article_info["name"];
    } else {
     $title = "Stará Krč - Texty";
    }
   } else {
    $title = "Stará Krč - Texty";
   }
  break;
 case "gallery":
  // try to get currently selected gallery (if any)
   if (!empty($_GET["gid"])) {
    $id = $_GET["gid"];
    $result = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$id."'");
    if ($result->num_rows>0) {
     $gallery_info = $result->fetch_array();
     $title = "Stará Krč - Galerie: ".$gallery_info["name"];
    } else {
     $title = "Stará Krč - Galerie";
    }
   } elseif (!empty($_GET["iid"])) {
    $id = $_GET["iid"];
    $result = $mysqli->query("SELECT gallery FROM elrh_gallery_images WHERE id='".$id."'");
    $image_info = $result->fetch_array();
    $result = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$image_info["gallery"]."'");
    if ($result->num_rows>0) {
     $gallery_info = $result->fetch_array();
     $title = "Stará Krč - Galerie: ".$gallery_info["name"];
    } else {
     $title = "Stará Krč - Galerie";
    }
   } else {
    $title = "Stará Krč - Galerie";
   }
  break;
 case "contact":
  $title = "Stará Krč - Kontakt na autory";
  break;
 case "links":
  $title = "Stará Krč - Odkazy";
  break;
 case "books":
  $title = "Stará Krč - Knihy";
  break;
 default:
  $title = "Stará Krč - Historie městské části Praha-Krč";
}
//
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="content-type" content="text/html; charset=utf-8">
   <title><?=$title;?></title>
   <meta name="description" content="Stará Krč - Historie městské části Praha-Krč" />
   <meta name="keywords" content="Stará, Krč, Praha, Historie, Městská, Část, Pohledy, Sbírka, Historické, Fotografie, Fotky, Články, Informace, Alois, Sečkár, Svobodní" />
   <meta name="generator" content="PSPad editor, www.pspad.com">
   <link rel="stylesheet" type="text/css" href="skin/new_skin.css" />
   <link rel="icon" type="image/png" href="icon.png" />
  </head>
  
  <body id="background">
  
  <? /* FB COMMENTS */ ?>
  <div id="fb-root"></div>
  <script>
   (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/cs_CZ/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  </script>
  
   <? /* PAGE BODY */ ?>
   <div id="div_bg"> 
   
    <? /* PAGE HEADER */ ?>
    <div id="div_header">
     <div class="header_contents">
      <img src="skin/header_left.jpg" title="Stará Krč" alt="Stará Krč" height="125" />
      <a href="index.php"><img src="skin/header_center.gif" title="Stará Krč - Historie městské části Praha-Krč" alt="Stará Krč - Historie městské části Praha-Krč" height="125" border="0" /></a>
      <img src="skin/header_right.jpg" title="Stará Krč" alt="Stará Krč" height="125" />
     </div>   
        <? if (!empty($_SESSION["user_name"])) { ?>
         <div class="login"><em>Jste přihlášen jako <strong><?=$_SESSION["user_name"];?></strong></em>&nbsp;<a href="index.php?page=login&amp;action=logout" target="_self" class="footer">[ODHLÁSIT]</a></div>
        <? } ?>
        
    </div>
    <? /* PAGE HEADER */ ?>
    
    <? /* PAGE CONTENT */ ?>
    <div id="div_content">
    
     <? /* PAGE MENU */ ?>
     <div id="div_menu">
       <div class="menu_row">
         <a href="index.php?page=main"><img src="skin/new_menu_index.png" title="Index" alt="Index" border="0" /></a>
         <a href="index.php?page=articles"><img src="skin/new_menu_articles.png" title="Texty" alt="Texty" border="0" /></a>
         <a href="index.php?page=gallery"><img src="skin/new_menu_gallery.png" title="Galerie" alt="Galerie" border="0" /></a>
         <a href="index.php?page=books"><img src="skin/new_menu_books.png" title="Knihy" alt="Knihy" border="0" /></a>
         <a href="index.php?page=contact"><img src="skin/new_menu_contact.png" title="Kontakt" alt="Kontakt" border="0" /></a>
         <a href="index.php?page=links"><img src="skin/new_menu_links.png" title="Odkazy" alt="Odkazy" border="0" /></a>
       </div>
     </div>
     <? /* PAGE MENU */ ?>
     
     <? /* PAGE ITSELF */ ?>
     <div id="div_page">
       <hr />
      
       <div id="div_contents_body">
         <?php
          // switch content according to the page selection
          // pages are stored in independend php files which are called here
          include $page.'.php';
         ?>
       </div>
      
       <hr />
       
       <? /* COMMERCIALS + counters */ ?>
       <div id="div_contents_bottom">
       
       <a href="http://svobodnatv.cz" title="Reklama - Svobodná TV"><img alt="Svobodná TV" height="31" src="/thumbs/bar_tv.png" width="88" /></a> 
       <a href="http://praha4.svobodni.cz" title="Reklama - Svobodní Praha 4"><img alt="Svobodní Praha 4" height="31" src="/thumbs/bar_p4.png" width="88" /></a> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="http://www.toplist.cz/" target="_top">
         <script language="JavaScript">
         </script>
         <noscript>
           <img SRC="http://toplist.cz/count.asp?logo=counter&start=1723&ID=vašeID" border="0" alt="TOPlist"  width="88" height="31">
         </noscript>
       </a>
       <a href="http://www.toplist.cz/stat/1445867" target="_top"><img src="http://toplist.cz/count.asp?id=1445867&amp;start=3529&amp;logo=mc" border="0" alt="TOPlist" width="88" height="60"/></a>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="http://praha4.svobodni.cz" title="Reklama - Svobodní Praha 4"><img alt="Svobodní Praha 4" height="31" src="/thumbs/bar_p4.png" width="88" /></a> 
       <a href="http://svobodnatv.cz" title="Reklama - Svobodná TV"><img alt="Svobodná TV" height="31" src="/thumbs/bar_tv.png" width="88" /></a> 
       
       </div>
       
     </div>
     <? /* PAGE ITSELF */ ?>
    
    </div>
    <? /* PAGE CONTENT */ ?>
    
    <? /* PAGE FOOTER */ ?>
    <div id="div_footer">
     <p class="footer">
      Stará Krč - Historie městské části Praha-Krč
      <div class="footer_font_small">Obsah © <a href="mailto:rakcesa@seznam.cz" class="footer"><strong>Anton Sečkár</strong></a> a <a href="mailto:ellrohir@seznam.cz" class="footer"><strong>Alois Sečkár</strong></a></div>
      <div class="footer_font_tiny">Web v2.2.02 © <a href="http://ellrohir.xf.cz" target="_blank" class="footer">Ellrohir</a> 2010-2014</div>
      <div class="footer_font_tiny">Zde zveřejněné obrázky pocházejí ze soukromé sbírky. Texty jsou dílem autorů stránek. Pro jejich další uživání pro jinou než osobní potřebu je třeba mít písemný souhlas majitelů.</div>
     </p>
    </div>
    <? /* PAGE FOOTER */ ?>
   </div>
   <? /* PAGE BODY */ ?>
   
  </body>
</html>