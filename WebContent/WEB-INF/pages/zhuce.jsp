<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="../imgs/login.js"></script>
<link href="../imgs/login2.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>后台注册</title> 
</head>


 <body style="background: #fff url(../imgs/1.jpg) ;">
	<h1>
		后台注册<sup>V2017</sup>
	</h1>
	<!--注册-->
	<div class="login" style="margin-top: 50px;">
		<div class="qlogin" id="qlogin">
			<div class="web_login" style="height: 241px">
				<form name="form2" id="regUser" accept-charset="utf-8"
					action="<%=basePath%>denglu/insert" method="post"
					onsubmit="return zhen()">
					<input type="hidden" name="to" value="reg" /> <input type="hidden"
						name="did" value="0" />
					<ul class="reg_form" id="reg-ul">

						<li><label for="user" class="input-tips2">用户名：</label>
							<div class="inputOuter2">
								<input type="text" id="username" name="shu" maxlength="16"
									class="inputstyle2" onfocus="get5()" onblur="lose4()" /><span
									id="tishi5"></span><br />
								<span id="tishi"></span><br />
							</div></li>
						<li><label for="passwd" class="input-tips2">密码：</label>
							<div class="inputOuter2">
								<input type="password" id="passwd" name="mi2" maxlength="16"
									class="inputstyle2" onfocus="get2()" onblur="lose1()" /><span
									id="tishi1"></span><br />
							</div></li>
						<li><label for="passwd2" class="input-tips2">确认密码：</label>
							<div class="inputOuter2">
								<input type="password" id="passwd2" name="mi1" maxlength="16"
									class="inputstyle2" onfocus="get3()" onblur="lose2()" /><span
									id="tishi2"></span><br />
							</div></li>
						<li>
							<div class="inputArea">
								<input type="button" id="reg"
									style="margin-top: 10px; margin-left: 85px;"
									class="button_blue" value="同意协议并注册" /> <a href="#"
									class="zcxy" target="_blank">注册协议</a>
							</div>
						</li>

					</ul>
				</form>


			</div>

		</div>
	</div> 
</body>



<script type="text/javascript" >
var ms;
$(function(){
	$("#username").blur(function(){
		var username = $(this).val();		
		$.ajax({
			type : "POST",
			url : "checkName.do",
			data : "username=" + username,
			dataType : 'text',
			success : function(msg) {
				if(msg=="1"){
					ms=1;
					$("#tishi").html("用户名已存在!");
				}else{
					$("#tishi").html("用户名可用!");
				}
			}
		});
	});
});
	
	  function get5(){

         var boxcolor1=document.getElementsByName("shu")[0]
        
         var a=document.getElementById("tishi5")
        
         a.innerHTML="<span >请输入昵称,五位以上字母组成</span>"

     }
     var a5;
     var b4;
     function lose4(){
         b4=document.getElementsByName("shu")[0];
         a5=document.getElementById("tishi5");
         var ze=/^[a-zA-Z]{5,}$/
         alert(msg);
         if(!ze.test(b4.value)){
        
             a5.innerHTML="<span >昵称不能为空</span>";
             
             return false;
         }else{
           if(ms=="1"){     
        	   
               return false;
           }else{
        	   a5.innerHTML="<span >输入正确</span>";
        	   return true;
           }
             

         }
     }

     function get2(){

         var boxcolor1=document.getElementsByName("mi2")[0]
         
         var a=document.getElementById("tishi1")
         
         a.innerHTML="<span >密码至少6位</span>"

     }
     var a2;
     var b1;
     function lose1(){
         b1=document.getElementsByName("mi2")[0];
         a2=document.getElementById("tishi1");
         var ze=/^\w{6,16}$/
         if(!ze.test(b1.value)){
            
             a2.innerHTML="<span >密码长度为6-16位</span>";
             return false;
         }else{
             
             a2.innerHTML="<span >输入正确</span>";
             return true

         }
     }
     function get3(){

         var boxcolor1=document.getElementsByName("mi1")[0]
       
         var a=document.getElementById("tishi2")
        
         a.innerHTML="<span >密码至少6位</span>"

     }
     var a3;
     var b2;
     function lose2(){
         b2=document.getElementsByName("mi1")[0];
         a3=document.getElementById("tishi2");

         if(b2.value!=b1.value||b2.value==""){
             
             a3.innerHTML="<span >重复密码为6-16位</span>";
             return false;
         }else{
           
             a3.innerHTML="<span >输入正确</span>";
             return true

         }
     }
     
     function zhen(){

         var t=lose1();
         var u=lose2();
		
         var o=lose4();

        
         if(t==true&&u==true&&o==true){
             return true;
         }else{
             return false;
         }
     } 


	</script>


</html>