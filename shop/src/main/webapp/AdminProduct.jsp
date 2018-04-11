<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.Goods" %>
<%@ page import="flower.fruit.shop.domain.Images" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>商品管理</title>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript">
    	function toEdit(g_id){
    		window.location.href="${pageContext.request.contextPath}/goods/toEdit?g_id="+g_id;
    	}
    </script>
</head>
<body>

	<div class="content">
		<div class="title">
			<a href="AdminUser.html">用户管理</a>
			<a href="javascript:;" class="active">商品管理</a>
			<a href="AdminOrder.html">订单管理</a>
			<a href="AdminGroup.html">组合管理</a>
		</div>
		<div class="table">
			<a href="${pageContext.request.contextPath}/AdminProductPubLish.jsp" class="edit">新增</a>
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
					List<Goods> ltGM = (List<Goods>)session.getAttribute("ltGM");
					if(ltGM!=null&&ltGM.size()>0){
						for(Goods goods : ltGM){
				%>
					<tr>
						<td><%=goods.getG_id() %></td>
						<td><%=goods.getG_title() %></td>
						<td><%=goods.getG_price() %></td>
						<td>
							<%
								List<Images> ltImages = goods.getLtMage();
								if(ltImages!=null && ltImages.size()>0){
									for(Images images : ltImages ){
							%>	
							<img style="height: 480 ;width: 700" src="${pageContext.request.contextPath}/upload/<%=images.getPathName() %>" alt="">
							<%	
									}
								}
							%>
						</td>
						<td><a href="javascript:toEdit('<%=goods.getG_id()%>');" title="">编辑</a></td>
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