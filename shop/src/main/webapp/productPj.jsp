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
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		</header><!-- /header -->

		<div class="main">
			<div class="product clearfix">
				<div class="productLeft">
					<img src="images/hot1.jpg" alt="">
					<!-- <img src="images/hot2.jpg" alt=""> -->
				</div>
				<div class="productRight">
					<div class="brand"><a href="javascript:;">水果鲜花产品</a></div>
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
			            <h3>规格参数<span>composition</span></h3>
			            <p>它具有清新特别的颜色，高品质的天鹅绒外盒，更配有可爱的苔藓小熊，可谓人见人爱。</p>
	            	</div>
	            	<div class="note">
			            <h3>推荐理由<span>style notes</span></h3>
			            <p>花盒尺寸：18*18*12cm<br/>早在20世纪的德国出现。它是用高科技手段，将鲜花经过脱水、保色、干燥等复杂程序加工而成的干花。永生花的色泽、手感与鲜花无异，它保持了鲜花的特质，却可以更长久地陪伴在身边（一般可保存3年以上），是“永不凋谢”的鲜花。</p>
	            	</div>
	            	<div class="note">
			            <h3>退换货说明<span>return & exchange</span></h3>
			            <p>普通商品如有质量问题，请在签收后7日内联系客服。鲜花和永生花产品不接受7天无理由退换货，如有质量问题，请在签收后24小时内联系客服。</p>
	            	</div>
				</div>
			</div>

			<div class="comment">
				<div class="pjTitle">
		    		<div class="line"></div>
		    		<p>用户评价</p>
		    	</div>
		    	<div class="commentNote clearfix">
		    		<ul>
		    			<li>
		    				<div class="commentCont clearfix">
		    					<div class="userImg"><img src="images/userPic.jpg" alt="用户"></div>
		    					<div class="userText">
		    						<p class="userName">某某某某某</p>
		    						<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
		    						<p class="zp"><span>追评：</span>追评内容追评内容追评内容追评内容追评内容追评内容</p>
		    					</div>
		    				</div>
		    				<span class="date">2017.12.19</span>
		    			</li>
		    			<li>
		    				<div class="commentCont clearfix">
		    					<div class="userImg"><img src="images/userPic.jpg" alt="用户"></div>
		    					<div class="userText">
		    						<p class="userName">某某某某某</p>
		    						<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
		    						<p class="zp"><span>追评：</span><img src="images/hot1.jpg" alt=""></p>
		    					</div>
		    				</div>
		    				<span class="date">2017.12.19</span>
		    			</li>
		    		</ul>
		    	</div>
			</div>

			<div class="userCont">
				<!-- 写评价 -->
				<div class="protocol-warp formAddress">
					<div class="form-list">
						<h2>写评价<a href="product.html" class="delImg"><img src="images/del.png" alt="删除"></a></h2>
						<div class="writePj">
							<textarea name="" placeholder="请输入你的评价内容"></textarea>
						</div>
						<!-- 提交 -->
						<button type="button" title="提交" class="buttonTj" onclick="javascrtpt:window.location.href='product.html'"><span>提交</span></button>
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
</html>