<?php
/*
// USED TO QUICKLY CREATE THUMBS FOR ALL EXISTING IMAGES IN DB
// about to be deleted
echo "Script starts<br />";

include_once getcwd().'/../external/ImageResize.php';

$path = 'file:///E:/Temp/xyz/';

if ($handle = opendir($path)) {
    // This is the correct way to loop over the directory (from PHP manual)
    while (false !== ($entry = readdir($handle))) {
        var_dump($entry);
		if (is_file($path.$entry)) {
			$image = new \Eventviva\ImageResize($path.$entry);
			$image->resize(100, 75);
			$image->save($path.'thumbs/'.$entry);
			echo "thumb created for ".$entry;
		} else {
			echo $entry." not file";
		}
		echo "<br />"; 
    }

    closedir($handle);
}
*/
?>