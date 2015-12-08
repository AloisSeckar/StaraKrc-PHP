<?php
///////////////////////////////////////////////////////////////////////
//                                                                   //
//                             STARÁ KRČ                             //
//                  Historie městské části Praha-Krč                 //
//                                                                   //
//                   Copyright © Ellrohir 2010-2014                  // 
//                                                                   //
//                                                                   //
//    Page Info                                                      //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// *  Author:         *  Ellrohir [ ellrohir@seznam.cz ]           * //
// *  Homepage:       *  http://ellrohir.mzf.cz                    * //
// *  File:           *  links.php                                 * //
// *  Purpose:        *  Links to other sites                      * //
// *  System Version: *  2.2                                       * //
// *  Last Modified:  *  2014-03-03 1653 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<div id="div_body">
 
 <? /* EXISTING LINKS */ ?>
 
 <table class="links-tab">
 
 <?php
  // select links categories
  $result = $mysqli->query("SELECT id, name FROM elrh_links_cat ORDER BY ord");
  while ($cat_info = $result->fetch_array()) { ?>
    <tr><th class="links-header" colspan="2"><? echo $cat_info["name"];?></th></tr>
    <?php
     // select relevant links
     $result2 = $mysqli->query("SELECT name, dscr, url, thumb FROM elrh_links WHERE cat='".$cat_info["id"]."' ORDER BY ord");
     while ($link_info = $result2->fetch_array()) { ?>
      <tr>
       <td>
        <a href="<? echo $link_info["url"];?>" target="_blank" title="<? echo $link_info["name"];?>"><img src="<? echo $link_info["thumb"];?>" alt="<? echo $link_info["name"];?>" width="100" height="75" border="1" /></a>
       </td>
       <td class="links">
        <strong><a href="<? echo $link_info["url"];?>" target="_blank" title="<? echo $link_info["name"];?>"><? echo $link_info["name"];?></a></strong><br />
        <? echo $link_info["dscr"];?>
       </td>
      </tr>
     <?
     } // end of "for each link"
  } // end of "for each cat"
 ?>
 
 </table>
 
</div>