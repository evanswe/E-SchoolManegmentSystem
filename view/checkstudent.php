<?php
$msg = "";
$st = new Student();
$st->StudentId = $_POST['studentid'];
$st->Password = $_POST['password'];
if($st->Login()){
	$_SESSION['stid'] = $st->StudentId;
   	Redirect("?s=studentdetails&msg=Loging Successful");
    }
	else{		
	Redirect("studentlogin/?msg=User Id or password error");
}
?>