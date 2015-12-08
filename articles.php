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
// *  File:           *  articles.php                              * //
// *  Purpose:        *  Articles section                          * //
// *  System Version: *  2.2                                       * //
// *  Last Modified:  *  2014-03-02 2037 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<div id="div_body">
 
 <? /* EXISTING ARTICLES */ ?>
  <?
   // check if user doesn't want to see article detail
   if (!empty($_GET["aid"]))
    $aid = $_GET["aid"];
   else
    $aid = "none";
    
   if ($aid != "none")
   {
    // show 1 specific article
    
    // possible article update
    if (($action=="update")&&(!empty($_SESSION["user_name"])))
    {
     // get values
      // article name
      if (!empty($_POST["elrh_article_ename"]))
       $update = "name='".$_POST["elrh_article_ename"]."'";
      else
       $update = '';
      // article dscr 
      if (!empty($_POST["elrh_article_edscr"]))
      {
       if ($update!='')
        $update .= ", dscr='".$_POST["elrh_article_edscr"]."'";
       else
        $update .= "dscr='".$_POST["elrh_article_edscr"]."'";
      }
      else
       $update = '';
      // article content
      if (!empty($_POST["elrh_article_econtent"]))
      {
       if ($update!='')
        $update .= ", content='".$_POST["elrh_article_econtent"]."'";
       else
        $update = "content='".$_POST["elrh_article_econtent"]."'";
      } 
      else
       $update = '';
      // article gallery
      if (!empty($_POST["elrh_article_egallery"]))
      {
       if ($update!='')
        $update .= ", gallery='".$_POST["elrh_article_egallery"]."'";
       else
        $update = "gallery='".$_POST["elrh_article_egallery"]."'";
      }
      else
       $update = '';
       
     // try to update
     $result = $mysqli->query("UPDATE elrh_articles SET ".$update." WHERE id='".$aid."'");
    } // possible article update
    
    // get specific article from db
    $result = $mysqli->query("SELECT * FROM elrh_articles WHERE id='".$aid."'");
    if ($result->num_rows>0)
    {
     $article_info = $result->fetch_array();
     
     ?>
      <h1><?=$article_info["name"];?>
      <? if (!empty($_SESSION["user_name"])) { ?>
       &nbsp;<font size="2"><a href="index.php?page=articles&amp;action=edit&amp;aid=<?=$article_info["id"];?>#articles"><b>E</b></a></font>
       &nbsp;<font size="2"><a href="index.php?page=articles&amp;action=delete&amp;id=<?=$article_info["id"];?>"><b>X</b></a></font>
      <? } ?></h1>
      
      <p class="article_info">
       <strong>Napsal:</strong> 
        <?
         if ($article_info["author"]=="ellrohir") {
          echo "Alois Sečkár";
         } elseif ($article_info["author"]=="rakcesa") {
          echo "Anton Sečkár";
         } elseif ($article_info["author"]=="folgore") {
          echo "Antonín Sečkár";
         } else {
          echo "???";
         }
        ?><br />
       <strong>Kategorie:</strong> <?=$article_info["cat"];?><br />
       <strong>Publikováno:</strong> <?=$article_info["posted"];?>
      </p>
      
      <? if (($action=="edit")&&(!empty($_SESSION["user_name"]))) { ?>
        <hr />
        <form action="index.php?page=articles&amp;aid=<?=$article_info["id"];?>&amp;action=update#articles" method="post">
         <table align="center">
          <tr>
           <td align="left">
            <b>Název článku:</b><br />
            <font size="2">(Povinné)</font>
           </td>
           <td width="5"> </td>
           <td aligh="right">
            <input type="text" name="elrh_article_ename" size="46" maxlength="100" value="<?=$article_info["name"];?>" />
           </td>
          </tr>
          <tr>
           <td align="left">
            <b>Popis článku:</b><br />
            <font size="2">(Povinné)</font>
           </td>
           <td width="5"> </td>
           <td aligh="right">
            <input type="text" name="elrh_article_edscr" size="46" maxlength="255" value="<?=$article_info["dscr"];?>" />
           </td>
          </tr>
          <tr>
           <td align="left">
            <b>Text článku:</b><br />
            <font size="2">(Povinné)</font>
           </td>
           <td width="5"> </td>
           <td aligh="right">
            <textarea name="elrh_article_econtent" cols="35" rows="25"><?=$article_info["content"];?></textarea>
           </td>
          </tr>  
          <tr>
           <td align="left">
            <b>Související galerie:</b><br />
            <font size="2">(Povinné)</font>
           </td>
           <td width="5"> </td>
           <td aligh="right">
            <select name="elrh_article_egallery" style="width: 305px;">
             <?
              // get galleries from db
              $result = $mysqli->query("SELECT id, name FROM elrh_gallery_galleries ORDER BY name");
              if ($result->num_rows>0)
              {
               ?>
                <option value="0">-----</option>
               <?
               while ($gallery_info = $result->fetch_array())
               {
                ?>
                 <option value="<?=$gallery_info["id"];?>" <? if ($gallery_info["id"]==$article_info["gallery"]) echo 'selected="selected"';?>><?=$gallery_info["name"];?></option>
                <?
               }
              } // there are galleries
              else
              {
               ?>
                <option value="0">Neexistují žádné galerie</option>
               <?
              } // there are no galleries
             ?>
            </select>
           </td>
          </tr>
          <tr>
           <td colspan="3" height="5"></td>
          </tr>
          <tr>
           <td colspan="3" align="center">
            <input type="submit" name="elrh_send_image" value="Upravit" />
           </td>
          </tr>
         </table>
        </form>
      <? } else { ?>
      
        
        <div class="article">
          <?=$article_info["content"];?>
        </div>
      <? } ?>
      
        <hr />
        
        <?
         $result = $mysqli->query("SELECT name, images FROM elrh_gallery_galleries WHERE id='".$article_info["gallery"]."'");
         if ($result->num_rows>0) {
         $gallery_info = $result->fetch_array();
        ?>
        <font size="3"><b>S článkem je spojena následující galerie obrázků:</b> <a href="index.php?page=gallery&amp;gid=<?=$article_info["gallery"];?>#gallery" target="_self"><?=$gallery_info["name"];?></a> <i>(<?=$gallery_info["images"];?> obrázků)</i></font>
        <?
         } else {
        ?>
        <font size="3"><b><i>S článkem není spojena žádná galerie obrázků.</i></b></font>
        <?
         }
        ?>
    
        <hr />


        <font class="font_content"><b>Komentáře k článku:</b></font>
        <font style="font-size: 10px;"><br /><br /></font>
        <div style="background-color: white; width: 770px; padding: 10px;">
         <div class="fb-comments" data-href="http://www.krc-historie.cz/index.php?page=articles&amp;id=<?=$article_info["id"];?>" data-num-posts="5" data-width="770"></div>  
        </div>

      <?
    } // matching article found
    else
    {
     ?>
       <i>Zadané ID neodpovídá žádnému článku...</i>
       
     <?
    } // matching article not found
    
    ?>
      <hr />
      <a href="index.php?page=gallery&amp;gid=<?=$article_info["gallery"];?>#gallery" target="_self">Přejít na související galerii</a></i><br />
      <a href="index.php?page=articles#articles" target="_self">Zpět na index článků</a></i>
    <?
   } // reading specific article
   else
   {
    // show all articles index
    
    ?>
    
    <h1>TEXTY</h1>
    
    <table>
     <tr>
      <th>Datum</th>
      <th>Kategorie</th>
      <th>Článek</th>
      <th>Autor</th>
      <th>Galerie</th>
     </tr>
     <tr>
      <td colspan="5" style="height: 5px;"></td>
     </tr>
    
    <?
    
    // get all articles from db
    $result = $mysqli->query("SELECT * FROM elrh_articles ORDER BY posted DESC");
    if ($result->num_rows>0)
    {
     while ($article_info = $result->fetch_array())
     {
      ?>
      <tr>
       <td align="center">
        <div class="font_table_small"><?=$article_info["posted"];?></font>
       </td>
       <td align="center">
        <div class="font_table_small"><?=$article_info["cat"];?></div>
       </td>
       <td>
        <div class="font_table_normal">
        <strong>
         <?=$article_info["name"];?>
          <? if (!empty($_SESSION["user_name"])) { ?>
          &nbsp;<font size="2"><a href="index.php?page=articles&amp;action=edit&amp;aid=<?=$article_info["id"];?>"><b>E</b></a></font>
          &nbsp;<font size="2"><a href="index.php?page=articles&amp;action=delete&amp;id=<?=$article_info["id"];?>"><b>X</b></a></font>
          <? } ?>
        </strong>
        <br />
        <font size="2"><i><?=$article_info["dscr"];?></i>
        <br />
        <a href="index.php?page=articles&amp;aid=<?=$article_info["id"];?>#articles" target="_self">[číst článek]</a></font>      
       </td>
       <td align="center">
        <div class="font_table_small">
        <?
         if ($article_info["author"]=="ellrohir") {
          echo "Alois Sečkár";
         } elseif ($article_info["author"]=="rakcesa") {
          echo "Anton Sečkár";
         } elseif ($article_info["author"]=="folgore") {
          echo "Antonín Sečkár";
         } else {
          echo "???";
         }
        ?>
        </div>
       </td>
       <td align="center">
        <?
         // related gallery
         $result2 = $mysqli->query("SELECT id, name FROM elrh_gallery_galleries WHERE id='".$article_info["gallery"]."'");
         if ($result2->num_rows>0) // in there is related gallery
         {
          $gallery_info = $result2->fetch_array();
          echo '<a href="index.php?page=gallery&amp;gid='.$gallery_info["id"].'"><img src="/skin/image_gallery.png" title="'.$gallery_info["name"].'" alt="'.$gallery_info["name"].'" border="0" /></a>';
         } else { 
          echo '<img src="/skin/image_no_gallery.png" title="Žádná" alt="Žádná" border="0" />';
         } 
        ?>
       </td>
      </tr>
      <?
     } // for each article
    } // there are articles
    else
    { 
     ?>
       <tr><td colspan="5"><i>Zatím žádné články...</i></td></tr>
    <? }// there are no articles ?>
    
    
    </table>
    
   <? } // show all articles index ?>
</div>