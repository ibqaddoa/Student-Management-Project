<?php
session_start();

if ( !isset($_SESSION['loggedin']) OR $_SESSION['loggedin'] != 'y' )
 {
   die("<h1 style='color:red; border:1px dashed black;'> Please login first</h1>" );

 }

// print"<pre>"; print_r($_POST);print"</pre>";



echo"<br>  Welcome PAGE   <br>";
//exit();

echo"<a href='index_2.php'>All Students</a><br>";
echo"<br><a href='logout.php'><input type=button value=logout name=logout> </a>";


?>
