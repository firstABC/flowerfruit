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
		<jsp:include page="header.jsp" flush="true"/>
		<div class="main">
			<div class="topmenu-user clearfix">
				<ul>
					<li><a href="${pageContext.request.contextPath}/getUserInfoById?userId=${userId}" title="">基本信息</a></li>
					<li><a href="${pageContext.request.contextPath}/myMenu.jsp" title="">我的订单</a></li>
					<li><a href="${pageContext.request.contextPath}/myAddress.jsp" title="">配送地址</a></li>
					<li><a href="${pageContext.request.contextPath}/productComment.jsp" title="">商品评价</a></li>
				</ul>
			</div>

			<div class="userCont">
				<!-- 我的订单 -->
				<div class="infoBase">
					<h2>我的订单</h2>
				</div>
				<div class="table">
					<div class="search">
						<form method="post" action="">
	                    	<input class="inputSearch" type="text" name="keyword" autocomplete="off" placeholder="请输入商品名称" value=""><input type="submit" class="btnSearch" value="搜索">
	                    </form>
					</div>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<th>宝贝</th>
							<th>单价</th>
							<th>数量</th>
							<th>商品操作</th>
							<th>实付款</th>
							<th>交易状态</th>
							<th>交易操作</th>
						</tr>
						<tr>
							<td class="cpImg">
								<img src="images/hot5.jpg" alt="">
								<p>水果鲜花水果鲜花水果鲜花水果鲜花</p>
							</td>
							<td>69.00</td>
							<td>1</td>
							<td>
								<a href="javascript:;" title="">退换货</a>
								<a href="javascript:;" title="">投诉商家</a>
							</td>
							<td>69.00</td>
							<td class="cz">
								<p>物流运输中</p>
								<p>查看物流</p>
								<a href="javascript:;" title="">订单详情</a>
							</td>
							<td>
								<a href="javascript:;" title="">确认收货</a>
							</td>
						</tr>

						<tr>
							<td class="cpImg">
								<img src="images/hot5.jpg" alt="">
								<p>水果鲜花水果鲜花水果鲜花水果鲜花</p>
							</td>
							<td>69.00</td>
							<td>1</td>
							<td>
								<a href="javascript:;" title="">申请售后</a>
								<a href="javascript:;" title="">投诉商家</a>
							</td>
							<td>69.00</td>
							<td class="cz">
								<p>交易成功</p>
								<p>查看物流</p>
								<a href="javascript:;" title="">订单详情</a>
							</td>
							<td>
								<a href="productPj.html" title="">评价</a>
								<a href="product.html" title="">再次购买</a>
							</td>
						</tr>

						<tr>
							<td class="cpImg">
								<img src="images/hot5.jpg" alt="">
								<p>水果鲜花水果鲜花水果鲜花水果鲜花</p>
							</td>
							<td>69.00</td>
							<td>1</td>
							<td>
								<a href="javascript:;" title="">申请售后</a>
								<a href="javascript:;" title="">投诉商家</a>
							</td>
							<td>69.00</td>
							<td class="cz">
								<p>交易成功</p>
								<p>查看物流</p>
								<a href="javascript:;" title="">订单详情</a>
							</td>
							<td>
								<a href="productPj.html" title="">追加评价</a>
							</td>
						</tr>
					</table>
			</div>
			
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
		$(function(){
		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })
		    // 城市三级联动
		    $(".pick-area").pickArea({
		        "format":"province/city/county", //格式
		        "display":"block",
		        "width":"400",//设置“省市县”文本边框的宽度
		        "height":"28",//设置“省市县”文本边框的高度
		        "borderColor":"#435abd",//设置“省市县”文本边框的色值
		        "arrowColor":"#eb0f00",//设置下拉箭头颜色
		        "listBdColor":"#b6b6b6",//设置下拉框父元素ul的border色值
		        "color":"#33",//设置“省市县”字体颜色
		        "fontSize":"14px",//设置字体大小
		        "hoverColor":"#eb0f00",
		        "paddingLeft":"5px",//设置“省”位置处的span相较于边框的距离
		        "arrowRight":"30px",//设置下拉箭头距离边框右侧的距离
		        "maxHeight":"200px",
		        //"preSet":"",//数据初始化 ；这里的数据初始化有两种方式，第一种是用preSet属性设置，第二种是在a标签里使用name属性设置
		        "getVal":function(){//这个方法是每次选中一个省、市或者县之后，执行的方法
		            //console.log($(".pick-area-hidden").val())
		            //console.log($(".pick-area-dom").val())
		            var thisdom = $("."+$(".pick-area-dom").val());//返回的是调用这个插件的元素pick-area，$(".pick-area-dom").val()的值是该元素的另一个class名，这个class名在dom结构中是唯一的，不会有重复，可以通过这个class名来识别这个pick-area
		            thisdom.next().val($(".pick-area-hidden").val());//$(".pick-area-hidden").val()是页面中隐藏域的值，存放着每次选中一个省、市或者县的时候，当前文本存放的省市县的最新值，每点击一次下拉框里的li，这个值就会立即更新
		        }
		    });
		})
	</script>

</body>
</html>