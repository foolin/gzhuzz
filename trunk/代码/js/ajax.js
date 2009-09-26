var ajax=false;

if(window.XMLHttpRequest)   //判断浏览器是否支持XMLHttpRequest
{
	ajax=new XMLHttpRequest();    //创建XMLHttpRequest对象
	}
    else if
    (window.ActiveXObject)    //判断浏览器是否支持ActiveXObject
    {
	try 
	{
		ajax=new ActiveXObject("Msxml2.XMLHTTp");     //创建 ActiveXObject对象
	}
	catch(e1)
	{
		try
		{
			ajax=new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch(e2)
		{
			
		}
	}
	}

if(!ajax){
	alert('Some page functionality is unavailable.');   //不支持就返回错误信息
}