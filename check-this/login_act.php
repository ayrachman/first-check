<?php 
session_start();
include 'db/config.php';
$uname=$_POST['username'];
$pass=$_POST['password'];
$pas=md5($pass);
$query=mysql_query("select * from login_multi where username='$uname' and password='$pas'")or die(mysql_error());
if(mysql_num_rows($query)==1){
	$_SESSION['username']=$uname;
	header("location:admin/index.php");
}else{
	header("location:index.php?pesan=gagal")or die(mysql_error());
	// mysql_error();
}
// echo $pas;
 ?>