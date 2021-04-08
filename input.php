<?php
session_start();
if ( !isset($_SESSION['loggedin']) OR $_SESSION['loggedin'] != 'y' )
 {
   die("<h1 style='color:red; border:1px dashed black;'> Please login first</h1>" );

 }





$finame = $_POST['finame'];
$lname = $_POST['lname'];
$dob = $_POST['dob'];
$nat = $_POST['nat'];
$mobile = $_POST['mobile'];
$email = $_POST['email'];
$doe = $_POST['doe'];

// print"<pre>"; print_r($_POST);print"</pre>";

//$pdo = new PDO('mysql:host=localhost;dbname=Student_mgmt_sys; charset=utf8;', 'ibo', 'ibo_pw');

include("lib/db.php");

$sql = "INSERT INTO student (fam_name,fi_name,birthdate,nat,email,mobile,imat_date)
               VALUES('$lname','$finame','$dob','$nat','$email','$mobile','$doe') ";

// print"<pre>"; print($sql);print"</pre>";


$res = $pdo->query($sql);

if ($res) {
  echo "Data inserted successfully";
}else {
  echo "Failed to insert";
}




 ?>
