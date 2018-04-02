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
	<script type="text/javascript" src="js/pick.min.1.0.2.js"></script>
	<script type="text/javascript" src="js/numPrice.js"></script>
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
		            	<a href="viewCart.html"><span>14</span></a> 
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
			<div class="product clearfix">
				<div class="productLeft productLeft2">
					<img src="images/flower1.jpg" alt="">
					<img src="images/fruit1.jpg" alt="">
					<img src="images/fruit2.jpg" alt="">
				</div>
				<div class="productRight">
					<div class="brand"><a href="javascript:;">水果鲜花自由搭配</a></div>
					<div class="price-label price clearfix" style="display: none;">¥680.00</div>
					<div class="price-label sum_price clearfix">￥680.00</div>
					<div class="size">
						<ul>
							<li class="active"><a href="javascript:;" title="">S</a></li>
							<li><a href="javascript:;" title="">M</a></li>
							<li><a href="javascript:;" title="">L</a></li>
						</ul>
					</div>
					<div class="size amount_box">
                    	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
					</div>
					<a href="javascript:;" class="cart">加入购物车</a>
					<a href="payment.html" class="add_link">立即支付</a>
	            	<div class="note">
			            <h3>说明<span>explain</span></h3>
			            <p>我们会根据客户所选择的水果、鲜花进行搭配、包装，我们将竭尽所能满足您的需求。</p>
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


</body>
</html>>