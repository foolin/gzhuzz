<?php
include_once ("include/db_mysql.php");

if (isset($_POST['username'])||isset($_POST['user_problem'])||isset($_POST['user_answer']))
{
	$conn=@db_connect($h,$p,$u,$db);
	
	//判断用户名、用户问题、用户答案是否为空
	if (empty($_POST['username'])&&empty($_POST['user_problem'])&&empty($_POST['user_answer']))
	{
		echo "各项不能为空！";
		header("location:find_password.php");
	}
	else
	 {
		$fpw_username=$_POST['username'];                //获得用户名            
		$fpw_userproblem=$_POST['user_problem'];        //获得用户问题
		$fpw_useranswer=$_POST['user_answer'];          //获得用户答案
		
		$sql="select name,problem,answer from user where name='$fpw_username' and problem='$fpw_userproblem' and answer='$fpw_useranswer'";
		
		$result=@mysql_query($sql,$conn);  //返回结果集
		
		if (mysql_num_rows($result)!=0)
		{
			header("Location:chongzhi.html");  //有就转到重置密码页面
		}else {
			header("Location:find_password.php");  //没有就返回原页面
		}
	}
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
<!--
.STYLE2 {
    font-size: 20px;
    font-weight: bold;
}
.STYLE3 {font-size: 15px}
-->
</style>

<title>找回用户密码</title>
</head>
<body>
<form name="form" action="" method="post">
<table align="center">
 
  <tr>
      <td width="100" height="33" bgcolor="#F2F3F4"><div align="right" class="STYLE3">用户名：</div></td>
      <td width="500" bgcolor="#F2F3F4">&nbsp;<input name="username" type="text" size="15" maxlength="15"></td>
  </tr>
     
      <tr >
      <td width="100" height="33" bgcolor="#F2F3F4"> <div align="right" class="STYLE3">用户问题：</div></td>
      <td width="500" bgcolor="#F2F3F4">&nbsp;<select id="user_problem" name="user_problem">
      <option value="birthday">你的生日是？</option>
      <option value="fathername">你的父亲的名字</option>
      <option value="mothername">你母亲的名字</option>
      <option value="headteacher">你初中班主任的名字</option>
      </select>
      </td>
      </tr>
      <tr>
      <td width="100" height="33" bgcolor="#F2F3F4"><div align="right" class="STYLE3">用户答案：</div></td>
      <td width="500" bgcolor="#F2F3F4">&nbsp;<input id="user_answer" name="user_answer" type="text"  size="15" maxlength="50"></td>
      </tr>          
<tr>
<td  height="36" colspan="2" bgcolor="#F2F3F4" align="center"><label>
       <input type="submit" name="ok" id="ok" value="确认" "/>   
       </label>
       <input type="reset" name="reset" value="取消" />  
</td>
</tr>
 </table>  
</form>

</body>
</html>