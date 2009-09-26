<?php	

if (isset($_GET['username1']))
{
	$dbc=@mysqli_connect('localhost','root','fanye','zzsystem');  //连接数据库
	
	if (!empty($_GET['username1']))
	{
	$q=sprintf("select name from user where name='%s'",mysqli_real_escape_string($dbc,trim($_GET['username1'])));
	
	$r=mysqli_query($dbc,$q);    //返回结果集
	
	if (mysqli_num_rows($r)==1)
	{
		echo '该用户名已被占用!';
	}
	else 
	{
		echo '用户名可以使用!';
	}
	}else 
	{
		echo '用户名不能为空!';
	}
	
	mysqli_close($dbc);
	
}

?>