<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/pick.min.1.0.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/numPrice.js"></script>
</head>
<body>

	<div class="mainBody">
		<jsp:include page="header.jsp" flush="true"/>

		<div class="main">
			<div class="product clearfix">
				<div class="productLeft">
					<img src="${pageContext.request.contextPath}/upload/${goodsDetal.ltMage.get(0).pathName }" alt="">
					<!-- <img src="images/hot2.jpg" alt=""> -->
				</div>
				<div class="productRight">
					<div class="brand"><a href="javascript:;">${goodsDetal.g_title}</a></div>
					<div class="price-label price clearfix" style="display: none;">¥${goodsDetal.g_price }</div>
					<div class="price-label sum_price clearfix">￥${goodsDetal.g_price }</div>
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
					<a href="${pageContext.request.contextPath}/goods/toPayment" class="add_link">立即支付</a>
					<div class="note">
			            <h3>规格参数<span>composition</span></h3>
			            <p>${goodsDetal.g_parameter }</p>
	            	</div>
	            	<div class="note">
			            <h3>推荐理由<span>style notes</span></h3>
			            <p><br/>${goodsDetal.g_recommend }</p>
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
		    					<div class="userImg"><img src="${pageContext.request.contextPath}/images/userPic.jpg" alt="用户"></div>
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
		    					<div class="userImg"><img src="${pageContext.request.contextPath}/images/userPic.jpg" alt="用户"></div>
		    					<div class="userText">
		    						<p class="userName">某某某某某</p>
		    						<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
		    						<p class="zp"><span>追评：</span><img src="${pageContext.request.contextPath}/images/hot1.jpg" alt=""></p>
		    					</div>
		    				</div>
		    				<span class="date">2017.12.19</span>
		    			</li>
		    		</ul>
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