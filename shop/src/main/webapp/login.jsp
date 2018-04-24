<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>登录</title>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/swiper.min.js"></script>
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
			<div class="show_table">
				<div class="topmenu clearfix">
					<ul>
						<li>
							<a href="index.jsp" class="til">
								<h3>Home</h3>
								<h4>首页</h4>
							</a>
						</li>
						<li>
							<a href="index.jsp#popular" class="til">
								<h3>Hot recommend</h3>
								<h4>热门推荐</h4>
							</a>
						</li>
						<li>
							<a href="index.jsp#freshUp" class="til">
								<h3>What's new</h3>
								<h4>新鲜上架</h4>
							</a>
						</li>
						<li>
							<a href="index.jsp#diy" class="til">
								<h3>Do it youself</h3>
								<h4>自己搭配</h4>
							</a>
						</li>
					</ul>
				</div>	
			</div>
		</header><!-- /header -->

		<div class="main">
			<form id="form_login" name="form_login" method="get" action="${pageContext.request.contextPath}/login">
			<div class="account-login">
				<div class="u-container">
					<h1 class="m-login-til">欢迎回来 <span>还不是会员？<a href="register.jsp">立即注册</a></span></h1>
					<form id="form_login" name="form_login" method="get" action="login">
						<div class="m-login">
			                <div class="m-form-group">
			                    <input type="text" name="userName" id="userName" value="" placeholder="用户名">
			                </div>
			                <div class="m-form-group">
			                    <input type="password" name="userPwd" id="userPwd" value="" placeholder="密码">
			                </div>
			                <p class="u-err-tips"></p>
			                <div class="m-form-group">
			                    <input type="submit" class="m-btn-primary" value="登录">
			                </div>
			                <div class="login-bottom ">
			                    <a href="#" class="forget">忘记密码?</a>
			                </div>
			            </div>
		            </form>
				</div>
			</div>
			</form>
		</div>

		<footer>
			<div class="footer-ul clearfix">
		      <dl>
			      <dt>配送方式</dt>
			      <dd><a href="delivery.jsp">配送时间</a></dd>
			      <dd><a href="delivery.jsp">配送范围</a></dd>
			      <dd><a href="delivery.jsp">配送收费标准</a></dd>
			      <dd><a href="delivery.jsp">快递查询</a></dd>
		      </dl>
		      <dl>
			      <dt>支付方式</dt>
			      <dd><a href="javascript:;">支付宝</a></dd>
			      <dd><a href="javascript:;">微信支付</a></dd>
			      <dd><a href="javascript:;">实体店支付</a></dd>
			      <dd><a href="javascript:;">优惠券使用</a></dd>
		      </dl>
		      <dl>
			      <dt>售后服务</dt>
			      <dd><a href="javascript:;">退换货流程及退款</a></dd>
			      <dd><a href="javascript:;">订单修改及发票</a></dd>
			      <dd><a href="javascript:;">客服联系方式</a></dd>
			      <dd><a href="javascript:;">跨境购说明</a></dd>
		      </dl>
		      </div>
		</footer>
	</div>

	<script type="text/javascript">
		$(function(){
		    $('.topmenu li').click(function(){
		    	 $('.topmenu li').removeClass('active');
		    	$(this).addClass('active');
		    })
		})
	</script>

</body>
</html>