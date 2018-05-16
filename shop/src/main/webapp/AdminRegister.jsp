<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/swiper.min.js"></script>
</head>
<body>

	<div class="mainBody">
		<div class="navHeader">        
           	<div class="login" id="index">
            	欢迎来到水果鲜花-后台管理！
          		<a href="${pageContext.request.contextPath}/AdminRegister.jsp">注册</a>                
                <a href="${pageContext.request.contextPath}/AdminLogin.jsp">登录</a></li>
			</div>
			<div class="logo">
				<a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" alt="水果鲜花"></a>
			</div>
		</div>
		<div class="main">
		<form  method="post" action="registerAdmin" onSubmit="return checkForm()">
			<div class="account-login">
				<div class="u-container">
					<h1 class="m-login-til">注册 <span>已经是会员？<a href="AdminLogin.jsp">立即登录</a></span></h1>
					<div class="m-login">
						<div class="m-form-group">
		                    <input type="text" name="adminName" value="" placeholder="姓名" id="name">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="adminPwd" value="" placeholder="密码" id="pwd">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="" value="" placeholder="确认密码" id="pwdR">
		                </div>
		                <p class="u-err-tips"></p>
		                <div class="m-form-group">
		                    <input type="submit" class="m-btn-primary" value="注册">
		                </div>
		            </div>
				</div>
			</div>
		</form>
		</div>

	</div>
	<span id="msg" style="display:none">${msg}</span>
	<script type="text/javascript">
	var cont=$("#msg").text();
	if(cont != null&&cont != ""){
		console.log(cont);
		alert(cont);
	}
	function checkForm(){
		if($('#name').val() == null || $('#name').val() == ""){
			alert("用户名不能为空!");
			return false;
		}
		if($('#pwd').val() ==null ||$('#pwd').val() == ""){
			alert("密码不能为空!");
			return false;
		}
		if($('#pwdR').val() != $('#pwd').val()){
			alert("密码两次输入不一致!");
			return false;
		}
	}
	</script>

</body>
</html>