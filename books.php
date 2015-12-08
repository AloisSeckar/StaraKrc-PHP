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
// *  File:           *  books.php                                 * //
// *  Purpose:        *  Info about relevant books                 * //
// *  System Version: *  2.2.02                                    * //
// *  Last Modified:  *  2014-10-16 2038 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

 <div id="div_body">
 
 <? /* EXISTING BOOKS */ ?>
 <table class="links-tab">
 
 <?php
  // select books categories
  $result = $mysqli->query("SELECT id, name FROM elrh_books_cat ORDER BY ord");
  while ($cat_info = $result->fetch_array()) { ?>
    <tr><th class="links-header" colspan="2"><? echo $cat_info["name"];?></th></tr>
    <?php
     // select relevant books
     $result2 = $mysqli->query("SELECT name, writer, year, dscr, url, thumb, review, review_ext FROM elrh_books WHERE cat='".$cat_info["id"]."' ORDER BY ord");
     while ($book_info = $result2->fetch_array()) { ?>
      <tr>
       <td style="padding-right: 5px;">
        <? if ($book_info["url"]!="") { ?>
         <a href="<? echo $book_info["url"];?>" target="_blank" title="<? echo $book_info["name"];?>"><img src="<? echo $book_info["thumb"];?>" alt="<? echo $book_info["name"];?>" width="75" height="100" border="1" /></a>
        <? } else { ?>
         <img src="<? echo $book_info["thumb"];?>" alt="<? echo $book_info["name"];?>" width="75" height="100" border="1" />
        <? } ?>
       </td>
       <td class="links">
        <div style="margin: 0px; padding-bottom; 7px;  font-size: 16px; font-weight: bold;">
         <? if ($book_info["url"]!="") { ?>
          <a href="<? echo $book_info["url"];?>" target="_blank" title="<? echo $book_info["name"];?>"><? echo $book_info["name"];?></a>
         <? } else { ?>
          <? echo $book_info["name"];?>
         <? } ?>
        </div>
        <div style="margin: 0px; padding-top: 3px; padding-bottom; 3px;  font-size: 13px; font-style: italic;"><? echo $book_info["writer"];?>, <strong><? echo $book_info["year"];?></strong>
        <? if ($book_info["review"]>0) { ?>
        &nbsp;<a href="index.php?page=articles&amp;aid=<?=$book_info["review"];?>">Recenze</a> 
        <? } ?>
        <? if ($book_info["review_ext"]!="") { ?>
        &nbsp;[<a href="<?=$book_info["review_ext"];?>">Externí recenze</a>]
        <? } ?></div>
        <div style="margin: 0px; padding-top: 3px; font-size: 13px;"><? echo $book_info["dscr"];?></div>

       </td>
      </tr>
     <?
     } // end of "for each book"
    ?>
  <?
  } // end of "for each cat"
  ?>
 
  </table>
</div>
