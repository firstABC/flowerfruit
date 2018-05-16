<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

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
					<li  class="active"><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
					<li><a href="${pageContext.request.contextPath}/order/toMyOrder" title="">我的订单</a></li>
					<li><a href="${pageContext.request.contextPath}/addRess/toMyAddress" title="">配送地址</a></li>
					<li><a href="${pageContext.request.contextPath}/productComment.jsp" title="">商品评价</a></li>
				</ul>
			</div>
			
			<div class="userCont">
				<!-- 基本信息 -->
				<div class="infoBase">
					<h2>基本信息</h2>
				</div>
				<form action="" id="updateUserForm">
				<div class="form-list">
					<input type="text" name="userId" value="${sessionScope.user.userId }" hidden="hidden" class="focus" id="uId">
					<div class="field">
	                  	<label for="username"><em>*</em>姓名</label>
	                  	<div class="input-box">
	                    	<input type="text" name="userName" value="${sessionScope.user.userName}" title="" class="input-text" id="name">
	                  	</div>
	                </div>
	                <div class="field">
	                  	<label for="phone"><em>*</em>手机号</label>
	                  	<div class="input-box">
	                  		<input type="tel" name="userPhone" value="${sessionScope.user.userPhone}" placeholder="" class="input-text">
	                  	</div>
	                </div>
	                <div class="field">
	                  	<label for="address"><em>*</em>详细地址</label>
	                  	<div class="input-box">
	                    	<input type="text" name="userAddress" value="${sessionScope.user.userAddress}" title="" class="input-text">
	                  	</div>
	                </div>
	                <div class="field">
	                  	<label for="passwordNew"><em>*</em>密码</label>
	                  	<div class="input-box">
	                    	<input type="password" name="userPwd" value="${sessionScope.user.userPwd}" title="" class="input-text" id="pwd">
	                  	</div>
	                </div>
	                <div class="field">
	                  	<label for="confirmation"><em>*</em>确认新的密码</label>
	                  	<div class="input-box">
	                    	<input type="password" name="" value="" title="" class="input-text" id="pwdR">
	                  	</div>
	                </div>
				</div> 
				</form>
			</div>
			<!-- 提交 -->
			<button type="button" title="提交" class="buttonTj" id="updateUser"><span>提交</span></button>
		</div>
		</header><!-- /header -->
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
	var userId = $("#uId").val();
		$("#updateUser").click(function(){
			if($('#name').val() == null || $('#name').val() == ""){
				alert("用户名不能为空!");
			}else if($('#pwd').val() ==null ||$('#pwd').val() == ""){
				alert("密码不能为空!");
				return false;
			}else if($('#pwdR').val() != $('#pwd').val()){
				alert("密码两次输入不一致!");
			}else{
				var params = $('#updateUserForm').serialize();;
				var a = $.ajax({
					url:'${pageContext.request.getContextPath()}/updateUser',
		    		type :'post',
		    		data:params, 
		    		success:function(data){
		    			if(data == 'success'){
		    				alert("修改成功！");
		    				window.location.href="${pageContext.request.getContextPath()}/getUserInfoById?userId="+userId;
		    			}else if(data =='warn'){
		    				alert("用户名重复！");
		    			}else{
		    				window.location.href="${pageContext.request.getContextPath()}/login.jsp";
		    			}
		    		}
				});
			}
		});
	</script>

</body>
</html>