<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>商品管理</title>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
	 <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
   <script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
     <script type="text/javascript">
	  	function toEdit(){
	    	var option = {
	    		url:'${pageContext.request.getContextPath()}/goods/toEditNow',
	    		type :"post",
	    		dataType:'json',
	    		headers:{"ClientCallMode" : "ajax"}, 
	    		success : function(data) {
	    			if(data.message == 'error'){
						alert("修改失败！");
					}else{
						alert("修改成功！");
					}
	            },
	            error: function(data) {
	                alert(JSON.stringify(data) + "--修改失败,请刷新后重试");
	            }
	         };
	   	 	$("#publish_form").ajaxSubmit(option);
	   	 	return false;
	  	}
  	</script>
    
</head>
<body>
	<header>
			<jsp:include page="AdminHeader.jsp" flush="true"/>
	</header>
	<div class="content">
		<div class="title">
			<a href="${pageContext.request.contextPath}/AdminUser.jsp">用户管理</a>
			<a href="${pageContext.request.contextPath}/goods/toAdminGoodsManage" class="active">商品管理</a>
			<a href="${pageContext.request.contextPath}/order/orderM">订单管理</a>
			<a href="${pageContext.request.contextPath}/gs/manageA" >组合管理</a>
		</div>
		<div class="table">
			<p>编辑商品</p>
			<form method="post" enctype="multipart/form-data" id="publish_form" name="publish_form">
				<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
	    			<tr>
	    				<td width="100">商品名</td>
	    				<td><input type="text" name="g_title" value="${goodsEdit.g_title }"></td>
	    				<input type="hidden" name="g_id" value="${goodsEdit.g_id }" >
	    			</tr>
	    			<tr>
	    				<td width="100">价格</td>
	    				<td><input type="number" name="g_price" value="${goodsEdit.g_price }" placeholder=""></td>
	    			</tr>
	    			<tr>
	    				<td width="100">状态</td>
	    				<td>
	    					<select name="g_status">
	    						<option value="1"> 推荐 </option>
	    						<option value="2"> 普通 </option>
	    						<option value="3">新品上架</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td width="100">优先级</td>
	    				<td>
	    					<select name="hot_index">
	    						<option value="5"> 第一 </option>
	    						<option value="4"> 第二 </option>
	    						<option value="3">第三</option>
	    						<option value="2">第四</option>
	    						<option value="1">第五</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td width="100">规格说明</td>
	    				<td>
	    					<textarea name="g_parameter" value="">${goodsEdit.g_parameter }</textarea>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td width="100">推荐理由</td>
	    				<td>
	    					<textarea name="g_recommend" value="">${goodsEdit.g_recommend}</textarea>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td></td>
			            <td style="padding-top: 20px;">
			             	<a href="javascript:toEdit();" class="edit">确认修改</a> 
			            </td>
		            </tr>
	    		</table>
    		</form>
		</div>
	</div>

	
	<script>
		// 上传照片  删除照片
		$(" .fileinput").change(function () {
			var file = this.files[0];
			    readFile(file,$(this).parent().siblings(".on"));
			});
			var on =document.querySelector(".on");
			//    需要把阅读的文件传进来file element是把读取到的内容放入的容器
			function readFile(file,element) {
			//        新建阅读器
			var reader = new FileReader();
			//        根据文件类型选择阅读方式
			switch (file.type){
				case 'image/jpg':
				case 'image/png':
				case 'image/jpeg':
				case 'image/gif':
				reader.readAsDataURL(file);
				break;
			}
			//        当文件阅读结束后执行的方法
			reader.addEventListener('load',function () {
			//         如果说让读取的文件显示的话 还是需要通过文件的类型创建不同的标签
				switch (file.type){
				    case 'image/jpg':
				    case 'image/png':
				    case 'image/jpeg':
				    case 'image/gif':
				    var img = document.createElement('img');
				    img.src = reader.result;
				    element.append(img);
				    element.siblings(".addhao").hide();
				    element.show();
				    break;
				}
			});
		}

	</script>

</body>
</html>