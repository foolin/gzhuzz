<?php

include_once ("include/db_mysql.php");

//session_start();

// 连接数据库
$conn=db_connect($h,$p,$u,$db);

if (isset($_POST['username'])&&isset($_POST['passwd']))
{
    $user_name = $_POST['username'];
    $passwd = $_POST['passwd'];
    
    //判断用户名和密码是否为空
    if(!empty($user_name) && !empty($passwd))
    {
    	
    	if (isset($_POST['usertype']))
    	{
    	 $usertype=implode(',',$_POST['usertype']);  //判断是哪种用户登录，1为学生用户，0为管理员
        
        if ($usertype==1)
        {
        	//将$user_name和$pw变成SQL语句
        	$sql="select name from user where name='".mysql_escape_string($user_name)."'and passwd='".mysql_escape_string($pw)."'";
        	$result=mysql_query($sql,$conn);//返回结果集
        	
        	if (!mysql_num_rows($result)==0)
        	{
        		header("location:student_index.html");  //登录成功，就转到首页
        	}
        	else 
        	{
        		echo "用户名或密码不正确！";
        		header("location:login.php");  //失败返回
        	}
        } 
        else 
       {
       	 $sql="select admin_name from admin where admin_name='".mysql_escape_string($user_name)."'and admin_password='".mysql_escape_string($passwd)."'";
       	 
       	 $result=mysql_query($sql,$conn);    //返回结果集
       	 
        if (mysql_num_rows($result)!=0)
        {
        	
        	
        	header("location: admin_index.html");   //成功转到管理员首页
        }
       else 
        	{
        		header("location:login.php");  //失败返回
        	}

       }       	
    }
    }
}

close_db($conn);


?>

<html>
<head><title>广州大学计算机学院资助管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
.STYLE2 {
    font-size: 12px;
    font-weight: bold;
}
.STYLE3 {font-size: 12px}
-->
</style>

</head>
<body>
<form id="form" name="form" method="post" action="<?=$_SERVER['PHP_SELF']?>">
  <table width="329" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#F5A510">
    <tr>
      <td height="30" colspan="2" bgcolor="#FEFBE0"><div align="center"><span class="STYLE2">用户登录</span></div></td>
    </tr>
    <tr>
      <td width="100" height="33" bgcolor="#F2F3F4"><div align="right" class="STYLE3">用户名：</div></td>
      <td width="213" bgcolor="#F2F3F4">&nbsp;<input type="text" name="username" /></td>
    </tr>
    <tr>
      <td height="36" bgcolor="#F2F3F4"><div align="right" class="STYLE3">密码：</div></td>
      <td bgcolor="#F2F3F4"><label>
        &nbsp;<input type="password" name="passwd" />
      </label></td>
    </tr>
    <tr>
    <td height="36" bgcolor="#F2F3F4"><div align="right" class="STYLE3">请选择登录用户类型：</div></td>
    <td bgcolor="#F2F3F4"><label>
        &nbsp;<select id="usertype" name="usertype[]" multiple="multiple">
        <option value="1">学生用户</option>
        <option value="2">管理员用户</option>
        </select>
        </label></td>
    <tr>
      <td height="36" colspan="2" bgcolor="#F2F3F4"><label>
        &nbsp;<input type="submit" name="submit" value="登录" />
        <input type="reset" name="reset" value="取消" />
        <a id="findpassword" href="find_password.php">忘记密码</a>
        <a id="reg" href="/zzsystem/js/register.html">注册新用户</a>
      </label></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
</body>
</html>
