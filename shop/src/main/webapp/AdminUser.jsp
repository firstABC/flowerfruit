<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>用户管理</title>
	<link href="css/admin.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
	<!-- datatable -->
	
	<link rel="stylesheet" type="text/css" href="dataTables/css/dataTables.responsive.css">
	<link rel="stylesheet" type="text/css" href="dataTables/css/dataTables.tableTools.min.css">
	<link rel="stylesheet" type="text/css" href="dataTables/css/jquery.dataTables.min.css">
    
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
			<a href="${pageContext.request.contextPath}/gs/manageA" class="active">组合管理</a>
		</div>
		<div class="table">
			<a href="AdminUserAdd.jsp" class="edit">新增</a>
			<table cellspacing="0" cellpadding="0" class="tb" id="table">
				<thead>
					<tr>
						<th>编号</th>
						<th>用户名</th>
						<th>手机号</th>
						<th>密码</th>
						<th>注册/修改时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- Data Tables -->
    <script type="text/javascript" src="dataTables/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.responsive.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.tableTools.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			console.log( $('#table'));
			var t = $('#table').DataTable({
	           processing: true,
	          	ajax: {
	               //指定数据源
	        	   url:'${pageContext.request.getContextPath()}/getAllUser',
	        	   type:'GET',
	        	   dataType:'json',
	           },
			    columns: [
			    	{"data": "userId"},
	            	{"data": "userName"},
	            	{"data": "userPhone"},
	            	{"data": "userPwd"},
	            	{"data": "userDate"},
	            	{"data": null}
	            ], 
	            aLengthMenu:[3,10],
	            "columnDefs":[{
		            "targets": 5,
		            "defaultContent": "<a href='#' id='editrow' class='btn btn-default' style='margin-right:5px;'>编辑</a><a href='#' id='delrow' class='btn btn-default'>删除</a>" 
		        }],

        		//插件的汉化
		        "language": {
                	url: 'dataTables/Chinese.txt'
            	},
	        });
			/*编辑按钮*/
		    $('#table tbody').on( 'click', 'a#editrow', function () {
		        var data = t.row( $(this).parents('tr') ).data();
		            $.ajax({
		                url:'${pageContext.request.getContextPath()}/getUserInfoByIdAdmin',
		                type:'get',
		                data: {"userId": data.userId}, 
		                timeout:"3000",
		                cache:"false",
		                success:function(str){
		                	window.location.href="${pageContext.request.getContextPath()}/AdminUserEdit.jsp";
		                },
		                error:function(err){
		                    // alert(url);
		                    alert("获取数据失败");
		                }
		            });
		        
		    });
	        /*删除按钮*/
		    $('#table tbody').on( 'click', 'a#delrow', function () {
		        var data = t.row( $(this).parents('tr') ).data();
		        if(confirm("是否确认删除这条信息")){
		            $.ajax({
		                url:'${pageContext.request.getContextPath()}/deleteUser',
		                type:'post',
		                data: {"userId": data.userId}, 
		                timeout:"3000",
		                cache:"false",

		                success:function(str){
		                    if(str == 'success'){
		                        t.row().remove();//删除这行的数据
		                        window.location.href="${pageContext.request.getContextPath()}/AdminUser.jsp";
		                    }else{
		                    	alert("删除失败!");
		                    }
		                },
		                error:function(err){
		                    // alert(url);
		                    alert("获取数据失败");
		                }
		            });
		        }
		    });


	    });
	</script>
</body>
</html>