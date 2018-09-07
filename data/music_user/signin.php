<?php
//data/users/signin.php
require_once("init.php");
@$qq=$_REQUEST["qq"];
@$upwd=$_REQUEST["upwd"];
$reg="/^[0-9]{6,}$/";
if(!$qq){
	die('{"code":-1,"msg":"qq不能为空"}');
}
else{
	if(!preg_match($reg,$qq)){
		die('{"code":-1,"msg":"qq号应为6位以上的数字"}');
	}
}
if($qq!=null&&$upwd!=null){
	$sql="select * from music_user where qq='$qq' and upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	 $rs=mysqli_fetch_all($result,1);
	// $row=mysqli_fetch_row($result);
	//  echo json_encode($rs);
	// echo json_encode($row);
	if($rs!=null){
		session_start();
		$_SESSION["qq"]=$rs[0]["qq"];
		 echo json_encode($rs);
	}
}