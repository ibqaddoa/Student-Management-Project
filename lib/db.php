<?PHP


set_exception_handler('iq_exception_handler');

$db_Server='localhost';
$db_Name = 'Student_mgmt_sys';
$db_User = 'ibo';
$db_Pass = 'ibo_pw';


//PDO DB-Connection
 try {
       $pdo = new PDO("mysql:host=$db_Server; dbname=$db_Name; charset=utf8;", $db_User, $db_Pass );
       $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
       //$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING );
       //$pdo->exec("set names utf8");//<-- no need here because it's included in new PDO-Call above.
     }
 catch (PDOException $e)
     {
       echo 'Connection Error: ' . $e->getMessage();
       exit;
     };


function iq_exception_handler($e)
  {
    // public message
    echo "Sorry! Something went wrong. Contact Admin ! <br/>";


    //if ( $uid < 6 )
      {
        echo "Uncaught exception: " . $e->getMessage(). "\n <br/>";
        echo "File: " . $e->getFile(). " \n";
        echo"<br/>Line: ".$e->getLine()." <br/>";
        //print"<pre>"; print_r(debug_backtrace());print"</pre>";
        //print"<pre>"; print_r($e);print"</pre>";
        //print"<pre>"; print_r($e->getTrace());print"</pre>";
      };

    // Semi-hidden message (Not shown but included in Page-HTML)
    // echo "<!-- Uncaught exception: " . $e->getMessage(). " -->\n";
  }


?>
