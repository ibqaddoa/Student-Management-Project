<?PHP

@session_start();

session_destroy();

header("Location:login_page.php",true,301);

?>
