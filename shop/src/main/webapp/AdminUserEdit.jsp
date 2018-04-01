<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>用户管理</title>
	<link href="css/admin.css" rel="stylesheet">
    <script src="js/jquery-1.10.1.min.js"></script>
    
</head>
<body>

	<div class="content">
		<div class="title">
			<a href="AdminUser.html" title="">用户管理</a>
			<a href="AdminProduct.html" title="" class="active">商品管理</a>
			<a href="AdminOrder.html" title="">订单管理</a>
		</div>
		<div class="table">
			<p>编辑用户信息</p>
			<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
    			<tr>
    				<td width="100">用户名</td>
    				<td><input type="text" name="" value=""></td>
    			</tr>
    			<tr>
    				<td width="100">手机号</td>
    				<td><input type="tel" name="" value="" placeholder=""></td>
    			</tr>
    			<tr>
    				<td width="100">密码</td>
    				<td><input type="password" name="" value="" placeholder=""></td>
    			</tr>
    			<tr>
    				<td width="100">确认密码</td>
    				<td><input type="password" name="" value="" placeholder=""></td>
    			</tr>
    			<tr>
    				<td></td>
		            <td style="padding-top: 20px;">
		             	<a href="javascript:;" class="edit">编辑</a> 
		            </td>
	            </tr>
    		</table>
		</div>
	</div>

</body>
</html>