<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.Orders" %>
<%@ page import="flower.fruit.shop.domain.Goods" %>
<%@ page import="flower.fruit.shop.domain.OrdersVO" %>
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
</head>
<body>
	
	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		</header><!-- /header -->
		<div class="main">
			<div class="topmenu-user clearfix">
				<ul>
					<li><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/order/toMyOrder" title="">我的订单</a></li>
					<li><a href="${pageContext.request.contextPath}/addRess/toMyAddress" title="">配送地址</a></li>
					<li><a href="${pageContext.request.contextPath}/productComment.jsp" title="">商品评价</a></li>
				</ul>
			</div>

			<div class="userCont">
				<!-- 我的订单 -->
				<div class="infoBase">
					<h2>我的订单</h2>
				</div>
				<div class="table">
					<div class="search">
						<form method="post" action="">
	                    	<input class="inputSearch" type="text" name="keyword" autocomplete="off" placeholder="请输入商品名称" value=""><input type="submit" class="btnSearch" value="搜索">
	                    </form>
					</div>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<th>宝贝</th>
							<th>单价</th>
							<th>数量</th>
							<th>商品操作</th>
							<th>实付款</th>
							<th>交易状态</th>
							<th>交易操作</th>
						</tr>
						<%
							List<OrdersVO> ltMyOrder = (List<OrdersVO>)session.getAttribute("ltMyOrder");
							if(ltMyOrder!=null&&ltMyOrder.size()>0){
								for(OrdersVO orders : ltMyOrder){
						%>
						<tr>
							<td class="cpImg">
								<img src="${pageContext.request.contextPath}/upload/<%=orders.getPathname() %>" alt="">
								<p><%=orders.getG_title() %></p>
							</td>
							<td><%=orders.getOr_price() %></td>
							<td><%=orders.getOr_number() %></td>
							<td>
								<a href="javascript:;" title="">退换货</a>
								<a href="javascript:;" title="">投诉商家</a>
							</td>
							<td><%=orders.getOr_price() %></td>
							<td class="cz">
								<p>物流运输中</p>
								<p>查看物流</p>
								<a href="javascript:;" title="">订单详情</a>
							</td>
							<td>
								<!-- <a href="javascript:;" title="">评价</a> -->
								<a href="javascript:toShow('<%=orders.getG_id() %>');" class="plNow">立即评论</a>
							</td>
						</tr>
						<%
								}	
							}
						%>
					</table>
					
					<!-- 写评价 -->
					<div class="protocol-warp formAddress" id="plbox" hidden="hidden">
						<div class="form-list">
							<h2>写评价<a href="javascript:;"  class="delImg"><img src="${pageContext.request.contextPath}/images/del.png" alt="删除"></a></h2>
							<input type="text" name="userId" id="uId" value="${userId }" class="focus" hidden="hidden">
							<input type="text" name="goodsId" id="gId" class="focus" hidden="hidden" value="">
							<div class="writePj">
								<textarea name="commentMsg" id="commentMsg" placeholder="请输入评论内容"></textarea>
							</div>
							<button type="button" title="提交" class="buttonTj" onclick="javascript:addConsult()"><span>提交</span></button>
						
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

	
		<!-- style="display:none" -->
		
		
	<script type="text/javascript">

	function toShow(g_id){
		$("#gId").val(g_id)
		$('#plbox').show();
	}
	function addConsult(){
		var userId = $("#uId").val();
		var goodsId = $("#gId").val();
		var commentMsg = $("#commentMsg").val();
		var a = $.ajax({
			url:'${pageContext.request.getContextPath()}/com/addConsult',
    		type :'post',
    		data:{
    			userId:userId,
    			goodsId:goodsId,
    			commentMsg:commentMsg,
    			commentType:"1"
    		}, 
    		success:function(data){
    			if(data == 'error'){
    				alert("评论失败！");
    			}else{
    				$('#plbox').hide();
    				alert("评论成功！");
    			}
    		}
		});
		
	}
		$(function(){
			 $('.delImg, .buttonTj').on('click', function(event) {
			    	$('#plbox').hide();
			  });
		})
	</script>

</body>
</html>