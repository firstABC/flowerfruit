<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="j${pageContext.request.contextPath}/s/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
			</div>
			<div class="show_table">
				<div class="topmenu clearfix">
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/switch/index" class="til">
								<h3>Home</h3>
								<h4>首页</h4>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/switch/index#popular" class="til">
								<h3>Hot recommend</h3>
								<h4>热门推荐</h4>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/switch/index#freshUp" class="til">
								<h3>What's new</h3>
								<h4>新鲜上架</h4>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/switch/index#diy" class="til">
								<h3>Do it youself</h3>
								<h4>自己搭配</h4>
							</a>
						</li>
					</ul>
				</div>	
			</div>
		</header><!-- /header -->

		<div class="main">
		<form  method="post" action="register" onSubmit="return checkForm()">
			<div class="account-login">
				<div class="u-container">
					<h1 class="m-login-til">注册 <span>已经是会员？<a href="login.jsp">立即登录</a></span></h1>
					<div class="m-login">
						<div class="m-form-group">
		                    <input type="text" name="userName" placeholder="姓名" id="name">
		                </div>
		                <div class="m-form-group">
		                     <input type="text" name="userPhone" placeholder="手机号">
		                </div>
		                <div class="m-form-group">
		                    <input type="text" name="userAddress" placeholder="地址">
		                </div>
		               
		                <div class="m-form-group">
		                    <input type="password" name="userPwd" placeholder="密码" id="pwd">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="" placeholder="确认密码" id="pwdR">
		                </div>
		                <div class="m-form-group">
		                    <input type="checkbox">&nbsp;我已阅读和同意 <a href="javascript:;" class="server">《水果鲜花服务条款》</a>
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

		<footer>
			<div class="footer-ul clearfix">
		      <dl>
			      <dt>配送方式</dt>
			      <dd><a href="delivery.html">配送时间</a></dd>
			      <dd><a href="delivery.html">配送范围</a></dd>
			      <dd><a href="delivery.html">配送收费标准</a></dd>
			      <dd><a href="delivery.html">快递查询</a></dd>
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
	
	<!-- 服务条款 -->
	<div class="protocol-warp" style="display: none">
		<div class="protocol-pop">
			<h1>水果鲜花服务条款</h1>
			<pre>条款内容</pre>
			<div class="protocol-konw">我知道了</div>
		</div>
	</div>

	<span id="msg" style="display:none">${msg}</span>
	<script type="text/javascript">
		$(function(){
		    $('.topmenu li').click(function(){
		    	 $('.topmenu li').removeClass('active');
		    	$(this).addClass('active');
		    })
		    // 服务条款
		    $('.m-form-group .server').click(function(){
		    	$('.protocol-warp').show();
		    })
		    $('.protocol-konw').click(function(){
		    	$('.protocol-warp').hide();
		    })
		})
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