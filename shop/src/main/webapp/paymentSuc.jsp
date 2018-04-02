<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>支付成功</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/pick.min.1.0.2.js"></script>
</head>
<body>
	<div class="mainBody">
		<header>
			<div class="navHeader">
				<div class="login">
					欢迎来到水果鲜花！
					<div class="myInfoTi">
						柯志慧
						<div class="myInfo" style="display: none;">
							<ul>
								<li><a href="myInfo.html" title="">基本信息</a></li>
								<li><a href="myMenu.html" title="">我的订单</a></li>
								<li><a href="myAddress.html" title="">配送地址</a></li>
								<li><a href="productComment.html" title="">商品评价</a></li>
							</ul>
						</div>
					</div>
					<a href="javascript:;">退出</a> 
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
			<div class="newcart payment">
	            <div class="paymentSuc">恭喜你，支付成功！</div>

	            <div class="backHome"><a href="index.html">返回首页</a></div>
		    </div>

		</div>

	</div>
	

	<script type="text/javascript">
		$(function(){
		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })
		}); 
	</script>

</body>
</html>