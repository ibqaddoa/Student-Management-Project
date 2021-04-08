<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital@1&display=swap" rel="stylesheet"> -->
    <title> Start Page </title>
  </head>

  <body style="font-family: 'Roboto Condensed', sans-serif; background: #A8DADC; border: 30px solid #1D3557;
  border-top: 0px; margin: auto;">

<table>
  <thead>
    <th><img src="logo.png" width="85px" style="margin: 30px;"></th>
    <th><h1 style="margin: -25px;">You picked the right choice!</h1></th>
  </thead>
</table>


<h3 style="margin: 50px; font-size: 2em;">Log In</h3>


<form action="index.php" method="POST" style="margin-left: 50px; margin-top: -40px;">


<input style="width: 300px; height:20px;" type="text" id="uid" name="uid" placeholder="Email" incorrect><br>
<input style="width: 300px; height:20px;" type="password" id="pwd" name="pwd" placeholder="Password" incorrect><br>
<input  type="submit" name="login" value="Submit"
        style="background: #457B9D; color: #F1FAEE; width:100px; height:30px; margin-top:5px; margin-bottom:5px; border-radius:12px;">
</form>

<?php
   session_start();
   if (isset($_SESSION['log_msg']) And $_SESSION['log_msg'] != "" )
     echo "<h2>".$_SESSION['log_msg']."</h2>";
 ?>

  </body>
</html>
