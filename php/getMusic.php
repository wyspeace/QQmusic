<?php
   require_once("init.php");
   $sql="select * from music_list";
   $result=mysqli_query($conn,$sql);
   $res=mysqli_fetch_all($result,1);
   echo json_encode($res);
?>