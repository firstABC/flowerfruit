<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>后台登录</title>

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
			<div class="account-login">
				<div class="u-container">
					<h1 class="m-login-til">欢迎回来 <span>还不是会员？<a href="AdminRegister.jsp">立即注册</a></span></h1>
					<div class="m-login">
					<form id="form_login" name="form_login" method="get" action="loginAdmin">
		                <div class="m-form-group">
		                    <input type="text" name="adminName" value="" placeholder="用户名">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="adminPwd" value="" placeholder="密码">
		                </div>
		                <p class="u-err-tips"></p>
		                <div class="m-form-group">
		                    <input type="submit" class="m-btn-primary" value="登录">
		                </div>
		                <div class="login-bottom ">
		                    <a href="#" class="forget">忘记密码?</a>
		                </div>
		            </form>
		            </div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>