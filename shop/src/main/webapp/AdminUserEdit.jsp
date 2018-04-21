<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<header>
			<jsp:include page="AdminHeader.jsp" flush="true"/>
	</header>
	<div class="content">
		<div class="title">
			<a href="${pageContext.request.contextPath}/AdminUser.jsp" class="active">用户管理</a>
			<a href="${pageContext.request.contextPath}/goods/toAdminGoodsManage">商品管理</a>
			<a href="${pageContext.request.contextPath}/order/orderM">订单管理</a>
			<a href="${pageContext.request.contextPath}/gs/manageA" >组合管理</a>
		</div>
		<div class="table">
			<p>编辑用户信息</p>
			<form action="" method="post" id="updateUserForm2">
			<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
			<input type="text" name="userId" value="${sessionScope.user.userId }" hidden="hidden">
    			<tr>
    				<td width="100">用户名</td>
    				<td><input type="text" name="userName" value="${sessionScope.user.userName}" id="name"></td>
    			</tr>
    			<tr>
    				<td width="100">手机号</td>
    				<td><input type="tel" name="userPhone" value="${sessionScope.user.userPhone}" placeholder=""></td>
    			</tr>
    			<tr>
    				<td width="100">详细地址</td>
    				<td><input type="tel" name="userAddress" value="${sessionScope.user.userAddress}" placeholder=""></td>
    			</tr>
    			<tr>
    				<td width="100">密码</td>
    				<td><input type="password" name="userPwd" value="${sessionScope.user.userPwd}" placeholder="" id="pwd"></td>
    			</tr>
    			<tr>
    				<td width="100">确认密码</td>
    				<td><input type="password" name="" value="" placeholder="" id="pwdR"></td>
    			</tr>
    			<tr>
    				<td></td>
		            <td style="padding-top: 20px;">
		             	<a href="javascript:updateUser()" class="edit">编辑</a> 
		            </td>
	            </tr>
    		</table>
    		</form>
		</div>
	</div>
	<script type="text/javascript">
	function updateUser(){
		if($('#name').val() == null || $('#name').val() == ""){
			alert("用户名不能为空!");
		}else if($('#pwd').val() ==null ||$('#pwd').val() == ""){
			alert("密码不能为空!");
			return false;
		}else if($('#pwdR').val() != $('#pwd').val()){
			alert("密码两次输入不一致!");
		}else{
			var params = $('#updateUserForm2').serialize();;
			var a = $.ajax({
				url:'${pageContext.request.getContextPath()}/updateUser',
	    		type :'post',
	    		data:params, 
	    		success:function(data){
	    			if(data == 'success'){
	    				alert("修改成功！");
	    				window.location.href="${pageContext.request.getContextPath()}/AdminUser.jsp";
	    			}else if(data =='warn'){
	    				alert("用户名重复！");
	    			}else{
	    				window.location.href="${pageContext.request.getContextPath()}/AdminLogin.jsp";
	    			}
	    		}
			});
		}
	}
	</script>
</body>
</html>