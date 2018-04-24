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
            	欢迎来到水果鲜花！
          		<a href="${pageContext.request.contextPath}/register.jsp">注册</a>                
                <a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
			</div>
    			
 			<div class="login" id="success">
				欢迎来到水果鲜花！
				<div class="myInfoTi">
					<span id="user">${userName}</span>
					<div class="myInfo" style="display: none;">
						<ul>
							<li><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
							<li><a href="${pageContext.request.contextPath}/myMenu.jsp" title="">我的订单</a></li>
							<li><a href="${pageContext.request.contextPath}/myAddress.jsp" title="">配送地址</a></li>
							<li><a href="${pageContext.request.contextPath}/productComment.jsp" title="">商品评价</a></li>
						</ul>
					</div>
				</div>
				<a href="${pageContext.request.contextPath}/out">退出</a> 
			</div>
          		
			<div class="logo">
				<a href="${pageContext.request.contextPath}/switch/index"><img src="${pageContext.request.contextPath}/images/logo.png" alt="水果鲜花"></a>
			</div>
			<div class="right-contaier">
				<div class="select">
	                <form>
	                    <input class="post" type="button">
	                    <input class="text" type="text" value="">
	                </form>
	            </div>
	            <div class="cart">
	            	<a href="${pageContext.request.contextPath}/viewCart.jsp"><span>14</span></a> 
	            </div>
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