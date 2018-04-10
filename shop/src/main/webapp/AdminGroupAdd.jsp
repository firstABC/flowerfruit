<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>组合管理</title>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
    <script type="text/javascript">
	  	function toAddSingle(){
	    	var option = {
	    		url:'${pageContext.request.getContextPath()}/gs/toPublish',
	    		type :"post",
	    		dataType:'json',
	    		headers:{"ClientCallMode" : "ajax"}, 
	    		success : function(data) {
	    			if(data.message == 'error'){
						alert("发布失败！");
					}else{
						alert("发布成功！");
					}
	            },
	            error: function(data) {
	                alert(JSON.stringify(data) + "--发布失败,请刷新后重试");
	            }
	         };
	   	 	$("#publish_form").ajaxSubmit(option);
	   	 	return false;
	  	}
  	</script>
    
</head>
<body>

	<div class="content">
		<div class="title">
			<a href="AdminUser.html">用户管理</a>
			<a href="AdminProduct.html">商品管理</a>
			<a href="AdminOrder.html">订单管理</a>
			<a href="AdminGroup.html" class="active">组合管理</a>
		</div>
		<div class="table">
			<p>编辑商品</p>
			<form method="post" enctype="multipart/form-data" id="publish_form">
				<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
	    			<tr>
	    				<td width="100">商品名</td>
	    				<td><input type="text" name="gs_title" value=""></td>
	    			</tr>
	    			<tr>
	    				<td width="100">价格</td>
	    				<td><input type="number" name="gs_price" value="" placeholder=""></td>
	    			</tr>
	    			<tr>
	    				<td width="100">分类</td>
	    				<td>
	    					<select id="gs_type">
	    						<option value="A">水果</option>
	    						<option value="B">鲜花</option>
	    					</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td width="100">上传商品图</td>
	    				<td>
	    					<div class="images">
		    					<div class="img">
						             <div class="addhao">
						                 <input type="file" name="file" class="fileinput">
						             </div>
						             <div class="on">
						                <div class="xian"></div>
						                <div class="del"></div>
						             </div>
						         </div>
						    </div>
						</td>
	    			</tr>
	    			<tr>
	    				<td></td>
			            <td style="padding-top: 20px;">
			             	<a href="javascript:toAddSingle();" class="edit">确认发布</a> 
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
			$(".on").mouseover(function () {
			    $(this).children(".xian").show();
			    $(this).children(".del").show();
			});
			$(".on").mouseleave(function () {
			    $(this).children(".xian").hide();
			    $(this).children(".del").hide();
			});
			$(".del").click(function () {
		      	$(this).next().remove();
		      	$(".xian").hide();
		      	$(".del").hide();
		      	$(this).parent().hide();
		      	$(this).parent().siblings(".addhao").show();
		      	$(this).parent().siblings(".addhao").children().val("");
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