<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
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
		            	<a href="viewCart.html"><span>14</span></a> 
		            </div>
				</div>
			</div>
		</header><!-- /header -->
		
		<div class="main">
			<div class="center">
				<div class="std">
					<h1>————配送范围和时间————</h1>
					<h2>鲜花商品配送时间和范围：</h2>
					<p>由于鲜花保存和运输的特殊性，针对不同的鲜花商品，我们的配送范围不尽相同。</p>
					<p>花束：24小时内，仅限本市配送。</p>
					<p>花盒：全国派送，仅限韵达快递24小时内可送达地区。</p>
					<p>您可以提前2-7天预订鲜花商品，并可以选择这一区间内的期望收件日期。由于花材准备周期的原因，您不能预订比这一时间段更久的鲜花商品。由于生产和配送的原因，鲜花商品在上海市区周日无法送达，外地周日和周一无法送达。请您留意。</p>
					<p>下单成功后，我们将根据您的要求制作与发货。如无特别情况，我们不会再与您联系确认订单。订单一旦生成，如需取消或修改订单信息（地址，送达日期），请务必于预定收货日期的12小时之前提出。如有质量问题请在签收后24小时内联系客服。</p>
					<h1>————配送运费————</h1>
					<p>商品订单金额（不包含限时送达费、订制费等特殊服务费）满99元免运费，不满则根据距离制定邮费。</p>
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

</body>
</html>