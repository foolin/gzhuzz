
function check_username(username1)
{
	if(ajax)      //判断是否创建AJAX对象
	{
		ajax.open('get','checkusername.php?username1='+encodeURIComponent(username1));  //把用户名传给checkusername.php检测
		ajax.onreadystatechange=handle_check;    //处理完后调用handle_check
		
		ajax.send(null);
	}
	else
	{
		document.getElementById('username_label').innerHTML='The availability of this username will be confirmed upon form submission';
	}
}

function handle_check()
{
	if((ajax.readyState==4)&&ajax.status==200)
	{
		document.getElementById('username_label').innerHTML=ajax.responseText;
	}
}


function chkpassword(){
	if(!document.getElementById||!document.createTextNode)    //判断是否支持DOM
	{
		return false;
		}
	
	var m=document.form;  
	if(!m)
	{
		return false;
		}
	
	if(m.register_pwd.value.length>20||m.register_pwd.value.length<6)
	{
		document.getElementById("passwordStr").style.display="";
		document.getElementById("register_pwd").style.background="#FF0000";
		document.getElementById("passwordStr").innerHTML="对不起，密码必须为英文字母、数字或下划线，长度为6～20！";
		
	}
	else
	{
		document.getElementById("register_pwd").style.background="#FFFFFF";
		document.getElementById("passwordStr").style.display="";
		document.getElementById("passwordStr").innerHTML="密码可以使用！";
	}
}

function chkconfirmPassword()
{
	if(!document.getElementById||!document.createTextNode){return false;}
	var m=document.form;
	if(!m){return false;}
	if(m.register_pwd.value!=m.confirmPassword.value)
	{
		document.getElementById("confirmPasswordStr").style.display="";
		document.getElementById("confirmPassword").style.background="#FF0000";
		document.getElementById("confirmPasswordStr").innerHTML="对不起，用户密码和确认密码不一致！";
		
	}
	else{
		document.getElementById("confirmPassword").style.background="#FFFFFF";
		document.getElementById("confirmPassworStr").style.display="none";
	}
}

function chkuseranswer(){
	if(!document.getElementById||!document.createTextNode){return false;}
	var m=document.form;
	if(!m){return false;}
	if(m.user_answer.value.length==0)
	{

		document.getElementById("useranswer").style.display="";
		document.getElementById("user_answer").style.background="#FF0000";
		document.getElementById("useranswer").innerHTML="对不起，用户答案不能为空！";
	}
	else{
		document.getElementById("user_answer").style.background="#FFFFFF";
		document.getElementById("useranswer").style.display="none";
	}
}

/*
function SubmitCheck()
{
	var m=document.form;
	if(m.username1.value.length==0)
	  {
	       alert("对不起,用户名必须为英文字母、数字或下划线，长度为5~20。");
	       m.username1.focus();
	       return false;
	  }
	  if(m.register_pwd.value.length==0)
	  {
	     alert("对不起,密码必须为英文字母、数字或下划线，长度为5~20。");
	     document.getElementById("register_pwd").focus();
	     document.getElementById("register_pwd").select();
         return false;
	  }
	  
	  if (m.register_pwd.value != m.confirmPassword.value)
	  {
	     alert("对不起,密码与重复密码不一致!");
	     document.getElementById("confirmPassword").focus();
         return false;
	  } 
  m.submit();
}*/
