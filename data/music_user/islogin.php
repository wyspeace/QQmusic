<?php
//data/users/islogin.php
require_once("init.php");
session_start();
@$qq=$_SESSION["qq"];
if($qq!=null){
	$sql="select pic,uname from music_user where qq='$qq'";
	$result=mysqli_query($conn,$sql);
	$user=mysqli_fetch_All($result,1)[0];
	echo json_encode(["ok"=>1,"user"=>$user]);
}else{
	echo json_encode(["ok"=>0]);	
}