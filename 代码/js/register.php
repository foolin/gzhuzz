<?php
if (isset($_POST['ok']))    //判断是否有提交
{
	$dbc=@mysqli_connect('localhost','root','fanye','zzsystem');    //连接数据库
	
	$username=$_POST['username1'];          //获得用户名
	$password=$_POST['register_pwd'];       //获得用户密码
	$problem=$_POST['user_problem'];       //获得用户问题
	$answer=$_POST['user_answer'];        //获得问题答案
	
	$upw=md5($password);                //加密
	
	$sql="INSERT INTO user SET name='$username',password='$upw',problem='$problem',answer='$answer'";
	
	$result=mysqli_query($dbc,$sql);         //将数据插入数据库
		
	mysqli_close($dbc);

}
?>