<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.GoodsSingle" %>
<%@ page import="flower.fruit.shop.domain.Goods" %>
<%@ page import="flower.fruit.shop.domain.Images" %>
<!DOCTYPE html>
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
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		</header>
		<div class="main">
			<div class="product clearfix">
				<div class="productLeft productLeft2">
				<%
					List<GoodsSingle> ltGS =  (List<GoodsSingle>)session.getAttribute("gsLt");
					if(ltGS!=null&&ltGS.size()>0){
						for(GoodsSingle goodsSingle:ltGS){
				%>
					<input type="hidden" name="g_price" value="${goodsSingle.gs_price}">
				    <input type="hidden" name="g_id" value="${goodsSingle.gs_id}">
					<img src="${pageContext.request.contextPath}/upload/<%=goodsSingle.getLtMage().get(0).getPathName() %>" alt="">
				<%
						}
					}
				%>	
				</div>
				<div class="productRight">
					<div class="brand"><a href="javascript:;">水果鲜花自由搭配</a></div>
					<div class="price-label price clearfix" style="display: none;">¥${gs_priceS}</div>
					<div class="price-label sum_price clearfix">￥${gs_priceS}</div>
					<!-- <div class="size">
						<ul>
							<li class="active"><a href="javascript:;" title="">S</a></li>
							<li><a href="javascript:;" title="">M</a></li>
							<li><a href="javascript:;" title="">L</a></li>
						</ul>
					</div> -->
					<div class="size amount_box">
                    	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
					</div>
					<!-- <a href="javascript:;" class="cart">加入购物车</a> -->
					<a href="${pageContext.request.contextPath}/order/toPaymentZ" class="add_link">立即结算</a>
					<div class="note remark">
			            <h3>备注<span>remark</span></h3>
			            <div class="remarkInput"><textarea placeholder="请输入您的要求"></textarea></div>
			        </div>
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
</html>