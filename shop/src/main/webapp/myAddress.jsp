<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/pick.min.1.0.2.js"></script>
	<script type="text/javascript">
		function toAddAddress(){
			var ua_name = $("#ua_name").val()
			var ua_mobile = $("#ua_mobile").val()
			var ua_detal = $("#ua_detal").val()
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/addRess/add",
				data:"ua_name="+ua_name+"&ua_mobile="+ua_mobile+"&ua_detal="+ua_detal,
				success:function(data){
					
				}
			});
		}
	</script>
</head>
<body>

	<div class="mainBody">
		<header>
			<div class="navHeader">
				<div class="login">
					欢迎来到水果鲜花！
					<div class="myInfoTi">
						柯志慧
						<div class="myInfo" style="display: none;">
							<ul>
								<li><a href="myInfo.html" title="">基本信息</a></li>
								<li><a href="myMenu.html" title="">我的订单</a></li>
								<li><a href="myAddress.html" title="">配送地址</a></li>
								<li><a href="productComment.html" title="">商品评价</a></li>
							</ul>
						</div>
					</div>
					
					<a href="javascript:;">退出</a> 
				</div>
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="水果鲜花"></a>
				</div>
				<div class="right-contaier">
					<div class="select">
		                <form>
		                    <input class="post" type="button">
		                    <input class="text" type="text" value="">
		                </form>
		            </div>
		            <div class="cart">
		            	<a href="viewCart.html"><span>14</span></a> 
		            </div>
				</div>
			</div>
		</header><!-- /header -->

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
				<!-- 配送地址 -->
				<div class="infoBase">
					<h2>配送地址</h2>
				</div>

				<div class="table">
					<button type="button" title="提交" class="buttonNew"><span>新建配送地址</span></button>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<th>收件人</th>
							<th>手机号</th>
							<th>地址</th>
						</tr>
						<tr>
							<td>南柯</td>
							<td>17602150334</td>
							<td>上海浦东新区塘桥浦建路强生大厦</td>
						</tr>
					</table>
				</div>
				<!-- 新建配送地址 -->
				<div class="protocol-warp formAddress" style="display: none;">
					<div class="form-list">
						<h2>新建配送地址<a href="javascript:;" class="delImg"><img src="${pageContext.request.contextPath}/images/del.png" alt="删除"></a></h2>
						<div class="field">
		                  	<label for="username"><em>*</em>收件人</label>
		                  	<div class="input-box">
		                    	<input type="text" name="ua_name" id="ua_name" value="" title="" class="input-text">
		                  	</div>
		                </div>
		                <div class="field">
		                  	<label for="phone"><em>*</em>手机号</label>
		                  	<div class="input-box">
		                  		<input type="tel" name="ua_mobile" id="ua_mobile" value="" placeholder="" class="input-text">
		                  	</div>
		                </div>
						<div class="field">
		                  	<label><em>*</em>省份</label>
		                  	<div class="input-box pick-area"></div>
		                </div>
		                <div class="field">
		                  	<label for="address"><em>*</em>详细地址</label>
		                  	<div class="input-box">
		                    	<input type="text" name="ua_detal" id="ua_detal" value="" title="" class="input-text">
		                  	</div>
		                </div>

						<!-- 提交 -->
						<button type="button" title="提交" class="buttonTj" onclick="toAddAddress()"><span>提交</span></button>
					</div> 
				</div>
				
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
		    $('.buttonNew').click(function(){
		    	$('.formAddress').show();
		    })
		    $('.delImg, .buttonTj').on('click', function(event) {
		    	$('.formAddress').hide();
		    });

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