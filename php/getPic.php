<?php
    require_once("init.php");
    @$mid=$_REQUEST["mid"];
    $sql="select * from music_list where mid='$mid'";
    $result=mysqli_query($conn,$sql);
    $res=mysqli_fetch_all($result,1)[0];
    echo json_encode($res);
?>