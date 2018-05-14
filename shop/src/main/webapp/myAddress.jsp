<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.UserAddress" %>
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
	<script type="text/javascript">
		function toAddAddress(){
			var ua_name = $("#ua_name").val()
			var ua_mobile = $("#ua_mobile").val()
			var ua_detal = $("#ua_detal").val()
			var ua_province = $("#ua_province").val()
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/addRess/add",
				data:"ua_name="+ua_name+"&ua_mobile="+ua_mobile+"&ua_detal="+ua_detal+"&ua_province="+ua_province,
				success:function(data){
					//跳转
					window.location.href="${pageContext.request.contextPath}/addRess/toMyAddress";
				}
			});
		}
	</script>
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		
		<div class="main">
			<div class="topmenu-user clearfix">
				<ul>
					<li><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/order/toMyOrder" title="">我的订单</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/addRess/toMyAddress" title="">配送地址</a></li>
					<li><a href="${pageContext.request.contextPath}/productComment.jsp" title="">商品评价</a></li>
				</ul>
			</div>

			<div class="userCont">
				<!-- 配送地址 -->
				<div class="infoBase">
					<h2>配送地址</h2>
				</div>

				<div class="table">
					<button type="button" title="提交" class="buttonNew"><span>新建配送地址</span></button>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<th>收件人</th>
							<th>手机号</th>
							<th>地址</th>
						</tr>
						<%
						List<UserAddress> ltAddress = (List<UserAddress>)session.getAttribute("ltAddress");
						if(ltAddress!=null&&ltAddress.size()>0){
							for(UserAddress userAddress:ltAddress){
						%>		
						<tr>
							<td><%=userAddress.getUa_name() %></td>
							<td><%=userAddress.getUa_mobile() %></td>
							<td><%=userAddress.getUa_province() %> <%=userAddress.getUa_detal() %></td>
						</tr>
						<%
							}
						}
						%>
					</table>
				</div>
				<!-- 新建配送地址 -->
				<div class="protocol-warp formAddress" style="display: none;">
					<div class="form-list">
						<h2>新建配送地址<a href="javascript:;" ><img src="${pageContext.request.contextPath}/images/del.png" alt="删除"></a></h2>
						<div class="field">
		                  	<label for="username"><em>*</em>收件人</label>
		                  	<div class="input-box">
		                    	<input type="text" name="ua_name" id="ua_name" value="" title="" class="input-text">
		                  	</div>
		                </div>
		                <div class="field">
		                  	<label for="phone"><em>*</em>手机号</label>
		                  	<div class="input-box">
		                  		<input type="tel" name="ua_mobile" id="ua_mobile" value="" placeholder="" class="input-text">
		                  	</div>
		                </div>
						<div class="field">
		                  	<label><em>*</em>省份</label>
		                  	<div class="input-box">
		                    	<input type="text" name="ua_province" id="ua_province" value="" title="" class="input-text">
		                  	</div>
		                </div>
		                <div class="field">
		                  	<label for="address"><em>*</em>详细地址</label>
		                  	<div class="input-box">
		                    	<input type="text" name="ua_detal" id="ua_detal" value="" title="" class="input-text">
		                  	</div>
		                </div>

						<!-- 提交 -->
						<button type="button" title="提交" class="buttonTj" onclick="toAddAddress()"><span>提交</span></button>
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
		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })
		    $('.buttonNew').click(function(){
		    	$('.formAddress').show();
		    })
		    $('.delImg, .buttonTj').on('click', function(event) {
		    	$('.formAddress').hide();
		    });

		})
	</script>

</body>
</html>