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
			<a href="AdminProduct.html" title="" class="active">商品管理</a>
			<a href="AdminOrder.html" title="">订单管理</a>
		</div>
		<div class="table">
			<p>编辑商品</p>
			<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
    			<tr>
    				<td width="100">商品名</td>
    				<td><input type="text" name="" value=""></td>
    			</tr>
    			<tr>
    				<td width="100">价格</td>
    				<td><input type="number" name="" value="" placeholder=""></td>
    			</tr>
    			<tr>
    				<td width="100">时间</td>
    				<td><input type="date" name="" value=""></td>
    			</tr>
    			<tr>
    				<td width="100">上传商品图</td>
    				<td>
    					<p class="uploadTs">最多可上传4张图片</p>
    					<div class="images">
	    					<div class="img">
					             <div class="addhao">
					                 <input type="file" name="" class="fileinput">
					             </div>
					             <div class="on"></div>
					         </div>
					         <div class="img">
					             <div class="addhao">
					                 <input type="file" name="" class="fileinput">
					             </div>
					             <div class="on"></div>
					         </div>
					         <div class="img">
					             <div class="addhao">
					                 <input type="file" name="" class="fileinput">
					             </div>
					             <div class="on"></div>
					         </div>
					         <div class="img">
					             <div class="addhao">
					                 <input type="file" name="" class="fileinput">
					             </div>
					             <div class="on"></div>
					         </div>
					    </div>
					</td>
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