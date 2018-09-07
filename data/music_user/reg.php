<?php
    require_once("init.php");
    @$qq=$_REQUEST["qq"];
    @$upwd=$_REQUEST["upwd"];
    @$pic=$_REQUEST["pic"];
    @$uname=$_REQUEST["uname"];
    $reg="/^[0-9]{6,}$/";
    if(!$qq){
        die('{"code":-1,"msg":"qq不能为空"}');
    }
    $sql="insert into music_user(uname,upwd,qq,pic) values('$uname','$upwd','$qq','$pic')";
    $res=mysqli_query($conn,$sql);
    $rs=mysqli_affected_rows($conn);
    if($rs>0)
        echo "注册成功";
    else
        echo "注册失败";
?>