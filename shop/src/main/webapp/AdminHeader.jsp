<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
	
</head>
<body>
	<div class="navHeader">        
           	<div class="login" id="index">
            	欢迎来到水果鲜花-后台管理！
          		<a href="${pageContext.request.contextPath}/AdminRegister.jsp">注册</a>                
                <a href="${pageContext.request.contextPath}/AdminLogin.jsp">登录</a></li>
			</div>
    			
 			<div class="login" id="success">
				欢迎来到水果鲜花-后台管理！
				<div class="myInfoTi">
					<span id="user">${adminName}</span>
				</div>
				<a href="${pageContext.request.contextPath}/outAdmin">退出</a> 
			</div>
          		
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt="水果鲜花"></a>
			</div>
	</div>
</body>
<script type="text/javascript">
var userName = $('#user').text();
if(userName != null&&userName !=""){
	$('#index').hide();
	$('#success').show();
}else{
	$('#success').hide();
}
</script>
</html>