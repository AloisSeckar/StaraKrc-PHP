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
// *  File:           *  main.php                                  * //
// *  Purpose:        *  Main index page                           * //
// *  System Version: *  2.2 fix 1                                 * //
// *  Last Modified:  *  2015-04-07 2009 GMT+1                     * //
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
///////////////////////////////////////////////////////////////////////
?>

<div id="div_body">

 <p class="narrating">
  Vítejte na stránkách, kde bychom vám rádi on-line zprostředkoval naši 
  sbírku starých pohledů a fotografií doplněných o informace o pražské Krči. 
  Cílem je zprostředkovat historii této vesnice a později městské části všem 
  návštěvníkům tohoto webu z řad zájemců o historii, místních obyvatel 
  i náhodných návštěvníků.
 </p>
 <p class="narrating">
  V <a href="index.php?page=gallery" target="_self">Galerii</a> naleznete 
  oskenované ukázky originálních pohledů, dobových materiálů a vlastních 
  fotografií. 
  V sekci <a href="index.php?page=articles" target="_self">Články</a> se pak 
  budou postupně objevovat různá historická povídání. Pokud vás toto téma 
  zajímá a chtěli byste se dozvědět víc, nebo chcete přímo navázat kontakt 
  a spolupráci, můžete nás 
  <a href="index.php?page=contact" target="_self">zde</a> kontaktovat nebo 
  zanechat vzkaz. Také je tu oddíl, kde se objevují 
  <a href="index.php?page=links" target="_self">odkazy</a> související se 
  sbíráním starých pohledů, s výzkumem historie Prahy a dalšími zajímavými 
  tématy.
 </p>
 
 <table class="main_news"> 
 
 <tr>
  <td><strong>Datum</strong></td>
  <td><strong>Novinka</strong></td>
 </tr> 
 
 <?php
 
 // GET NUMBER OF NEWS DISPLAYED REQUEST
 if (!empty($_GET["news"])) {
  $news= $_GET["news"];
 } else {
  $news = "5"; // default is last 5 news
 }
 //
 if ($news=="all") {
  $result = $mysqli->query("SELECT date, content FROM elrh_news ORDER BY date DESC");
 }
 else {
  $result = $mysqli->query("SELECT date, content FROM elrh_news ORDER BY date DESC LIMIT 5");
 }
 //
 if ($result->num_rows>0) {
  while ($news_info = $result->fetch_array()) {
   echo '<tr>';
    echo '<td><strong>'.$news_info["date"].'</strong></td>';
    echo '<td>'.$news_info["content"].'</td>';
   echo '</tr>';
  }
  if ($news == "5") {
   echo '<tr><td colspan="2"><a href="index.php?page=main&amp;news=all">Zobrazit vše...</a></td></tr>';
  }
 } else {
  echo '<tr><td colspan="2"><em>Žádné novinky...</em></td></tr>';
 }
 ?>
 
 </table>
 
 <br /><br /><br />
 <p style="text-align: center;"><a href="index.php?page=login">Přihlásit do systému</a><br />(Pouze pro majitele a správce stránek)</p>
 
 
</div>
