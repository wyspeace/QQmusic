<?php
header("Content-Type:application/json;charset=utf-8");
//1:获取上传文件信息 ：名称 ，大小，类型
//2:获取文件在大小 byte字节
$size = $_FILES["mypic"]["size"]/1000/1000;
//3:获取文件类型
$name = $_FILES["mypic"]["name"];
//4:获取文件名称
$type = $_FILES["mypic"]["type"];
//5:如果文件大小超过 2MB 上传文件过大请重试
if($size>2){
   die('{"code":-1,"msg":"上传文件不能超过2MB"}');
}
//6:如果文件不是图片     只能上传图片类型
$rs = strripos($type,"image");
if($rs===false){
  die('{"code":-1,"msg":"只能上传图片类型"}');
}
//7:创建图片新路径
$ext = strstr($name,".");     //123.jpg  .jpg
$des = "upload/".time().rand(1,99999).$ext;
//8:将临时文件移动upload目录
move_uploaded_file($_FILES["mypic"]["tmp_name"],$des);
echo '{"code":1,"msg":"文件上传成功"}';