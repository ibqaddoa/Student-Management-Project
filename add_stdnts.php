<?php

session_start();
    
    include("lib/db.php");
    
if ( !isset($_SESSION['loggedin']) OR $_SESSION['loggedin'] != 'y' )
 {
   die("<h1 style='color:red; border:1px dashed black;'> Please login first</h1>" );

 }


 ?>


 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>

     <meta charset="utf-8">
     <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital@1&display=swap" rel="stylesheet">
     <title>Welcome!</title>
   </head>
   <body style="font-family: 'Roboto Condensed', sans-serif; background: #A8DADC; border: 30px solid #1D3557;
   border-top: 0px; margin: auto;">

   <table>
     <thead>
       <th><img src="logo.png" width="85px" style="margin: 30px;"></th>
       <th><h1 style="margin: -25px;">You picked the right choice!</h1></th>
     </thead>
   </table>



 <?php

  //$pdo = new PDO('mysql:host=localhost;dbname=Student_mgmt_sys; charset=utf8;', 'ibo', 'ibo_pw');

 //==================================================================================
 // Read ctry_names names & ISO3 from databank

 $ctry_ar=Array();
 $sql_3="SELECT country, ISO3 FROM country_list ORDER BY country";
 $erg_3=$pdo->query($sql_3);
 while($row = $erg_3->fetch(PDO::FETCH_OBJ))
  {
   $ctry_ar[$row->ISO3]=$row->country;
  };
  // print"<pre>"; print_r($ctry_ar);print"</pre>";
 //==================================================================================
 //=




  ?>



 <table style="margin-left:60px; margin-top:60px; font-size:1.5em;">
   <form action="input.php" id="frmBox" method="post" onsubmit="return formSubmit();">
   <tr>
     <td>First Name:</td>
     <td> <input style="width: 320px; height: 20px;" type="text" id="finame"> </td>
   </tr>
   <tr>
     <td>Last Name:</td>
     <td> <input style="width: 320px; height: 20px;" type="text" id="lname"> </td>
   </tr>
   <tr>
     <td>Birthdate:</td>
     <td> <input style="width: 320px; height: 20px;" type="date" id="dob"> </td>
   </tr>
   <tr>
     <td>Nationality:</td>
     <td> <select style="width: 324px; height: 25px;"  id="nat">
            <?php
                  echo"<option value='' style='color:blue'> </option>";
                  foreach ($ctry_ar as $iso3 => $ctry)
                    echo"<option value='".$iso3."'>".$iso3." - ".$ctry."</option>";
             ?>
       	 </select>
     </td>
   </tr>
   <tr>
     <td>Mobile Number:</td>
     <td> <input style="width: 320px; height: 20px;" type="text" id="mobile"> </td>
   </tr>
   <tr>
     <td>Email:</td>
     <td> <input style="width: 320px; height: 20px;" type="text" id="email"> </td>
   </tr>
   <tr>
     <td>Enrollment Date:</td>
     <td> <input style="width: 320px; height: 20px;" type="date" id="doe"> </td>
   </tr>
   <tr>
       <td>
         <a href='index_2.php'><input type=button value="All Students" name=allstudents
                              style="width:90px; height:25px; border-radius: 25px; margin-top:10px; margin-bottom:5px; background: #eee;"  > </a>
       </td>
     <td>
         <input type="button" name="" value="ADD" onclick="Send_Data_Ajax();"
                style="width:110px; height:40px; border-radius: 25px; margin-top:10px; margin-bottom:5px; background: gold;">
       </td>

   </tr>
   <tr>
     <td><a href='logout.php'><input type=button value=Logout name=logout
                               style="width:90px; height:25px; border-radius: 25px; margin-top:10px; margin-bottom:5px; background: grey;"> </a></td>
   </tr>
   </form>
 </table>

<div id="resdiv" class="">

</div>

 <script type="text/javascript">

 function Get_Ajax_Var()
  {
  	 	try
  	 	  { // Opera 8.0+, Firefox, Safari
 		    ajaxRequest = new XMLHttpRequest();
 	    }
 	  catch (e)
 	    { // Internet Explorer Browsers
 		    try { ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
 		      }
 		    catch (e)
 		      {
 		      	try{ ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
 			         }
 			      catch (e)
 			         { // Something went wrong
 				         alert("Your browser broke!");
 				         return -1;
 			         }
 		       }
 	    };
 	  return ajaxRequest;
 }

     function Send_Data_Ajax()
      {

        if (!checkData()) return false;

        // alert("Hallo ich bin Send_Data_Ajax");

        var ajaxRequest = Get_Ajax_Var();  // The variable that makes Ajax possible!
        // Create a function that will receive data sent from the server
        ajaxRequest.onreadystatechange = function(){

                     if(ajaxRequest.readyState == 4)
                       {
                          document.getElementById('resdiv').innerHTML = ajaxRequest.responseText;
                      }
        }

       //..........................................................................
       // AJAX request
        var param_post = "";
        var depug_param = "";

        //additional important fields
        param_post += '&finame='+document.getElementById('finame').value;
        param_post += '&lname='+document.getElementById("lname").value;
        param_post += '&dob='+document.getElementById("dob").value;
        param_post += '&nat='+document.getElementById("nat").value;
        param_post += '&mobile='+document.getElementById("mobile").value;
        param_post += '&email='+document.getElementById("email").value;
        param_post += '&doe='+document.getElementById("doe").value;
        // alert ('Param = '+ param_post);
        //alert ('Param : \n'+ depug_param);
      //...............................................................................
       ajaxRequest.open("POST", "input.php", true);
       ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
     	 ajaxRequest.send(param_post)  ;
     }


function Delete_Row(r_id)
      {
        // alert("Hallo ich bin Send_Data_Ajax");
        var ajaxRequest = Get_Ajax_Var();  // The variable that makes Ajax possible!
       //..........................................................................
       // AJAX request
        var param_post = "";
        //additional important fields
        param_post += '&rid='+r_id;
        // alert ('Param = '+ param_post);
      //...............................................................................
       ajaxRequest.open("POST", "delete_row.php", true);
       ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
     	 ajaxRequest.send(param_post)  ;
     }


function checkData(){
  var finame_box = document.getElementById('finame');

  if(finame_box.value == ""){
    alert("Bitte geben Sie Vornamme ein!");
    return false;
  }
  return true;

}




 </script>


   </body>
 </html>
