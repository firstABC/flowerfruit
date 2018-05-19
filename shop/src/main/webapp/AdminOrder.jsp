<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="flower.fruit.shop.domain.Orders" %>
<%@ page import="flower.fruit.shop.domain.OrdersVO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>订单管理</title>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    
</head>
<body>
	<header>
			<jsp:include page="AdminHeader.jsp" flush="true"/>
	</header>
	<div class="content">
		<div class="title">
			<a href="${pageContext.request.contextPath}/AdminUser.jsp">用户管理</a>
			<a href="${pageContext.request.contextPath}/goods/toAdminGoodsManage" >商品管理</a>
			<a href="${pageContext.request.contextPath}/order/orderM" class="active">订单管理</a>
			<a href="${pageContext.request.contextPath}/gs/manageA" >组合管理</a>
		</div>
		<div class="table">
			<table cellspacing="0" cellpadding="0" class="tb">
				<thead>
					<tr>
						<th>序号</th>
						<th>图片</th>
						<th>商品名</th>
						<th>收货人</th>
						<th>收货人联系方式</th>
						
					</tr>
				</thead>
				<tbody>
				<%
					List<OrdersVO> ltOr = (List<OrdersVO>)session.getAttribute("ltOr");
					//Map map = (Map)session.getAttribute("Or_map");
					if(ltOr!=null&&ltOr.size()>0){
						for(OrdersVO orders : ltOr){
				%>
				
					<tr>
						<td><%=orders.getOr_id() %></td>
						<td class="cpImg">
								<img src="${pageContext.request.contextPath}/upload/<%=orders.getPathname() %>" alt="">
								<p><%=orders.getG_title() %></p>
						</td>
						
						<td><%=orders.getG_title() %></td>
						<td><%=orders.getUa_name() %></td>
						<td><%=orders.getUa_mobile() %></td>
						
						
					</tr>
				<%
						}
					}
				%>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>