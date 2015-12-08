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
// *  Author:         *  Ellrohir [ ellrohir@seznam.cz ]           * //
// *  Homepage:       *  http://ellrohir.xf.cz                     * //
// *  File:           *  (e_)index.php                             * //
// *  Purpose:        *  Disallows access to sub-dirs              * //
// *  System Version: *  1.0                                       * //
// *  Last Modified:  *  2008-08-12 2245 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<?
// disallows direct accesss to sub-directories
// those directories shouldnt been listed by web broesers
if ($ELRH_Auth!="index") 
{
 include "disallowed.php";
 exit;
}
?>
