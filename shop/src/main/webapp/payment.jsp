<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>支付</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/css.css">

	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/pick.min.1.0.2.js"></script>
	<!-- 订单支付 -->
	<script type="text/javascript" src="js/carts.js"></script>
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
			<div class="newcart payment">
				<div class="page-title">
	                <h1>支付&nbsp;payment</h1>
	            </div>
	            <!-- 收货地址 -->
	            <div class="adress">
	            	<h2 class="paymentT">收货地址<a href="myAddress.html">管理收货地址</a></h2>
	            	<ul>
	            		<li class="active">
	            			<span class="check"><img src="images/placeIcon.png" alt="地点">&nbsp;寄送至&nbsp;</span>
	            			<label>
		            			<span>安徽省&nbsp;合肥市&nbsp;蜀山区&nbsp;南七街道（柯志慧&nbsp;收）</span>
		            			<em>15306930123</em>
		            			<b>5元邮费</b>
		            		</label>
	            		</li>
	            		<li>
	            			<span class="check"><img src="images/placeIcon.png" alt="地点">&nbsp;寄送至&nbsp;</span>
	            			<label>
		            			<span>安徽省&nbsp;合肥市&nbsp;蜀山区&nbsp;南七街道（柯志慧&nbsp;收）</span>
		            			<em>15306930123</em>
		            			<b>5元邮费</b>
		            		</label>
	            		</li>
            			<a href="javascript:;" title="" class="adressAdd">新增地址</a>
	            	</ul>
	            </div>
	            <!-- 商品 -->
	            <div class="cart-preview">
	            	<h2 class="paymentT">商品信息</h2>
	            	<div class="new-pro-list">
		            	 <div class="cartBox">
				            <table class="order_content" cellpadding="0" cellspacing="0" border="0">
				            	<tr class="no-border-top">
				            		<th>
				                		<input type="checkbox" id="all" class="whole_check">
				                    	<label for="all"></label>
				                    </th>
		            				<th colspan="2">全选<span class="group-desc"></span></th>
		            				<th>单价</th>
		            				<th style="text-align: center">件数</th>
		            				<th>小计</th>
		            			</tr>
				                <tr class="order_lists">
				                	<td>
				                        <input type="checkbox" id="checkbox_8" class="son_check">
				                        <label for="checkbox_8"></label>
				                    </td>
				                    <td><a href="javascript:;" target="_blank"><img src="images/hot4.jpg"></a></td>
				                    <td>
		            					<a href="javascript:;" target="_blank">
				                            <p style="width:300px;padding-right:20px">草莓水果鲜花</p>
				                            <p class="new-sku" style="width:300px;padding-right:20px"></p>
				                            <p class="size">尺寸：S</p>
			                        	</a>
			                        </td>
				                    <td>
				                        <p class="price">￥300</p>
				                    </td>
				                    <td>
			                            <div class="amount_box">
			                            	<span class="reduce reSty">-</span><input class="sum" name="" type="text" value="1" disabled="disabled"><span class="plus">+</span>
			                            </div>
			                        </td>
				                    <td>
				                        <p class="sum_price">￥300</p>
				                    </td>
				                </tr>
				            </table>
				        </div>
	            	</div>
	            	<!-- 结账 -->
	            	<div class="new-total clearfix" style="width: 1028px; display: block;">
	                    <div class="total-fr">
	                      <span class="piece">已选商品<strong class="piece_num">0</strong>件</span>
	                      <span class="totalMoney">共计: <strong class="total_text">￥0</strong></span>
	                      <a class="new-cart-button" href="paymentSuc.html">立即结算</a>
	                    </div>
	                </div>
	            </div>
		    </div>

		    <div class="userCont">
				<!-- 新增收货地址 -->
				<div class="protocol-warp formAddress costBox" style="display: none;">
					<div class="form-list">
						<h2>请填写配送地址</h2>
						<div class="field">
		                  	<label for="username"><em>*</em>收件人</label>
		                  	<div class="input-box">
		                    	<input type="text" name="name" value="" title="" class="input-text">
		                  	</div>
		                </div>
		                <div class="field">
		                  	<label for="phone"><em>*</em>手机号</label>
		                  	<div class="input-box">
		                  		<input type="tel" name="" value="" placeholder="" class="input-text">
		                  	</div>
		                </div>
						<div class="field">
		                  	<label><em>*</em>省份</label>
		                  	<div class="input-box pick-area"></div>
		                </div>
		                <div class="field">
		                  	<label for="address"><em>*</em>详细地址</label>
		                  	<div class="input-box">
		                    	<input type="text" name="address" value="" title="" class="input-text">
		                  	</div>
		                </div>
		                <div class="field">
		                  	<label for="address"><em>*</em>邮费</label>
		                  	<div class="input-box">
		                    	<input type="text" name="address" value="5元" title="" disabled="disabled" class="input-text">
		                  	</div> 
		                </div>

						<!-- 提交 -->
						<button type="button" title="提交" class="buttonTj"><span>提交</span></button>
					</div> 
				</div>
			</div>
		</div>

	</div>
	

	<script type="text/javascript">
		$(function(){
		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })

		    // 收货地址
		    $('.adress>ul>li').click(function(){
				if (!$(this).hasClass('active')) {
					$('.adress>ul>li').removeClass('active');
					$(this).addClass('active');
				}
			})
		    // 新增收货地址
		    $('.adress .adressAdd').click(function(){
		    	$('.costBox').show();
		    })
		    $('.buttonTj').click(function(){
		    	$('.costBox').hide();
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
		}); 

	</script>

</body>
</html>