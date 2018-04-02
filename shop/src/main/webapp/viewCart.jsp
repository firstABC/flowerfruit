<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>购物车</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script src="js/carts.js"></script>
</head>
<body>
	<div class="mainBody" style="position: absolute;">
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
			<div class="newcart">
				<div class="page-title">
	                <h1>购物车&nbsp;SHOPPING BAG</h1>
	            </div>
	            <!-- 购物车 -->
	            <div class="cart-preview">
	            	<div class="new-pro-list">
		            	 <div class="cartBox">
				            <table class="order_content" cellpadding="0" cellspacing="0" border="0">
				            	<tr class="no-border-top">
				                	<th>
				                		<input type="checkbox" id="all" class="whole_check">
				                    	<label for="all"></label>
				                    </th>
		            				<th colspan="2">全选<span class="group-desc"></span></th>
		            				<th>单价</th><th style="text-align: center">件数</th>
		            				<th>小计</th>
		            				<th>操作</th>
		            			</tr>
				                <tr class="order_lists">
				                    <td>
				                        <input type="checkbox" id="checkbox_8" class="son_check">
				                        <label for="checkbox_8"></label>
				                    </td>
				                    <td><a href="javascript:;" target="_blank"><img src="images/hot4.jpg"></a></td>
				                    <td>
		            					<a href="javascript:;" target="_blank">
				                            <p style="width:300px;padding-right:20px">草莓水果鲜花</p>
				                            <p class="new-sku" style="width:300px;padding-right:20px"></p>
				                            <p class="size">尺寸：S</p>
			                        	</a>
			                        </td>
				                    <td>
				                        <p class="price">￥300</p>
				                    </td>
				                    <td>
			                            <div class="amount_box">
			                            	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
			                            </div>
			                        </td>
				                    <td>
				                        <p class="sum_price">￥300</p>
				                    </td>
				                    <td>
				                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				                    </td>
				                </tr>
				                <tr class="order_lists">
				                    <td>
				                        <input type="checkbox" id="checkbox_9" class="son_check">
				                        <label for="checkbox_9"></label>
				                    </td>
				                    <td>
				                        <div class="list_img"><a href="javascript:;"><img src="images/hot1.jpg" alt=""></a></div>
				                    </td>
				                    <td>
				                    	<p style="width:300px;padding-right:20px">草莓水果鲜花</p>
				                    	<p class="new-sku" style="width:300px;padding-right:20px">规格：默认</p>
			                            <p class="size">尺寸：S</p>
				                    </td>
				                    <td>
				                        <p class="price">￥480</p>
				                    </td>
				                    <td>
				                        <div class="amount_box">
				                        	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
				                        </div>
				                    </td>
				                    <td >
				                        <p class="sum_price">￥480</p>
				                    </td>
				                    <td>
				                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				                    </td>
				                </tr>
				                <tr class="order_lists">
				                    <td>
				                        <input type="checkbox" id="checkbox_9" class="son_check">
				                        <label for="checkbox_9"></label>
				                    </td>
				                    <td>
				                        <div class="list_img"><a href="javascript:;"><img src="images/hot1.jpg" alt=""></a></div>
				                    </td>
				                    <td>
				                    	<p style="width:300px;padding-right:20px">草莓水果鲜花</p>
				                    	<p class="new-sku" style="width:300px;padding-right:20px">规格：默认</p>
			                            <p class="size">尺寸：S</p>
				                    </td>
				                    <td>
				                        <p class="price">￥290</p>
				                    </td>
				                    <td>
				                        <div class="amount_box">
				                        	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
				                        </div>
				                    </td>
				                    <td >
				                        <p class="sum_price">￥290</p>
				                    </td>
				                    <td>
				                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				                    </td>
				                </tr>
				            </table>
				        </div>
				        <!-- 删除弹框 -->
				        <section class="model_bg"></section>
					    <section class="my_model">
					        <p class="title">删除宝贝<span class="closeModel">X</span></p>
					        <p>您确认要删除该宝贝吗？</p>
					        <div class="opBtn">
					        	<a href="javascript:;" class="dialog-close">关闭</a>
					        	<a href="javascript:;" class="dialog-sure">确定</a>
					        </div>
					    </section>
	            	</div>
	            	<!-- 结账 -->
	            	<div class="new-total clearfix" style="width: 1028px; display: block;">
	                    <div class="total-fr">
	                      <span class="piece">已选商品<strong class="piece_num">0</strong>件</span>
	                      <span class="totalMoney">共计: <strong class="total_text">￥0</strong></span>
	                      <a class="new-cart-button" href="paymentSuc.html">立即结算</a>
	                    </div>
	              </div>
	            </div>
				<!-- 购物车为空 -->
				<!-- <div class="cart-empty">
		            <img src="images/cart-null.png" alt="空的购物车"><a href="index.html">去水果鲜花逛逛&gt;&gt;</a>
		        </div> -->
		    </div>
		</div>

	</div>

</body>
</html>