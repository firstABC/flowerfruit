<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>

	<link rel="stylesheet" type="text/css" href="css/swiper.min.css">
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
		            	<a href="viewCart.html"><span>14</span></a> 
		            </div>
				</div>
			</div>
			<div class="show_table">
				<div class="topmenu clearfix">
					<ul>
						<li class="active">
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
			<!-- 轮播图 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="images/banner1.jpg" alt=""></div>  
					<div class="swiper-slide"><img src="images/banner2.jpg" alt=""></div>  
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div> 
			</div>

			<!-- 热门推荐 -->
			<div class="popular" id="popular">
				<h1>热门推荐&nbsp;Hot recommend</h1>
				<div class="popularLeft">
					<a href="product.html"><img src="images/hot1.jpg" alt=""></a>
				</div>
				<div class="popularRight">
					<div class="new-product">
						<a href="product.html"><img src="images/hot2.jpg" alt=""></a>
					</div>
					<ul>
						<li>
							<a href="product.html"><img src="images/hot3.jpg" alt=""></a><img src="images/hotIcon.png" class="hot" alt="热卖">
						</li>
						<li>
							<a href="product.html"><img src="images/hot4.jpg" alt=""></a><img src="images/hotIcon.png" class="hot" alt="热卖">
						</li>
						<li>
							<a href="product.html"><img src="images/hot5.jpg" alt=""></a><img src="images/hotIcon.png" class="hot" alt="热卖">
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 新鲜上架 -->
			<div class="freshUp" id="freshUp">
				<h1>新鲜上架&nbsp;What's new</h1>
				<div class="freshItem">
					<ul>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic1.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic2.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic3.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic4.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic5.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic5.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>

						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic4.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic3.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic2.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
						<li>
							<a href="product.html" title="">
								<div class="img"><img src="images/pic1.jpg" alt="新鲜上架"></div>
								<div class="freshText">新鲜上架产品标题</div>
							</a>
						</li>
					</ul>
				</div>
			</div>

			<!-- 自己搭配 -->
			<div class="diy" id="diy">
				<h1>自己搭配&nbsp;Do it youself</h1>
				<div class="diyTitle">
					<ul>
			            <li class="active">
			            	<a href="javascript:;">水果</a>
			            </li>
						<li>
			            	<a href="javascript:;">鲜花</a>
			            </li>
					</ul>
		            <a href="productZ.html" target="" class="zuhe">开始组合</a>
				</div>
				<div class="diyContent">
					<!-- 水果 -->
					<div class="diyGoods">
						<div class="freshItem">
							<ul>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/fruit1.jpg" alt="苹果"></div>
										<div class="freshText">苹果</div>
									</a>
									<div class="select"><span></span></div>
								</li>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/fruit2.jpg" alt="草莓"></div>
										<div class="freshText">草莓</div>
									</a>
									<div class="select"><span></span></div>
								</li>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/fruit3.jpg" alt="葡萄"></div>
										<div class="freshText">葡萄</div>
									</a>
									<div class="select"><span></span></div>
								</li>
							</ul>
						</div>
					</div>
					<!-- 鲜花 -->
					<div class="diyGoods" style="display: none;">
						<div class="freshItem">
							<ul>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/flower3.jpg" alt="薰衣草"></div>
										<div class="freshText">薰衣草</div>
									</a>
									<div class="select"><span></span></div>
								</li>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/flower1.jpg" alt="玫瑰花"></div>
										<div class="freshText">玫瑰花</div>
									</a>
									<div class="select"><span></span></div>
								</li>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/flower2.jpg" alt="栀子花"></div>
										<div class="freshText">栀子花</div>
									</a>
									<div class="select"><span></span></div>
								</li>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="images/flower4.jpg" alt="水仙花"></div>
										<div class="freshText">水仙花</div>
									</a>
									<div class="select"><span></span></div>
								</li>
							</ul>
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


	<script type="text/javascript">
		$(function(){
			// 轮播图
	    	var swiper = new Swiper('.swiper-container', {
	        	pagination: '.swiper-pagination',
	        	slidesPerView: 1,	
	       		slidesPerGroup : 1,
				loop: true,
	       		paginationClickable: true,
				autoplay: 3000
		    });

		    $('.topmenu li').click(function(){
		    	 $('.topmenu li').removeClass('active');
		    	$(this).addClass('active');
		    })

		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })
		    // 自己搭配
		    $('.diyTitle li').click(function(){
		    	if (!$(this).hasClass('active')) {
		    		$('.diyTitle li').removeClass('active');
		    		$(this).addClass('active');
		    	}
				var aa = $(this).index();

		        $('.diyContent').children('.diyGoods').hide();
		        $('.diyContent').children('.diyGoods').eq(aa).show(); 
		    })
		    $('.diyGoods .freshItem li').click(function(){
		    	if (!$(this).hasClass('active')) {
		    		$(this).addClass('active');
		    	}else{
		    		$(this).removeClass('active');
		    	}
		    })
		})
	</script>

</body>
</html>