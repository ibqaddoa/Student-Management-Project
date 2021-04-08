


<?php

// print"<pre>"; print_r($_POST);print"</pre>";


session_start();
    
    include("lib/db.php");

if( isset($_SESSION['loggedin']) AND $_SESSION['loggedin'] == 'y' )
 {
   header("Location:welcome.php",true,301);
 }
elseif (isset($_POST['uid']) AND isset($_POST['pwd']) )
 {
//   $pdo = new PDO('mysql:host=localhost;dbname=Student_mgmt_sys; charset=utf8;', 'ibo', 'ibo_pw');

   $uid = $_POST["uid"];
   $pwd = $_POST["pwd"];

   $sql = "SELECT * FROM users
           WHERE u_logid = '$uid' AND u_pwd = '$pwd' ";
   $res = $pdo->query($sql);
   $found = $res->rowCount();
   echo"<br>  found = $found   <br>";
   if($found > 0)
     {   //-----------------------------------------------------
         // Log in
         //-----------------------------------------------------
         $_SESSION['uid'] = $uid;
         $_SESSION['loggedin'] = 'y';
         $_SESSION['log_msg'] = '';
         header("Location:welcome.php",true,301);
     }
    else
     {
       $_SESSION['loggedin'] = 'n';
       $_SESSION['log_msg'] = ' Incorrect Username or Password !!';
       header("Location:login_page.php",true,301);
     };
  }
else // Not logged in
 {
    header("Location:login_page.php",true,301);
 };



?>
