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

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/pick.min.1.0.2.js"></script>
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		</header><!-- /header -->
		<input type="text" value="${userId }" hidden="hidden" id="uId">
		<div class="main">
			<div class="topmenu-user clearfix">
				<ul>
					<li><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
					<li><a href="myMenu.html" title="">我的订单</a></li>
					<li><a href="myAddress.html" title="">配送地址</a></li>
					<li class="active"><a href="productComment.jsp" title="">商品评价</a></li>
				</ul>
			</div>

			<div class="userCont">
				<!-- 商品评价 -->
				<div class="infoBase">
					<h2>商品评价</h2>
				</div>
				<div class="table">
				 <table cellpadding="0" cellspacing="0" border="0" id="comment">
						<tr id="first">
							<th></th>
							<th></th>
							<th>宝贝信息</th>
						</tr>
						<!-- <div class="com" >
						</div> -->
				 </table>
					
					
				</div>
			</div>
			<input type="hidden" id="currentPage" value="1">	
			<input type="hidden" id="maxPage">
		</div>
		
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
	var currentPage=$('#currentPage').val();
	//获取用户评价列表  
	$(function(){
		firstPage();
	})
	function showCommentList(userId,currentPage){
		
		
		$.ajax({
			url:'${pageContext.request.getContextPath()}/com/getConsultByUser',
			async: false,
			type:'get',
			data:{
				userId:userId,
				currentPage:currentPage
			},
			dataType:'json',
			success:function(data){
				/* var dataArr=JSON.parse(data); */
				$('#maxPage').val(data.maxPage);	
				var commentVOArr = data.data;
				$('#first').nextAll().remove();
				$('.pagination').remove();
				//$('#comment').append("<table cellpadding='0' cellspacing='0' border='0' ><tr><th></th><th></th><th>宝贝信息</th></tr>");
				for(var i=0;i<commentVOArr.length;i++){
					var commentVO=commentVOArr[i];
					if(commentVO.commentType == '2'){//中差评
						$('#comment').append("<tr><td><img src='images/noGood.png' alt='中评'></td><td><p class='text'>"
								+commentVO.commentMsg+"</p><p class='date'>"
								+commentVO.commentDate+"</p></td><td><a href='javascript:;' title=''>"
								+commentVO.goodsName+"</a></td></tr>");
					}else{//默认好评
						$('#comment').append("<tr><td><img src='images/good.png' alt='好评'></td><td><p class='text'>"
								+commentVO.commentMsg+"</p><p class='date'>"
								+commentVO.commentDate+"</p></td><td><a href='javascript:;' title=''>"
								+commentVO.goodsName+"</a></td></tr>");
					}
				}
				//循环完之后再加上分页 
				if(commentVOArr!=null && commentVOArr!=''){
					$('#comment').append("<div class='pagination'>"+
							"<a href='javascript:void(0)' onclick='firstPage()'>首页</a>" 
							+"&nbsp;<a href='javascript:void(0)' onclick='lastPage()'>上一页</a>"
							+"&nbsp;<a href='javascript:void(0)' onclick='nextPage()'>下一页</a>"
							+"&nbsp;<a href='javascript:void(0)' onclick='endPage()'>尾页</a>&nbsp;" 
							+$('#currentPage').val()+"/共"+$('#maxPage').val()+"页"  
							+"</div>");
				}else{
					$('#comment').append("<p class='pagination'>暂无评价~</P>");
				}
				//$('#comment').append("</table>");
			}
		});
	}
	//评论分页功能 
	//首页
	function firstPage(){
		$('#currentPage').val("1");
		showCommentList(userId,1);
	}
	//上一页
	function lastPage(){
		var current=$('#currentPage').val();
		if(current==1){
			showCommentList(userId,current);
		}else if(current>1){
			$('#currentPage').val(parseInt(current)-parseInt(1));
			showCommentList(userId,parseInt(current)-parseInt(1));
		}
	}
	//下一页
	function nextPage(){
		var current=$('#currentPage').val();
		var maxPage=$('#maxPage').val();
		if(current==maxPage){
			showCommentList(userId,current);
		}else if(current<maxPage){
			$('#currentPage').val(parseInt(current)+parseInt(1));
			showCommentList(userId,parseInt(current)+parseInt(1));
		}
	}
	//尾页
	function endPage(){
		var maxPage=$('#maxPage').val();
		showCommentList(userId,maxPage);
	}
	</script>

</body>
</html>