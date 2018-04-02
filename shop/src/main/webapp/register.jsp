<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/swiper.min.js"></script>
</head>
<body>

	<div class="mainBody">
		<header>
			<div class="navHeader">
				<div class="login">
					欢迎来到水果鲜花！
					<a href="login.html">登录</a>
					<a href="register.html">注册</a> 
				</div>
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="水果鲜花"></a>
				</div>
				<div class="right-contaier">
					<div class="select">
		                <form>
		                    <input class="post" type="button">
		                    <input class="text" type="text" value="">
		                </form>
		            </div>
		             <div class="cart">
		            	<a href="viewCart.html"></a> 
		            </div>
				</div>
			</div>
			<div class="show_table">
				<div class="topmenu clearfix">
					<ul>
						<li>
							<a href="index.html" class="til">
								<h3>Home</h3>
								<h4>首页</h4>
							</a>
						</li>
						<li>
							<a href="index.html#popular" class="til">
								<h3>Hot recommend</h3>
								<h4>热门推荐</h4>
							</a>
						</li>
						<li>
							<a href="index.html#freshUp" class="til">
								<h3>What's new</h3>
								<h4>新鲜上架</h4>
							</a>
						</li>
						<li>
							<a href="index.html#diy" class="til">
								<h3>Do it youself</h3>
								<h4>自己搭配</h4>
							</a>
						</li>
					</ul>
				</div>	
			</div>
		</header><!-- /header -->

		<div class="main">
			<div class="account-login">
				<div class="u-container">
					<h1 class="m-login-til">注册 <span>已经是会员？<a href="login.html">立即登录</a></span></h1>
					<div class="m-login">
						<div class="m-form-group">
		                    <input type="text" name="" placeholder="姓名">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="" placeholder="密码">
		                </div>
		                <div class="m-form-group">
		                    <input type="password" name="" placeholder="确认密码">
		                </div>
		                <div class="m-form-group">
		                    <input type="text" class="phone-area J_Must" name="area" value="+86" placeholder="国际区号">
		                    <input type="text" class="phone-number J_Must" name="mobile" placeholder="手机号">
		                    <samp id="sendcode"><button type="button" class="m-btn half-sub " value="">获取验证码</button>
		                </div>
		                <div class="m-form-group">
		                    <input type="text" placeholder="短信验证码" name="mcode">
		                </div>
		                <div class="m-form-group">
		                    <input type="checkbox">&nbsp;我已阅读和同意 <a href="javascript:;" class="server">《水果鲜花服务条款》</a>
		                </div>
		                <p class="u-err-tips"></p>
		                <div class="m-form-group">
		                    <button type="button" class="m-btn-primary">注册</button>
		                </div>
		            </div>
				</div>
			</div>
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
	</script>

</body>
</html>