<?php
///////////////////////////////////////////////////////////////////////
//                                                                   //
//                             STARÁ KRČ                             //
//                  Historie městské části Praha-Krč                 //
//                                                                   //
//                   Copyright © Ellrohir 2010-2013                  // 
//                                                                   //
//                                                                   //
//    Page Info                                                      //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// *  Author:         *  Ellrohir [ ellrohir@seznam.cz ]           * //
// *  Homepage:       *  http://ellrohir.mzf.cz                    * //
// *  File:           *  login.php                                 * //
// *  Purpose:        *  Login into system for owner               * //
// *  System Version: *  2.2                                       * //
// *  Last Modified:  *  2014-03-02 1843 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<div id="div_body">
 <h1>PŘIHLÁŠENÍ DO SYSTÉMU</h1>
 
 <? // login action hadnled in index.php script ?>
 
 <form action="index.php?page=login&amp;action=login" method="post">
  <table align="center">
   <? if (!empty($_SESSION["user_name"])) { ?>
    <tr>
     <td>
      <font class="font_content">Jste přihlášen jako <b><?=$_SESSION["user_name"];?></b> (<a href="index.php?page=login&amp;action=logout">ODHLÁSIT</a>)</font>
     </td>
    </tr>
   <? } else { ?>
    <? if (!empty($error_message)) { ?>
     <tr bgcolor="red">
      <td colspan="3" align="center">
       <?=$error_message;?>
      </td>
     </tr>
     <tr>
      <td colspan="3" height="5"></td>
     </tr>
    <? } ?>
    <tr>
     <td align="left">
      <b>Jméno:</b><br />
      <font size="2">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="text" name="elrh_login_name" size="46" maxlength="50" value="<?=$elrh_login_name;?>" />
     </td>
    </tr>
    <tr>
     <td align="left">
      <b>Heslo:</b><br />
      <font size="2">(Povinné)</font>
     </td>
     <td width="5"> </td>
     <td aligh="right">
      <input type="password" name="elrh_login_pass" size="46" maxlength="255" />
     </td>
    </tr>
    <tr>
     <td colspan="3" height="5"></td>
    </tr>
    <tr>
     <td colspan="3" align="center">
      <input type="submit" name="elrh_send_login" value="Send" />
     </td>
    </tr>
   <? } ?>
  </table>
 </form>
</div>
