<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="flower.fruit.shop.domain.Orders" %>
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

	<div class="content">
		<div class="title">
			<a href="AdminUser.html" title="">用户管理</a>
			<a href="AdminProduct.html" title="">商品管理</a>
			<a href="javascript:;" title="" class="active">订单管理</a>
		</div>
		<div class="table">
			<table cellspacing="0" cellpadding="0" class="tb">
				<thead>
					<tr>
						<th>序号</th>
						<th>商品名</th>
						<th>收货人</th>
						<th>收货人联系方式</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<%
					List<Orders> ltOr = (List<Orders>)session.getAttribute("ltOr");
					Map map = (Map)session.getAttribute("Or_map");
					if(ltOr!=null&&ltOr.size()>0){
						for(Orders orders : ltOr){
				%>
				
					<tr>
						<td><%=orders.getOr_id() %></td>
						<td><%=map.get(orders.getOr_id()) %></td>
						<td>马雪</td>
						<td>15693256431</td>
						<td><a href="javascript:;" title="">编辑</a></td>
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