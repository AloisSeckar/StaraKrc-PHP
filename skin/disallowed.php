<?php
///////////////////////////////////////////////////////////////////////
//                                                                   //
//                   ELLROHIR'S  WORLD  OF  EMDAUS                   //
//                     On-line fantasy community                     //
//                                                                   //
//                   Copyright © Ellrohir 2007-2008                  // 
//                                                                   //
//                                                                   //
//    Page Info                                                      //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// *  Author:         *  Ellrohir [ rakcesa@seznam.cz ]            * //
// *  Homepage:       *  http://ellrohir.xf.cz                     * //
// *  File:           *  disallowed.php                            * //
// *  Purpose:        *  Disallows illegal accesss to pages        * //
// *  System Version: *  1.0                                       * //
// *  Last Modified:  *  2008-08-12 2245 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<?
// disallows direct accesss to sub-directories
// those directories shouldnt been listed by web broesers

echo '<meta http-equiv="Content-Type" content="text/html; charset=windows-1250">';
echo "UNAUTHORIZED ACCESS NOTICED !!! FURTHER COMPILING OF THE SCRIPT WAS DISABLED.";
echo "<br><br>Due to security reasons, you are disallowed to access subdirectories on this web.";
echo "<br><br><a href='javascript:history.back();'>Return to previous page</a>";
?>
