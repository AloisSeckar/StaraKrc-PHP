<?php
///////////////////////////////////////////////////////////////////////
//                                                                   //
//                             STARÁ KRČ                             //
//                  Historie městské části Praha-Krč                 //
//                                                                   //
//                   Copyright © Ellrohir 2010-2012                  // 
//                                                                   //
//                                                                   //
//    Page Info                                                      //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// *  Author:         *  Ellrohir [ ellrohir@seznam.cz ]           * //
// *  Homepage:       *  http://ellrohir.mzf.cz                    * //
// *  File:           *  interactive_map.php                       * //
// *  Purpose:        *  Map of Krč                                * //
// *  System Version: *  2.0                                       * //
// *  Last Modified:  *  2012-12-15 1445 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////

// DB CONNECTION //
$ControlConnection = @MySQL_Connect("wm27.wedos.net","w33148_krc","jssLbD6d");
if ($ControlConnection) {
 $ControlConnection = @MySQL_Select_DB("d33148_krc");
}
if ($ControlConnection) {
 $ControlConnection = @MySQL_Query("SET NAMES 'utf8'");
}
// DB CONNECTION //

// get all map locations
$map_locations = @MySQL_Query("SELECT * FROM elrh_map");
//
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
   <title>Stará Krč - Interaktivní mapa</title>
   <meta name="description" content="Stará Krč - Historie městské části Praha-Krč" />
   <meta name="keywords" content="Stará, Krč, Praha, Historie, Městká, Část, Pohledy, Sbírka, Historické, Fotografie, Fotky, Mapa" />
   <meta name="generator" content="PSPad editor, www.pspad.com">
   <link rel="stylesheet" type="text/css" href="skin/skin3.css" />
   <link rel="icon" type="image/png" href="icon.png" />
  </head>
  <body class="background">
   <div class="div_header">
    <div class="header_text"><font size="3"><b><i>Klikněte na místo v mapě pro zobrazení související galerie</i></b></font></div>
   </div>
   <div class="div_content">
    <table align="center">
     <tr>
      <td>
       <div class="bgbox">
        <?
         // display all found map locations
         // transparent gif images with assigned url link to gallery
         while ($map_data = @MySQL_Fetch_Array($map_locations))
          echo '<a href="http://krc-historie.cz/index.php?page=gallery&gid='.$map_data["gallery"].'#gallery" target="_blank"><img style="position: absolute; left:'.$map_data["left"].'px; top:'.$map_data["top"].'px;" src="map_pointer.gif" title="'.$map_data["name"].'" alt="'.$map_data["name"].'" height="'.$map_data["size"].'" width="'.$map_data["size"].'" border="0" /></a>';
        ?>
       </div>
      </td>
     </tr>
    </table> 
   </div>
   <div class="div_footer">
    <div class="footer_text"><font size="1"><a href="http://krc-historie.cz/index.php" target="_blank" class="footer">Stará Krč</a> © <a href="http://ellrohir.mzf.cz" target="_blank" class="footer">Ellrohir</a> 2010-2012<br /></font></div>
   </div>
  </body>
</html>
