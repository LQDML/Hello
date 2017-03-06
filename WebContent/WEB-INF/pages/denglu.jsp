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


<title>后台登录</title>
</head>
<body style="background: #fff url(../imgs/1.jpg) 50% 0 no-repeat;">
	<h1>
		后台登录<sup>V2017</sup>
	</h1>
	<div class="login" style="margin-top: 50px;">

		<div class="web_qr_login" id="web_qr_login"
			style="display: block; height: 235px;">
			<!--登录-->
			<div class="web_login" id="web_login">
				<div class="login-box">
					<div class="login_form">
						<form action="<%=basePath  %>denglu/user" name="loginform"
							accept-charset="utf-8" id="login_form" class="loginForm"
							method="post" onsubmit="return zhen()">
							<input type="hidden" name="did" value="0" /> <input type="hidden"
								name="to" value="log" />
							<div class="uinArea" id="uinArea">
								<label class="input-tips" for="u">帐号：</label>
								<div class="inputOuter" id="uArea">
									<input type="text" id="u" name="shu2" class="inputstyle"
										onblur="lose4()" />
								</div>
							</div>
							<div class="pwdArea" id="pwdArea">
								<label class="input-tips" for="p">密码：</label>
								<div class="inputOuter" id="pArea">

									<input type="password" id="p" name="mi" class="inputstyle"
										onblur="lose1()" />
								</div>
							</div>

							<div style="padding-left: 50px; margin-top: 20px;">
								<input type="submit" value="登 录" style="width: 80px;"
									class="button_blue" /> <a href="<%=basePath  %>denglu/zhuce"><input
									type="button" value="注册"
									style="width: 80px; margin-left: 15px;" class="button_blue"></a>
							</div>
						</form>
					</div>
				</div>

			</div>
			<!--登录end-->
		</div>
	</div>

</body>

<script type="text/javascript">

      var url;
        var b4;
        function lose4(){
            b4=document.getElementsByName("shu2")[0];
            var ze=/^[a-zA-Z]{4,}$/;
            if(!ze.test(b4.value)){
                return false;
            }else{
           
                return true;
            }
        }
		
        var b1;
        function lose1(){
            b1=document.getElementsByName("mi")[0];
            var ze=/^\w{6,16}$/;
            if(!ze.test(b1.value)){
                return false;
            }else{      
                return true;
            }
        }
        
        function zhen(){
            var t=lose1();
            var o=lose4();
            if(t==true&&o==true){
                return true;
            }else{
                return false;
            }
        }
 
</script>


</html>