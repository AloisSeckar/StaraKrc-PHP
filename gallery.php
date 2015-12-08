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
// *  File:           *  gallery.php                               * //
// *  Purpose:        *  Image gallery                             * //
// *  System Version: *  2.2                                       * //
// *  Last Modified:  *  2014-03-26 1650 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////


// interactive gallery link
?>
<a href="interactive/interactive_map.php" target="_blank" class="footer"><font size="5"><b><i>INTERAKTIVNÍ MAPA STARÉ KRČE</i></b></font></a>
<?

// get possible action
// (some actions are public, some private)
if (!empty($_GET["action"]))
 $action = $_GET["action"];
else
 $action = "none";


if (!empty($_SESSION["user_name"])) 
 {  
  // handle actions 
  if ($action == "add_gallery")
  {
   // get send values
    // gallery name
    if (!empty($_POST["elrh_gallery_name"]))
     $elrh_gallery_name = $_POST["elrh_gallery_name"];
    else
     $error_message_g = 'Název galerie je povinný údaj!';
    // gallery dscr 
    if (!empty($_POST["elrh_gallery_dscr"]))
     $elrh_gallery_dscr = $_POST["elrh_gallery_dscr"];
    else
     $error_message_g = 'Popis galerie je povinný údaj!';
    // gallery parent
    if (!empty($_POST["elrh_gallery_parent"]))
     $elrh_gallery_parent = $_POST["elrh_gallery_parent"];
    else
     $elrh_gallery_parent = '0';
     
  // processing
   if (empty($error_message_g))
   {
    // insert new gallery into db
    $sql = $mysqli->query("INSERT INTO elrh_gallery_galleries (parent, author, created, name, dscr) VALUES ('".$elrh_gallery_parent."', '".$_SESSION["user_name"]."', Now(), '".$elrh_gallery_name."', '".$elrh_gallery_dscr."')");
    // insert info about the gallery for main page news
    // OBSOLETE
    // if ($sql)
    // $sql = $mysqli->query("INSERT INTO elrh_actions (date, action) VALUES (Now(), 'Založena nová <b>galerie</b>')");
    //
    if ($sql)
    {
     $ok_message_g = 'Galerie založena'; 
     //
     $elrh_gallery_name = "";
     $elrh_gallery_dscr = "";
     $elrh_gallery_parent = "";
    }
    else
     $error_message_g = 'Nepodařilo se založit novou galerii!';
   } // all ok
  }
  elseif ($action == "add_image")
  {
   // get send values
    // image name
    if (!empty($_POST["elrh_image_name"]))
     $elrh_image_name = $_POST["elrh_image_name"];
    else
     $error_message_i = 'Název obrázku je povinný údaj!';
    // image dscr 
    if (!empty($_POST["elrh_image_dscr"]))
     $elrh_image_dscr = $_POST["elrh_image_dscr"];
    else
     $elrh_image_dscr = '';
    // image gallery
    if (!empty($_POST["elrh_image_gallery"]))
    {
     // first check if gallery exists
     $result = $mysqli->query("SELECT images, last FROM elrh_gallery_galleries WHERE id='".$_POST["elrh_image_gallery"]."'");
     if ($result->num_rows>0)
     {
      $elrh_image_gallery = $_POST["elrh_image_gallery"];
      // get values for later use (spare db query)
      $gallery_info = $result->fetch_array();
     }
     else
      $error_message_i = 'Neplatné umístění obrázku (neexistující galerie)!'; 
    }
    else
     $error_message_i = 'Umístění obrázku je povinný údaj!';  
     
   // process the file
   //echo implode(", ", $_FILES["db_img"]);

   if (empty($error_message_i))
   {
    if (!empty($_FILES["db_img"]["name"]))
    {
     if (($_FILES["db_img"]["type"]=="image/jpeg")||($_FILES["db_img"]["type"]=="image/pjpeg")||($_FILES["db_img"]["type"]=="image/gif")||($_FILES["db_img"]["type"]=="image/x-png")||($_FILES["db_img"]["type"]=="image/png"))
     {
      if (($_FILES["db_img"]["type"]=="image/jpeg")||($_FILES["db_img"]["type"]=="image/pjpeg")) $ext = ".jpg";
      elseif ($_FILES["db_img"]["type"]=="image/gif") $ext = ".gif";
      else $ext = ".png";
      //
      $dest = "./gallery/".Time().$ext;
      if (!@move_uploaded_file($_FILES["db_img"]["tmp_name"],$dest))
      {
        $error_message_i = 'Nepodařilo se umístit obrázek na server!';
      }
      $elrh_image_image = $dest;
     }
     else
      $error_message_i = 'Neplatný soubor obrázku (povoleno .jpg, .gif a .png)!';
    }
    else
     $error_message_i = 'Nenahrán žádný obrázek!';
   }
    
   // processing
   if (empty($error_message_i))
   {
    // insert image into db
     // get next order index
     $result = $mysqli->query("SELECT ord FROM elrh_gallery_images WHERE id='".$gallery_info["last"]."'"); // get order of last image
     $ord_info = $result->fetch_array();
     $ord = $ord_info["ord"] + 1;
    $result = $mysqli->query("INSERT INTO elrh_gallery_images (author, created, gallery, ord, name, dscr, image, prev) VALUES ('".$_SESSION["user_name"]."', Now(), '".$elrh_image_gallery."', '".$ord."', '".$elrh_image_name."', '".$elrh_image_dscr."', '".$elrh_image_image."', '".$gallery_info["last"]."')");
    // update parent gallery
     // get currently inserted image id
     $result = $mysqli->query("SELECT id FROM elrh_gallery_images ORDER BY created DESC LIMIT 1");
     $image_data = $result->fetch_array();
     // update number of images
     $images = $gallery_info["images"] + 1;
     // exectute sql
     $result = $mysqli->query("UPDATE elrh_gallery_galleries SET images='".$images."', last='".$image_data["id"]."' WHERE id='".$elrh_image_gallery."'");
    // update previously last image in gallery (relink)
    if ($result)
     $result = $mysqli->query("UPDATE elrh_gallery_images SET next='".$image_data["id"]."' WHERE id='".$gallery_info["last"]."'");
    // insert info about the image for main page news
    // OBSOLETE
    // if ($sql)
    //  $sql = $mysqli->query("INSERT INTO elrh_actions (date, action) VALUES (Now(), 'Nahrán nový <b>obrázek</b>')");
    //
    if ($result)
    {
     $ok_message_i = 'Obrázek nahrán'; 
     //
     $elrh_image_name = "";
     $elrh_image_dscr = "";
     $elrh_gallery_gallery = "0";
    }
    else
     $error_message_i = 'Chyba během nahrávání obrázku do databáze!';
   } // all ok
  }
  elseif ($action == "delete_gallery")
  {
   // get id
   if (!empty($_GET["id"]))
   {
    $id = $_GET["id"];
    
    // check gallery if containing images 
    $result = $mysqli->query("SELECT images FROM elrh_gallery_galleries WHERE id='".$id."'");
    $gallery_data = $result->fetch_array();
    
    // delete possible only if target gallery is empty
    if ($gallery_data["images"]<1)
    {
     // and now check if there still aren't any "child" galleries
     $result = $mysqli->query("SELECT id FROM elrh_gallery_galleries WHERE parent='".$id."'");
     
     // delete possible only if target gallery isnt parent to any other gallery
     if ($result->num_rows<1)
     {
      // simply delete - if id doesnt match, who cares?
      $sql = $mysqli->query("DELETE FROM elrh_gallery_galleries WHERE id='".$id."'");
      // insert info about the delete action for main page news
      // OBSOLETE
      //
      // if ($sql)
      //  $sql = $mysqli->query("INSERT INTO elrh_actions (date, action) VALUES (Now(), 'Smazána galerie z databáze')");
      //
      if ($sql)
       $ok_message_g = 'Galerie smazána'; 
      else
       $error_message_g = 'Nepodařilo se smazat galerii z databáze!';
     } // gallery not parent
     else
      $error_message_g = 'Galerie obsahuje na podkategorie, proto ji nelze smazat!';
    } // gallery empty
    else
     $error_message_g = 'Galerie není prázdná, proto ji nelze smazat!';
   } // id set
   else
    $error_message_g = 'Nebylo zadáno ID galerie!';
  }
  elseif ($action == "delete_image")
  {
   // get id
   if (!empty($_GET["id"]))
   {
    $id = $_GET["id"];
    
    // get image url for possible file delete
    $result = $mysqli->query("SELECT * FROM elrh_gallery_images WHERE id='".$id."'");
    $image_data = $result->fetch_array();
    
     // simply delete from db - if id doesnt match, who cares?
     $sql = $mysqli->query("DELETE FROM elrh_gallery_images WHERE id='".$id."'");
     // delete image file itself - to save space
     if ($sql)
      unlink($image_data["image"]);
     // re-link prev and next images
     if ($sql)
     {
      $sql = $mysqli->query("UPDATE elrh_gallery_images SET next='".$image_data["next"]."' WHERE id='".$image_data["prev"]."'");
      $sql = $mysqli->query("UPDATE elrh_gallery_images SET prev='".$image_data["prev"]."' WHERE id='".$image_data["next"]."'");
      // note - possible zero doesn't matter
     }
     // repair gallery (number of images and possibly last image index)
     if ($sql)
     {
      // get number of images in gallery and update it
      $result = $mysqli->query("SELECT images FROM elrh_gallery_galleries WHERE id='".$image_data["gallery"]."'");
      $gallery_info = $result->fetch_array();
      $images = $gallery_info["images"] - 1;
      // update db (possibly repair last image index)
      if ($image_data["next"]=="0")
       // last image is being deleted now
       $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET images='".$images."', last='".$image_data["prev"]."' WHERE id='".$image_data["gallery"]."'");
      else
       // no change of last image
       $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET images='".$images."' WHERE id='".$image_data["gallery"]."'");
     }
     // recount order of images that are possibly behind deleted image in the gallery
     // otherwise there could be mess in displaying order soon...
     if ($sql)
     {
      $result = $mysqli->query("SELECT id, ord FROM elrh_gallery_images WHERE gallery='".$image_data["gallery"]."' AND ord>'".$image_data["ord"]."'");
      while ($repaired = $result->fetch_array()) {
       $new_order = $repaired["ord"] - 1;
       $sql2 = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$new_order."' WHERE id='".$repaired["id"]."'");
      }
     }
     // insert info about the delete action for main page news
     // OBSOLETE
     // if ($sql)
     //  $sql = $mysqli->query("INSERT INTO elrh_actions (date, action) VALUES (Now(), 'Smazán obrázek z databáze')");
     //
     if (($sql)&&($sql2))
      $ok_message_i = 'Obrázek smazán'; 
     else
      $error_message_i = 'Nepodařilo se korektně smazat obrázek z databáze!';
   } // id set
   else
    $error_message_i = 'Nebylo zadáno ID obrázku!';
  }
  elseif ($action == "move_image_forwards")
  {
   // get id
   if (!empty($_GET["iid"]))
   {
    $id = $_GET["iid"];
    
    // get moved image info
    $result = $mysqli->query("SELECT gallery, ord, prev, next FROM elrh_gallery_images WHERE id='".$id."'");
    
    // test match
    if ($result->num_rows>0)
    {
     // get data
     $image_data = $result->fetch_array(); 
     
     // test if image isnt first (there is nowhere to move more forwards...)
     if ($image_data["prev"]!="0")
     {
      $sql = true;
      
      // check if image is last (because then parent gallery must be updated - prev image will be new last)
      if ($image_data["next"]=="0")
       $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET last='".$image_data["prev"]."' WHERE id='".$image_data["gallery"]."'");
       
      // get info from "prev" image (for relinking)
      $result2 = $mysqli->query("SELECT prev FROM elrh_gallery_images WHERE id='".$image_data["prev"]."'"); 
      $prev_data = $result2->fetch_array(); 
      
      // move the image forwards
      $new_order = $image_data["ord"] - 1;
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$new_order."', prev='".$prev_data["prev"]."', next='".$image_data["prev"]."' WHERE id='".$id."'");
       
      // move "prev" image backwards
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$image_data["ord"]."', prev='".$id."', next='".$image_data["next"]."' WHERE id='".$image_data["prev"]."'");
      
      // relink "prev of prev" image to moved image
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET next='".$id."' WHERE id='".$prev_data["prev"]."'");
       
      // relink "next of moved image" to "prev of moved image"
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET prev='".$image_data["prev"]."' WHERE id='".$image_data["next"]."'");
       
       // evaluate
      if ($sql)
       $ok_message_i = 'Obrázek posunut dopředu'; 
      else
      $error_message_i = 'Nepodařilo se posunout obrázek dopředu!';
     } // not first image
     else
      $error_message_i = 'Obrázek je první v galerii - nelze ho přesunout dopředu...';
    } // id match
    else 
     $error_message_i = 'Zadané ID neodpovídá žádnému obrázku!';
   } // id set
   else
    $error_message_i = 'Nebylo zadáno ID obrázku!';
  }
  elseif ($action == "move_image_backwards")
  {
   // get id
   if (!empty($_GET["iid"]))
   {
    $id = $_GET["iid"];
    
    // get moved image info
    $result = $mysqli->query("SELECT gallery, ord, prev, next FROM elrh_gallery_images WHERE id='".$id."'");
    
    if ($sql) echo "<br />here 0";
    
    // test match
    if ($result->num_rows>0)
    {
     // get data
     $image_data = $result->fetch_array(); 
     
     // test if image isnt last (there is nowhere to move more backwards...)
     if ($image_data["next"]!="0")
     {
      $sql = true;
      
      // get info from "next" image (for relinking)
      $result2 = $mysqli->query("SELECT next FROM elrh_gallery_images WHERE id='".$image_data["next"]."'"); 
      $next_data = $result2->fetch_array(); 
      
      // check if the next image is last (because then parent gallery must be updated - current will be new last)
      if ($next_data["next"]=="0")  
       $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET last='".$id."' WHERE id='".$image_data["gallery"]."'");
      
      // move the image backwards
      $new_order = $image_data["ord"] + 1;
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$new_order."', prev='".$image_data["next"]."', next='".$next_data["next"]."' WHERE id='".$id."'");
       
      // move "next" image forwards
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$image_data["ord"]."', prev='".$image_data["prev"]."', next='".$id."' WHERE id='".$image_data["next"]."'");
      
      // relink "next of next" image to moved image
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET prev='".$id."' WHERE id='".$next_data["next"]."'");
       
      // relink "next of moved image" to "prev of moved image"
      if ($sql)
       $sql = $mysqli->query("UPDATE elrh_gallery_images SET next='".$image_data["next"]."' WHERE id='".$image_data["prev"]."'");
       
      // evaluate
      if ($sql)
       $ok_message_i = 'Obrázek posunut dozadu'; 
      else
      $error_message_i = 'Nepodařilo se posunout obrázek dozadu!';
     } // not first image
     else
      $error_message_i = 'Obrázek je poslední v galerii - nelze ho přesunout dozadu...';
    } // id match
    else 
     $error_message_i = 'Zadané ID neodpovídá žádnému obrázku!';
   } // id set
   else
    $error_message_i = 'Nebylo zadáno ID obrázku!';
  } // moving image one position backwards
  // handle actions 
  if ($action == "move_image")
  {
   // get send values
    // gallery where to move
    if (!empty($_POST["elrh_gallery_move"]))
     $elrh_gallery_move = $_POST["elrh_gallery_move"];
    else
     $error_message_i = 'Cílová galerie je povinný údaj!';
     
  // processing
   if (empty($error_message_i))
   {
    // get id
   if (!empty($_GET["iid"]))
   {
    $id = $_GET["iid"];
    
    // get moved image info
    $result = $mysqli->query("SELECT gallery, ord, prev, next FROM elrh_gallery_images WHERE id='".$id."'");
    
    // test match
    if ($result->num_rows>0)
    {
     // get image info
     $image_data = $result->fetch_array();
     
     // get old prev and next image (if any) and relink them to each other
     $sql = $mysqli->query("UPDATE elrh_gallery_images SET prev='".$image_data["prev"]."' WHERE id='".$image_data["next"]."'");
     $sql = $mysqli->query("UPDATE elrh_gallery_images SET next='".$image_data["next"]."' WHERE id='".$image_data["prev"]."'");
  
     // check if moved image wasn't last in old gallery - if yes, gallery needs to have last image updated
     // plus decrease number of images in old gallery
     if ($sql) {
      if ($image_data["next"]==0) {
       $last = ", last='".$image_data["prev"]."'";
      } else {
       $last = '';
      }
      // number of images
      $result = $mysqli->query("SELECT images FROM elrh_gallery_galleries WHERE id='".$image_data["gallery"]."'");
      $old_gallery_data = $result->fetch_array();
      $old_gallery_data["images"] = $old_gallery_data["images"]-1; // -1 image since now...
      // update
      $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET images='".$old_gallery_data["images"]."'".$last." WHERE id='".$image_data["gallery"]."'");
     }
     
     // get number of images + last image in new gallery
     $result = $mysqli->query("SELECT images, last FROM elrh_gallery_galleries WHERE id='".$elrh_gallery_move."'");
     $new_gallery_data = $result->fetch_array();
     $new_gallery_data["images"] = $new_gallery_data["images"]+1; // +1 image since now...
    
     // move image physically + change its prev and next - prev will be old last image, next will be 0
     // plus change its order - it will be last in new gallery
     if ($result) {
      $sql = $mysqli->query("UPDATE elrh_gallery_images SET gallery='".$elrh_gallery_move."', prev='".$new_gallery_data["last"]."', next='0', ord='".$new_gallery_data["images"]."' WHERE id='".$id."'");
     }
    
     // relink new prev image - now next image will be the moved one
     if ($sql) {
      $sql = $mysqli->query("UPDATE elrh_gallery_images SET next='".$id."' WHERE id='".$new_gallery_data["last"]."'");
     }
    
     // update new gallery - increase number of images + new last - the moved one
     if ($sql) {
      $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET images='".$new_gallery_data["images"]."', last='".$id."' WHERE id='".$elrh_gallery_move."'");
     }
     
     // recount order of images that are possibly behind moved image in the gallery
     // otherwise there could be mess in displaying order soon...
     if ($sql)
     {
      $result = $mysqli->query("SELECT id, ord FROM elrh_gallery_images WHERE gallery='".$image_data["gallery"]."' AND ord>'".$image_data["ord"]."'");
      while ($result->fetch_array()) {
       $new_order = $repaired["ord"] - 1;
       $sql2 = $mysqli->query("UPDATE elrh_gallery_images SET ord='".$new_order."' WHERE id='".$repaired["id"]."'");
      }
     }
    } // id match
    else 
     $error_message_i = 'Zadané ID neodpovídá žádnému obrázku!';
   } // id set
   else
    $error_message_i = 'Nebylo zadáno ID obrázku!';
    
    
    // evaluate
    if (($sql)&&($sql2))
    {
     $ok_message_i = 'Obrázek přesunut do vybrané galerie'; 
     //
     $elrh_gallery_move = 0;
    }
    else
     $error_message_i = 'Nepodařilo se korektně přesunout obrázek do vybrané galerie!';
   } // all ok
  }
  
  elseif ($action == "edit_gallery")
  {
   // get id
   if (!empty($_POST["gid"]))
   {
    $elrh_edit_gallery = $_POST["gid"];
    
     // get send values
      // gallery name
      if (!empty($_POST["elrh_egallery_name"]))
       $elrh_egallery_name = $_POST["elrh_egallery_name"];
      else
       $error_message_e = 'Název galerie je povinný údaj!';
      // gallery dscr 
      if (!empty($_POST["elrh_egallery_dscr"]))
       $elrh_egallery_dscr = $_POST["elrh_egallery_dscr"];
      else
       $error_message_e = 'Popis galerie je povinný údaj!';
     
    // processing
    if (empty($error_message_e))
    {
     $sql = $mysqli->query("UPDATE elrh_gallery_galleries SET name='".$elrh_egallery_name."', dscr='".$elrh_egallery_dscr."' WHERE id='".$elrh_edit_gallery."'");
     //
     if ($sql)
     {
      $ok_message_e = 'Galerie úspěšně zeditována'; 
     }
     else
      $error_message_e = 'Nepodařilo se editovat údaje!';
    }
   }
  } // editing gallery info
?>

 <br /><br />
 <div id="div_body">
  <h2>VYTVOŘIT GALERII</h2>
 
  <form action="index.php?page=gallery&amp;action=add_gallery" method="post">
   <table align="center">
    <? if (!empty($error_message_g)) { ?>
     <tr bgcolor="red">
      <td colspan="3" align="center">
       <?=$error_message_g;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } elseif (!empty($ok_message_g)) { ?>
     <tr bgcolor="green">
      <td colspan="3" align="center">
       <?=$ok_message_g;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } ?>
    <tr>
     <td align="left">
      <b>Jméno galerie:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="text" name="elrh_gallery_name" size="46" maxlength="100" value="<?=$elrh_gallery_name;?>" />
     </td>
    </tr>
    <tr>
     <td align="left">
      <b>Popis galerie:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <textarea name="elrh_gallery_dscr" cols="35" rows="5"><?=$elrh_gallery_dscr;?></textarea>
     </td>
    </tr>
    <tr>
     <td align="left">
      <font color="LightGrey">
       <b>Rodičovská galerie:</b><br />
       <font class="font_content">(Nepovinné)</font>
      </font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <select name="elrh_gallery_parent" style="width: 305px;">
       <?
        // get galleries from db
        $result = $mysqli->query("SELECT id, name, parent FROM elrh_gallery_galleries ORDER BY name");
        if ($result->num_rows>0)
        {
         ?>
          <option value="0">-----</option>
         <?
         while ($gallery_info = $result->fetch_array())
         {
          if ($gallery_info["name"]=="Dnešní stav") {
           $result2 = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$gallery_info["parent"]."'");
           $parent_info = $result2->fetch_array();
           $parent_name = " (".$parent_info["name"].")";
          } else {
           $parent_name = "";
          }
          ?>
           <option value="<?=$gallery_info["id"];?>" <? if ($gallery_info["id"]==$elrh_gallery_parent) echo 'selected="selected"';?>><?=$gallery_info["name"].$parent_name;?></option>
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
      <input type="submit" name="elrh_send_gallery" value="Vytvořit" />
     </td>
    </tr>
   </table>
  </form>
  
  <h2>EDITOVAT GALERII</h2>
  
  <? if ($action == "select_gallery") { 
  
  if (!empty($_POST["elrh_edit_gallery"]))
   $elrh_edit_gallery = $_POST["elrh_edit_gallery"];
  else 
   $error_message_e = "Nevybrána žádná galerie!!!";
  
  $result = $mysqli->query("SELECT name, dscr FROM elrh_gallery_galleries WHERE id='".$elrh_edit_gallery."'");
  $gallery_info = $result->fetch_array();
  ?>
  <form action="index.php?page=gallery&amp;action=edit_gallery&amp;gid=<?=$elrh_edit_gallery;?>" method="post">
   <table align="center">
    <? if (!empty($error_message_e)) { ?>
     <tr bgcolor="red">
      <td colspan="3" align="center">
       <?=$error_message_e;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } elseif (!empty($ok_message_e)) { ?>
     <tr bgcolor="green">
      <td colspan="3" align="center">
       <?=$ok_message_e;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } ?>
    <tr>
      <td colspan="3" align="center">
       <b>Vybraná galerie:</b> <a href="http://krc-historie.cz/index.php?page=gallery&gid=<?=$elrh_edit_gallery;?>#gallery"><?=$gallery_info["name"]?></a>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <tr>
     <td align="left">
      <b>Jméno galerie:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="text" name="elrh_egallery_name" size="46" maxlength="100" value="<?=$gallery_info["name"];?>" />
     </td>
    </tr>
    <tr>
     <td align="left">
      <b>Popis galerie:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <textarea name="elrh_image_dscr" cols="35" rows="5"><?=$gallery_info["dscr"];?></textarea>
     </td>
    </tr>
    <tr>
     <td colspan="3" height="5"></td>
    </tr>
    <tr>
     <td colspan="3" align="center">
      <input type="hidden" name="eid" value="<?=$elrh_edit_gallery;?>" />
      <input type="submit" name="elrh_send_gallery" value="Editovat" />
     </td>
    </tr>
   </table>
  </form>
  
  <? } else { ?>
  
  <form action="index.php?page=gallery&amp;action=select_gallery" method="post" enctype="multipart/form-data">
   <table align="center">
    <tr>
     <td colspan="3" align="center">
      <b>Vyberte galerii, kterou chcete editovat:</b><br />
      <select name="elrh_edit_gallery" style="width: 305px;">
       <?
        // get galleries from db
        $result = $mysqli->query("SELECT id, name, parent FROM elrh_gallery_galleries ORDER BY name");
        if ($result->num_rows>0)
        {
         ?>
          <option value="0">-----</option>
         <?
         while ($gallery_info = $result->fetch_array())
         {
          if ($gallery_info["name"]=="Dnešní stav") {
           $result2 = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$gallery_info["parent"]."'");
           $parent_info = $result2->fetch_array();
           $parent_name = " (".$parent_info["name"].")";
          } else {
           $parent_name = "";
          }
          ?>
           <option value="<?=$gallery_info["id"];?>" <? if ($gallery_info["id"]==$elrh_edit_gallery) echo 'selected="selected"';?>><?=$gallery_info["name"].$parent_name;?></option>
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
      <input type="submit" name="elrh_send_gallery" value="Vybrat" />
     </td>
    </tr>
   </table>
  </form>
  
  <? } ?>
  
  <h2>NAHRÁT OBRÁZEK</h2>
 
  <form action="index.php?page=gallery&amp;action=add_image" method="post" enctype="multipart/form-data">
   <table align="center">
    <? if (!empty($error_message_i)) { ?>
     <tr bgcolor="red">
      <td colspan="3" align="center">
       <?=$error_message_i;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } elseif (!empty($ok_message_i)) { ?>
     <tr bgcolor="green">
      <td colspan="3" align="center">
       <?=$ok_message_i;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } ?>
    <tr>
     <td align="left">
      <b>Název obrázku:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="text" name="elrh_image_name" size="46" maxlength="100" value="<?=$elrh_image_name;?>" />
     </td>
    </tr>
    <tr>
     <td align="left">
      <font color="LightGrey">
       <b>Popis obrázku:</b><br />
       <font class="font_content">(Nepovinné)</font>
      </font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <textarea name="elrh_image_dscr" cols="35" rows="5"><?=$elrh_image_dscr;?></textarea>
     </td>
    </tr>
    <tr>
     <td align="left">
      <b>Umístění obrázku:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <select name="elrh_image_gallery" style="width: 305px;">
       <?
        // get galleries from db
        $result = $mysqli->query("SELECT id, name, parent FROM elrh_gallery_galleries ORDER BY name");
        if ($result->num_rows>0)
        {
         ?>
          <option value="0">-----</option>
         <?
         while ($gallery_info = $result->fetch_array())
         {if ($gallery_info["name"]=="Dnešní stav") {
           $result2 = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$gallery_info["parent"]."'");
           $parent_info = $result2->fetch_array();
           $parent_name = " (".$parent_info["name"].")";
          } else {
           $parent_name = "";
          }
          ?>
           <option value="<?=$gallery_info["id"];?>" <? if ($gallery_info["id"]==$elrh_image_gallery) echo 'selected="selected"';?>><?=$gallery_info["name"].$parent_name;?></option>
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
     <td align="left">
      <b>Soubor obrázku:</b><br />
      <font class="font_content">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="file" name="db_img" size="34" />
     </td>
    </tr>
    <tr>
     <td colspan="3" height="5"></td>
    </tr>
    <tr>
     <td colspan="3" align="center">
      <input type="submit" name="elrh_send_image" value="Nahrát" />
     </td>
    </tr>
   </table>
  </form>
 
  <font style="font-size: 15px;"><br /><br /></font>
 </div>
<? } // user logged in ?>

<font style="font-size: 10px;"><br /><br /></font>

<a name="gallery"></a>
<div id="div_body">

 <? /* GALLERY CONTENT */ ?>
  <table align="center" width="800">
  <font style="font-size: 5px;"><br /></font>
  <?
   // check if user doesn't want to see any image detail
   if (!empty($_GET["iid"]))
    $iid = $_GET["iid"];
   else
    $iid = "none";
    
   // check if user doesn't want to see any gallery detail
   if (!empty($_GET["gid"]))
    $gid = $_GET["gid"];
   else
    $gid = "none";
    
   if ($iid != "none")
   {
    // show 1 specific image
    
    // possible image update
    if (($action=="update_image")&&(!empty($_SESSION["user_name"])))
    {
     // get values
      // image name
      if (!empty($_POST["elrh_image_name"]))
       $update_name = "name='".$_POST["elrh_image_name"]."', ";
      else
       $update_name = '';
      // image dscr 
      if (!empty($_POST["elrh_image_dscr"]))
       $elrh_image_dscr = $_POST["elrh_image_dscr"];
      else
       $elrh_image_dscr = '';
       
     // try to update
     if ($error_message=="")
      $sql = $mysqli->query("UPDATE elrh_gallery_images SET ".$update_name." dscr='".$elrh_image_dscr."' WHERE id='".$iid."'");
    } // possible image info update
    
    // get specific image from db
    $result = $mysqli->query("SELECT * FROM elrh_gallery_images WHERE id='".$iid."'");
    if ($result->num_rows>0)
    {
     $image_info = $result->fetch_array();
     
     // link to prev image
     if ($image_info["prev"]!=0)
      $content .= '<a href="index.php?page=gallery&amp;iid='.$image_info["prev"].'#gallery"><img src="skin/image_prev.gif" alt="Předchozí" title="Předchozí" border="0" height="16" /></a>';
     else
      $content .= '<img src="skin/image_prev_none.gif" alt="Předchozí" title="Předchozí" border="0" height="16" />';
     $content .= '&nbsp;';
     // link to gallery
     $content .= '<a href="index.php?page=gallery&amp;gid='.$image_info["gallery"].'#gallery"><img src="skin/image_home.gif" alt="Galerie" title="Galerie" border="0" height="16" /></a>';
     $content .= '&nbsp;';
     // link to next image
     if ($image_info["next"]!=0)
      $content .= '<a href="index.php?page=gallery&amp;iid='.$image_info["next"].'#gallery"><img src="skin/image_next.gif" alt="Následující" title="Následující" border="0" height="16" /></a>';
     else 
      $content .= '<img src="skin/image_next_none.gif" alt="Následující" title="Následující" border="0" height="16" />';  
     //  
     
     // link for moving image forwards (registered only)
        if (!empty($_SESSION["user_name"]))
        {
         if ($image_info["prev"]!=0)
          $content2 = '<a href="index.php?page=gallery&amp;action=move_image_forwards&amp;iid='.$iid.'"><img src="skin/image_backward.gif" title="Posunout dopředu" alt="Posunout dopředu" border="0" height="16" /></a>';
         else
          $content2 = '<img src="skin/image_prev_none.gif" alt="Posunout dopředu" title="Posunout dopředu" border="0" height="16" />';
         //$content2 .= '&nbsp;&nbsp;';
        }
        else $content2 = '';
        
     // link for moving image backwards (registered only)
        if (!empty($_SESSION["user_name"]))
        {
         //$content3 = '&nbsp;&nbsp;';
         if ($image_info["next"]!=0)
          $content3 .= '<a href="index.php?page=gallery&amp;action=move_image_backwards&amp;iid='.$iid.'"><img src="skin/image_forward.gif" title="Posunout dozadu" alt="Posunout dozadu" border="0" height="16" /></a>';
         else
          $content3 = '<img src="skin/image_next_none.gif" alt="Posunout dozadu" title="Posunout dozadu" border="0" height="16" />';
        }
        else $content3 = '';    
     ?>
      <tr>
       <td width="330">
        &nbsp;&nbsp;<font size="4"><b><?=$image_info["name"];?></b></font>&nbsp;
       </td>
       <td width="140" align="center">
        &nbsp;<?=$content2." ".$content." ".$content3;?>&nbsp;
       </td>
       <td width="330" align="right">
        &nbsp;<font size="1"><i><?//=$image_info["created"];?></i></font>
        <? if (!empty($_SESSION["user_name"])) { ?>
         &nbsp;<font class="font_content"><a href="index.php?page=gallery&amp;action=delete_image&amp;id=<?=$image_info["id"];?>"><b>X</b></a></font>
        <? } ?>
        &nbsp;&nbsp;
       </td>
      </tr>
      <tr>
       <td colspan="3" align="center">
        <hr />
        <?
         // get image dimensions
         $img_data = getImageSize($image_info["image"]);
         // resize only if needed (if wider than 800px
         if ($img_data[0]>800)
          $size_restriction .= 'width="800"';
         else
         $size_restriction = "";
        ?>
        <img src="<?=$image_info["image"];?>" title="<?=$image_info["name"];?>" alt="<?=$image_info["name"];?>" <?=$size_restriction;?> border="0" />
        <font style="font-size: 5px;"><br /><br /></font>
        
        <? if (($action=="edit_image")&&(!empty($_SESSION["user_name"]))) { ?>
        <form action="index.php?page=gallery&amp;iid=<?=$image_info["id"];?>&amp;action=update_image#gallery" method="post">
         <table align="center">
          <tr>
           <td align="left">
            <b>Název obrázku:</b><br />
            <font class="font_content">(Povinné)</font>
           </td>
           <td width="5"> </td>
           <td align="right">
            <input type="text" name="elrh_image_name" size="46" maxlength="100" value="<?=$image_info["name"];?>" />
           </td>
          </tr>
          <tr>
          <td align="left">
            <font color="LightGrey">
             <b>Popis obrázku:</b><br />
             <font class="font_content">(Nepovinné)</font>
            </font>
           </td>
           <td width="5"> </td>
           <td align="right">
            <textarea name="elrh_image_dscr" cols="35" rows="5"><?=$image_info["dscr"];?></textarea>
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
         <h4 style="margin: 0px;">
          <?=$image_info["name"];?>
          <? if (!empty($_SESSION["user_name"])) { ?>
           &nbsp;<a href="index.php?page=gallery&amp;iid=<?=$image_info["id"];?>&amp;action=edit_image#gallery"><b><i>E</i></b></a>
          <? } ?>
         </h4>
         <p style="text-align: justify; margin: 3px; padding-left: 10px; padding-right: 10px;"><font class="font_content"><i><?=$image_info["dscr"];?></i></font></p>
        <? } ?>
        <font style="font-size: 5px;"><br /><br /></font>
        <?
        // link for browsing (and possible moving (admins only)) images
        echo $content2." ".$content." ".$content3;
        // link for moving images between galleries (admins only)
        if (!empty($_SESSION["user_name"])) { ?>
         <form action="index.php?page=gallery&amp;iid=<?=$image_info["id"];?>&amp;action=move_image#gallery" method="post">
          <table align="center">
          <tr>
           <td>
            Přesunout obrázek do galerie:
           </td>
           <td>
            <select name="elrh_gallery_move" style="width: 305px;">
            <?
             // get galleries from db
             $result = $mysqli->query("SELECT id, name, parent FROM elrh_gallery_galleries ORDER BY name");
             if ($result->num_rows>0)
             {
              ?>
               <option value="0">-----</option>
              <?
              while ($gallery_info = $result->fetch_array())
              {
               if ($gallery_info["name"]=="Dnešní stav") {
               $result2 = $mysqli->query("SELECT name FROM elrh_gallery_galleries WHERE id='".$gallery_info["parent"]."'");
               $parent_info = $result2->fetch_array();
               $parent_name = " (".$parent_info["name"].")";
              } else {
               $parent_name = "";
              }
              ?>
               <option value="<?=$gallery_info["id"];?>" <? if ($gallery_info["id"]==$elrh_gallery_parent) echo 'selected="selected"';?>><?=$gallery_info["name"].$parent_name;?></option>
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
           <td>
            <input type="submit" name="move" value="Přesunout" />
           </td>
          </tr>
          </table>
         </form>
        <? } ?>
       </td>
      </tr>
      <tr>
       <td height="15"></td>
      </tr>
      <?
    } // matching image found
    else
    {
     ?>
     <tr>
      <td colspan="3" align="center">
       <i>Zadané ID neodpovídá žádnému obrázku... 
      </td>
     </tr>
     <tr>
      <td height="15"></td>
     </tr>
     <?
    } // matching image not found
    
    ?>
    <tr>
     <td colspan="3" align="center">
      <hr />
      <a href="index.php?page=gallery&amp;gid=<?=$image_info["gallery"];?>#gallery" target="_self">Zpět na galerii</a></i><br />
      <a href="index.php?page=gallery#gallery" target="_self">Zpět na index galerie</a></i>
     </td>
    </tr>
    <?
   } // showing specific image
   elseif ($gid != "none")
   {
    // show 1 specific gallery
    
    // get specific gallery from db
    $result = $mysqli->query("SELECT * FROM elrh_gallery_galleries WHERE id='".$gid."'");
    if ($result->num_rows>0)
    {
     $gallery_info = $result->fetch_array();
     
     ?>
      <tr>
       <td>
        &nbsp;&nbsp;<font size="4"><b><?=$gallery_info["name"];?></b></font>&nbsp;
       </td>
       <td align="right">
        &nbsp;<font class="font_content"><i><?//=$gallery_info["created"];?></i></font>
        <? if (!empty($_SESSION["user_name"])) { ?>
         &nbsp;<font class="font_content"><a href="index.php?page=gallery&amp;action=delete_gallery&amp;id=<?=$gallery_info["id"];?>"><b>X</b></a></font>
        <? } ?>
        &nbsp;&nbsp;
       </td>
      </tr>
      <tr>
       <td colspan="2" align="justify">
        <hr />
        <font class="font_content"><i><?=$gallery_info["dscr"];?></i></font>
        <font style="font-size: 5px;"><br /><br /><br /></font>
        <?
         // check for possible children galeries
         $result2 = $mysqli->query("SELECT id, name, images FROM elrh_gallery_galleries WHERE parent='".$gallery_info["id"]."' ORDER BY name");
         if ($result2->num_rows>0)
         {
        ?>
        <font class="font_content"><b>Podkategorie:</b><br />
        <? while ($subgallery_info = $result2->fetch_array()) { ?>
         <font class="font_content">- &nbsp;<a href="index.php?page=gallery&amp;gid=<?=$subgallery_info["id"];?>#gallery" target="_self"><?=$subgallery_info["name"];?></a>&nbsp;&nbsp;[<?=$subgallery_info["images"];?>]</font><br />
        <? } ?>
        <font style="font-size: 5px;"><br /></font>
        <? } // possible sub-galleries ?>
        <?
         // check for possible related articles
         $result2 = $mysqli->query("SELECT id, name FROM elrh_articles WHERE gallery='".$gallery_info["id"]."' ORDER BY name");
         if ($result2->num_rows>0)
         {
        ?>
        <font class="font_content"><b>Související články:</b><br />
        <? while ($article_info = $result2->fetch_array()) { ?>
         <font class="font_content">- &nbsp;<a href="index.php?page=articles&amp;aid=<?=$article_info["id"];?>#articles" target="_self"><?=$article_info["name"];?></a></font><br />
        <? } ?>
        <font style="font-size: 5px;"><br /></font>
        <? } // possible related articles ?>
        <font style="font-size: 5px;"><br /><br /></font>
        <font class="font_content"><b>Obrázky v této galerii:</b><br />
        <font style="font-size: 5px;"><br /></font>
       </td>
      </tr>
      <tr>
       <td colspan="2" align="center">
        <?
         // get all images from this gallery
         $result = $mysqli->query("SELECT * FROM elrh_gallery_images WHERE gallery='".$gid."' ORDER BY ord");
         if ($result->num_rows>0)
         {
          // get info about all images into one array
          $i=0;
          while ($image_info[$i] = $result->fetch_array())
           $i++;
          
          // show records in table - up to 5 images in one row
          echo '<table align="center">';
          
           $x = 0;
           for ($i2=0;$i2<$i;$i2++)
           {
            // open new row (before each 5 images)
            if ($x=="0")
             echo '<tr>';
             
            // show each one image in separate table cell
            echo '<td>&nbsp;&nbsp;';
             echo '<a href="index.php?page=gallery&amp;iid='.$image_info[$i2]["id"].'#gallery"><img src="'.$image_info[$i2]["image"].'" title="'.$image_info[$i2]["name"].'" alt="'.$image_info[$i2]["name"].'" width="100" height="75" border="0" /></a>';
            echo '&nbsp;&nbsp;</td>';
            
            
            // close row (after each 5 images
            if ($x=="4")
             echo '</tr>';
             
            // increase "row counter" in the end
            $x++;
            // reset it after it reaches 5
            if ($x>4)
             $x = 0;
           } // for each records do

           echo '</table>';
         } // there are images
         else
         {
          ?>
          <tr>
           <td colspan="2" align="center">
            <i>Zatím žádné obrázky...</i>
           </td>
          </tr>
          <?
         } // there are no images in gallery
        ?>
       </td>
      </tr>
      <tr>
       <td height="15"></td>
      </tr>
      <?
    } // matching gallery found
    else
    {
     ?>
     <tr>
      <td align="center">
       <i>Zadané ID neodpovídá žádné galerii... 
      </td>
     </tr>
     <tr>
      <td height="15"></td>
     </tr>
     <?
    } // matching gallery not found
    
    ?>
    <tr>
     <td colspan="2" align="center">
      <hr />
      <? if ($gallery_info["parent"]>0) { ?>
      <a href="index.php?page=gallery&amp;gid=<?=$gallery_info["parent"];?>#gallery" target="_self">Zpět na nadřazenou kategorii</a></i><br />
      <? } ?>
      <a href="index.php?page=gallery#gallery" target="_self">Zpět na index galerie</a></i>
     </td>
    </tr>
    <?
   } // showing specific gallery
   else
   {
    // show main gallery index
    
    // get all galleries from db
    // but only those, which are in "root" (they have 0 as "parent")
    $result = $mysqli->query("SELECT * FROM elrh_gallery_galleries WHERE parent='0' ORDER BY name");
    if ($result->num_rows>0)
    {
     while ($gallery_info = $result->fetch_array())
     {
      ?>
      <tr>
       <td>
        &nbsp;&nbsp;<font size="4"><b><?=$gallery_info["name"];?></b></font>&nbsp;
       </td>
       <td align="right">
        &nbsp;<font class="font_content"><i><?//=Založeno: $gallery_info["created"];?></i></font>
        <? if (!empty($_SESSION["user_name"])) { ?>
         &nbsp;<font class="font_content"><a href="index.php?page=gallery&amp;action=delete_gallery&amp;id=<?=$gallery_info["id"];?>"><b>X</b></a></font>
        <? } ?>
        &nbsp;&nbsp;
       </td>
      </tr>
      <tr>
       <td colspan="2" align="justify">
        <hr />
        <font class="font_content"><i><?=$gallery_info["dscr"];?></i>
        <font style="font-size: 5px;"><br /><br /></font>
        <? 
         if ($gallery_info["images"]>0) 
         { 
          // get last 5 images
          $result2 = $mysqli->query("SELECT id, name, image FROM elrh_gallery_images WHERE gallery='".$gallery_info["id"]."' ORDER BY ord LIMIT 5");
          ?>
          <div style="text-align: left;">
           <font class="font_content"><b>Obrázky v galerii:</b><br />
           <? while ($image_info = $result2->fetch_array()) { ?>
            <a href="index.php?page=gallery&amp;iid=<?=$image_info["id"];?>#gallery"><img src="<?=$image_info["image"];?>" title="<?=$image_info["name"];?>" alt="<?=$image_info["name"];?>" width="100" height="75" border="0" /></a>&nbsp;
           <? } ?>
          </div>
          <font style="font-size: 5px;"><br /></font>
          <? 
         } // last image added 
         
         // number of images
         if ($gallery_info["images"]<1)
          $content = 'Galerie neobsahuje žádné obrázky';
         elseif ($gallery_info["images"]<2)
          $content = 'Celkem 1 obrázek';
         elseif ($gallery_info["images"]<5)
          $content = 'Celkem '.$gallery_info["images"].' obrázky';
         else
          $content = 'Celkem '.$gallery_info["images"].' obrázků';
        ?>
        <font class="font_content"><b><?=$content;?></b>&nbsp;&nbsp;<a href="index.php?page=gallery&amp;gid=<?=$gallery_info["id"];?>#gallery" target="_self">[zobrazit celou galerii]</a></font>
        <font style="font-size: 5px;"><br /><br /></font>
        <?
         // check for possible children galeries
         $result2 = $mysqli->query("SELECT id, name, images FROM elrh_gallery_galleries WHERE parent='".$gallery_info["id"]."' ORDER BY name");
         if ($result->num_rows>0)
         {
        ?>
        <font class="font_content"><b>Podkategorie:</b><br />
        <? while ($subgallery_info = $result2->fetch_array()) { ?>
         <font class="font_content">- &nbsp;<a href="index.php?page=gallery&amp;gid=<?=$subgallery_info["id"];?>#gallery" target="_self"><?=$subgallery_info["name"];?></a>&nbsp;&nbsp;[<?=$subgallery_info["images"];?>]</font><br />
        <? } ?>
        <font style="font-size: 5px;"><br /></font>
        <? } // possible sub-galleries ?>
       <?
         // check for possible related articles
         $result2 = $mysqli->query("SELECT id, name FROM elrh_articles WHERE gallery='".$gallery_info["id"]."' ORDER BY name");
         if ($result->num_rows>0)
         {
        ?>
        <font class="font_content"><b>Související články:</b><br />
        <? while ($article_info = $result2->fetch_array()) { ?>
         <font class="font_content">- &nbsp;<a href="index.php?page=articles&amp;aid=<?=$article_info["id"];?>#articles" target="_self"><?=$article_info["name"];?></a></font><br />
        <? } ?>
        <font style="font-size: 5px;"><br /></font>
        <? } // possible related articles ?>
       </td>
      </tr>
      <tr>
       <td height="20"></td>
      </tr>
      <?
     } // for each gallery
    } // there are galleries
    else
    { 
     ?>
     <tr>
      <td align="center">
       <i>Zatím žádné galerie...</i>
      </td>
     </tr>
    <? }// there are no galleries ?>
   <? } // show main gallery index ?>
  </table>
</div>