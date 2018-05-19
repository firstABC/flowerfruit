<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.UserAddress" %>
<%@ page import="flower.fruit.shop.domain.GoodsSingle" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>支付</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/pick.min.1.0.2.js"></script>
	<!-- 订单支付 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/carts.js"></script>
	<script type="text/javascript">
		function toAddAddress(){
			var ua_name = $("#ua_name").val()
			var ua_mobile = $("#ua_mobile").val()
			var ua_detal = $("#ua_detal").val()
			var ua_province = $("#ua_province").val()
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/addRess/add",
				data:"ua_name="+ua_name+"&ua_mobile="+ua_mobile+"&ua_detal="+ua_detal+"&ua_province="+ua_province,
				success:function(data){
					window.location.reload();	//刷新本页
				}
			});
		}
	
		/* $('.son_check').click(function(){
			var ids = "";
			var prices = "";
			var temp1 = "";
			var temp2 = "";
			if($(this).is(':checked')) {
				var gs_id = $(this).parent('td').siblings('td').find('.gs_id').text();
				var gs_price = $(this).parent('td').siblings('td').find('.gs_price').text();
				temp1 = gs_id;
				temp2 = gs_price;
				ids=ids+","+temp1;
				prices=prices+","+temp2;
			}
			$('#gs_ids').val(ids.substring(1,ids.length))
			$('#gs_prices').val(prices.substring(1,prices.length))
		}) */
		function toCreateOrder(){
			var ids = "";
			var prices = "";
			var temp1 = "";
			var temp2 = "";
			var a = document.getElementsByName("check");
			for(var i=0;i<a.length;i++){
				if(a[i].checked) {
					var gs_id = $(a[i]).parent('td').siblings('td').find('.gs_id').val();
					var gs_price = $(a[i]).parent('td').siblings('td').find('.gs_price').text();
					temp1 = gs_id;
					temp2 = gs_price;
					ids=ids+","+temp1;
					prices=prices+","+temp2;
				}
			}
			$('#gs_ids').val(ids.substring(1,ids.length))
			$('#gs_prices').val(prices.substring(1,prices.length))
			console.log($('#gs_ids').val()+":"+$('#gs_prices').val())
			if($('.adress>ul>li').hasClass("active")){
				if($('#gs_ids').val() != null&&$('#gs_prices').val()!=null){
					document.publish_form.action="${pageContext.request.contextPath}/order/toAddZ";
					console.log($("#publish_form").action);
					document.publish_form.submit();
				}else{
					$("#publish_form").submit();
				}
			}else{
				alert("请选择收货地址");
			}
		   	 	
		   	// 	return false;
		}
	</script>
</head>
<body>
	<div class="mainBody">
		<header>
			<jsp:include page="header.jsp" flush="true"/>
		</header><!-- /header -->
		<div class="main">
			<div class="newcart payment">
			<form action="${pageContext.request.contextPath}/order/toAdd" method="post" id="publish_form" name="publish_form">
				<div class="page-title">
	                <h1>支付&nbsp;payment</h1>
	            </div>
	            <!-- 收货地址 -->
	            <div class="adress">
	            	<h2 class="paymentT">收货地址<a href="javascript:;" title="" class="adressAdd">添加地址</a></h2>
	            	<ul>
	            	<%
	            		List<UserAddress> ltUA = (List<UserAddress>)session.getAttribute("ltUA");
	            		if(ltUA!=null&&ltUA.size()>0){
	            			for(UserAddress userAddress:ltUA){
	            			//UserAddress userAddress = ltUA.get(0);
	            	%>
	            		
	            		<li>
	            			<span class="check"><img src="${pageContext.request.contextPath}/images/placeIcon.png" alt="地点">&nbsp;寄送至&nbsp;</span>
	            			<label>
	            			<input name="ua_id" id="ua_id" type="text" value="<%=userAddress.getUa_id() %>" hidden="hidden">
	            				
		            			<span><%=userAddress.getUa_province() %>&nbsp;<%=userAddress.getUa_detal() %>&nbsp;（<%=userAddress.getUa_name() %>&nbsp;收）</span>
		            			<em>联系方式:<%=userAddress.getUa_mobile() %></em>
		            			<b><%-- <%=userAddress.getUa_price()%> --%><!-- 5元邮费 --></b>
		            		</label>
	            		</li>
	            	<%
	            		}
	            	}else{
	            	%>
            			<!-- <a href="javascript:;" title="" class="adressAdd">添加地址</a> -->
            		<%
	            	}
            		%>
	            	</ul>
	            </div>
	            <!-- 商品 -->
	            <div class="cart-preview">
	            	<h2 class="paymentT">商品信息</h2>
	            	<div class="new-pro-list">
		            	 <div class="cartBox">
		            	 
				            <table class="order_content" cellpadding="0" cellspacing="0" border="0">
				            	<tr class="no-border-top">
				            		<th colspan="2">
				                		<!-- <input type="checkbox" id="all" class="whole_check"> -->
				                    	商品图
				                    	<label for="all"></label>
				                    </th>
		            				<th colspan="2">尺寸/类型<span class="group-desc"></span></th>
		            				<th>单价</th>
		            				<th style="text-align: center">件数</th>
		            				<th>小计</th>
		            			</tr>
		            			<%
		    					List<GoodsSingle> ltGS =  (List<GoodsSingle>)session.getAttribute("gsLt");
		    					if(ltGS!=null&&ltGS.size()>0){
		    						for(GoodsSingle gs:ltGS){
		            			%>
		            			<div id="zhGS">	
		            				<input type="hidden" name="gs_prices" value="" id="gs_prices">
				    				<input type="hidden" name="gs_ids" value="" id="gs_ids">
		            				<tr class="order_lists">
				                	<td>
				                        <input type="checkbox" class="son_check" name="check" checked="checked">
				                        <label for="checkbox_8"></label>
				                    </td>
				                    <td><a href="javascript:;" target="_blank"><img src="${pageContext.request.contextPath}/upload/<%=gs.getLtMage().get(0).getPathName() %>"></a></td>
				                    <td>
		            					<a href="javascript:;" target="_blank">
				                            <p style="width:300px;padding-right:20px">名称：<%=gs.getGs_title()%></p>
				                            <input type="hidden" name="gs_id" value="<%= gs.getGs_id()%>" class="gs_id">
				                            <p class="new-sku" style="width:300px;padding-right:20px"></p>
				                            <p class="size">类型：<%= "A".equals(gs.getGs_type())?"水果":"鲜花"%></p>
			                        	</a>
			                        </td>
				                    <td>
				                       		￥<p class="gs_price"><%=gs.getGs_price() %></p>
				                    </td>
				                    <td>
			                            <div class="amount_box">
			                            	<span class="reduce reSty">-</span><input class="sum" name="or_number" type="text" value="1" disabled="disabled"><span class="plus">+</span>
			                            </div>
			                        </td>
				                    <td>
				                        <p class="sum_price">￥<%=gs.getGs_price() %></p>
				                    </td>
				                </div>
				                </tr>
		            			<%
			            			}
		            			}else{
		            			%>
				                <tr class="order_lists">
				                	<td>
				                        <input type="checkbox" class="son_check" name="check" checked="checked">
				                        <label for="checkbox_8"></label>
				                    </td>
				                    <td><a href="javascript:;" target="_blank"><img src="${pageContext.request.contextPath}/upload/${goodsDetal.ltMage.get(0).pathName }"></a></td>
				                    <td>
		            					<a href="javascript:;" target="_blank">
				                            <p style="width:300px;padding-right:20px">名称：${goodsDetal.g_title}</p>
				                            <input type="hidden" name="g_price" value="${goodsDetal.g_price}">
				                            <input type="hidden" name="g_id" value="${goodsDetal.g_id}">
				                            <p class="new-sku" style="width:300px;padding-right:20px"></p>
				                            <p class="size">尺寸：${goodsDetal.g_parameter}</p>
			                        	</a>
			                        </td>
				                    <td>
				                        <p class="price">￥${goodsDetal.g_price }</p>
				                    </td>
				                    <td>
			                            <div class="amount_box">
			                            	<span class="reduce reSty">-</span><input class="sum" name="or_number" type="text" value="1" disabled="disabled"><span class="plus">+</span>
			                            </div>
			                        </td>
				                    <td>
				                        <p class="sum_price">￥${goodsDetal.g_price }</p>
				                    </td>
				                </tr>
				                <%
		            			}
				                %>
				            </table>
				           
				        </div>
	            	</div>
	            	<!-- 结账 -->
	            	<div class="new-total clearfix" style="width: 1028px; display: block;">
	                    <div class="total-fr">
	                      <span class="piece">已选商品<strong class="piece_num">0</strong>件</span>
	                      <span class="totalMoney">共计: <strong class="total_text">￥0</strong></span>
	                      <a class="new-cart-button" href="javascript:toCreateOrder();">立即结算</a>
	                    </div>
	                </div>
	            </form>
	            </div>
		    </div>

		    <div class="userCont">
				<!-- 新建配送地址 -->
				<div class="protocol-warp formAddress costBox" style="display: none;">
					<div class="form-list">
						<h2>新建配送地址<a href="javascript:;"  class="delImg"><img src="${pageContext.request.contextPath}/images/del.png" alt="删除"></a></h2>
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
		                  	<div class="input-box">
		                    	<input type="text" name="ua_province" id="ua_province" value="" title="" class="input-text">
		                  	</div>
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
		    $('.delImg, .buttonTj').on('click', function(event) {
		    	$('.costBox').hide();
		    });
		}); 
	
	</script>

</body>
</html>