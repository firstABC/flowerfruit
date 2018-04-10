<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.GoodsSingle" %>
<%@ page import="flower.fruit.shop.domain.Images" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>组合管理</title>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript">
    	function toEditA(gs_id){
    		window.location.href="${pageContext.request.contextPath}/gs/toEditA?gs_id="+gs_id;
    	}
    </script>
</head>
<body>

	<div class="content">
		<div class="title">
			<a href="AdminUser.html">用户管理</a>
			<a href="AdminProduct.html">商品管理</a>
			<a href="AdminOrder.html">订单管理</a>
			<a href="javascript:;" class="active">组合管理</a>
		</div>
		<div class="table">
        	<a href="javascript:;" class="edit">水果</a>
        	<a href="AdminGroup2.html" class="edit2">鲜花</a>

			<a href="AdminGroupEdit.html" class="edit editG">新增</a>
			<table cellspacing="0" cellpadding="0" class="tb">
				<thead>
					<tr>
						<th>序号</th>
						<th>商品名称</th>
						<th>商品价格</th>
						<th>商品图</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<%
					List<GoodsSingle> ltA = (List<GoodsSingle>)session.getAttribute("ltA");
					if(ltA!=null&&ltA.size()>0){
						for(GoodsSingle goodsSingle:ltA){
							
				%>
					<tr>
						<td><%=goodsSingle.getGs_id() %></td>
						<td><%=goodsSingle.getGs_title() %></td>
						<td><%=goodsSingle.getGs_price() %></td>
						<td>
						<%
							List<Images> ltI = goodsSingle.getLtMage();
							if(ltI!=null&&ltI.size()>0){
								for(Images images:ltI){
						%>
							<img src="${pageContext.request.contextPath}/upload/<%=images.getPathName() %>" alt="">
						<%	
								}
							}
						%>
						</td>
						<td><a href="javascript:toEditA('<%=goodsSingle.getGs_id() %>');" title="">编辑</a></td>
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