<?php

session_start();
if ( !isset($_SESSION['loggedin']) OR $_SESSION['loggedin'] != 'y' )
 {
   die("<h1 style='color:red; border:1px dashed black;'> Please login first</h1>" );

 }


 ?>



<!DOCTYPE html>
<html lang="de" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>IbrahimWeb11</title>
  </head>
  <body>

<style type='text/CSS'>

.stab{ border-collapse: collapse;}
.stab td{border:1px solid grey;}
.stab tr:hover{background:#fccccc;}
</style>


  <!-- //print"<pre>"; print_r($_POST);print"</pre>";

 //echo"<br> in PHP eingetreten <br>";






 // echo"<br>  found number = ".$found." <br>";
 //
 // if($found < 1)
 //   die('<h1>  Falsche Log In Daten!</h1>'); -->




<table class="stab" style="width: 95%; text-align: center; background: #eee"  >
  <thead style="background: #1bd7e0;">
    <th>Nr</th>
    <th>First Name</th>
    <th>Family Name</th>
    <th>Birthdate</th>
    <th>Nationality</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>Immatrikulation</th>
  </thead>

  <?php

include("lib/db.php");

  $sql = "SELECT * FROM student
            LEFT JOIN country_list ON ISO3 = student.nat
          WHERE 1
          ORDER BY student.id ";
  $res = $pdo->query($sql);

  while($row = $res->fetch(PDO::FETCH_OBJ)){
    //print"<pre>"; print_r($row);print"</pre>";

    $nat = $row->nat;
    $ctry = $row->country;



    echo"<tr style='height: 35px;'>";
      echo"<td>".$row->id."</td>";
      echo"<td>".$row->fi_name."</td>";
      echo"<td>".$row->fam_name."</td>";
      echo"<td>".$row->birthdate."</td>";
      echo"<td title='".$nat." - ".$ctry."'><img width='33' src='flags/iso3/".$row->nat.".png'></td>";
      echo"<td>".$row->mobile."</td>";
      echo"<td>".$row->email."</td>";
      echo"<td>".$row->imat_date."</td>";
    echo"</tr>";
  }

  ?>

</table>

<table>
  <tr>
    <td>
      <form style="margin: 10px;" action="add_stdnts.php" method="post">
      <input style="width: 125px; height:32px; margin-top: 15px; background:#1bd7e0;  border-radius: 25px;" type="submit" value="Add Students">
      </form>
    </td>
    <td>
<a href="logout.php"> <button type="button" name="logout"
                               style="width: 125px; height:32px; margin-top: 15px; background: grey;  border-radius: 25px;">Logout</button></a>
    </td>
  </tr>
</table>



  </body>
</html>
