<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>商品管理</title>
	<link href="css/admin.css" rel="stylesheet">
    <script src="js/jquery-1.10.1.min.js"></script>
    
</head>
<body>

	<div class="content">
		<div class="title">
			<a href="AdminUser.html" title="">用户管理</a>
			<a href="javascript:;" title="" class="active">商品管理</a>
			<a href="AdminOrder.html" title="">订单管理</a>
		</div>
		<div class="table">
			<a href="AdminProductEdit.html" class="edit">新增</a>
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
					<tr>
						<td>1</td>
						<td>Product</td>
						<td>15693256831</td>
						<td><input type="password" disabled="disabled" value="jhijk" placeholder="jhijk"></td>
						<td><a href="javascript:;" title="">编辑</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>Product2</td>
						<td>15693256831</td>
						<td><input type="password" disabled="disabled" value="jhijk" placeholder="jhijk"></td>
						<td><a href="javascript:;" title="">编辑</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td>Product3</td>
						<td>15693256831</td>
						<td><input type="password" disabled="disabled" value="jhijk" placeholder="jhijk"></td>
						<td><a href="javascript:;" title="">编辑</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>