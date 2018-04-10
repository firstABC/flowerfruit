<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="flower.fruit.shop.domain.GoodsSingle" %>
<%@ page import="flower.fruit.shop.domain.Goods" %>
<%@ page import="flower.fruit.shop.domain.Images" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>水果鲜花</title>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/swiper.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
</head>
<body>

	<div class="mainBody">
		<header>
			<jsp:include page="${pageContext.request.contextPath}/header.jsp" flush="true"/>
			<div class="show_table">
				<div class="topmenu clearfix">
					<ul>
						<li class="active">
							<a href="index.html" class="til">
								<h3>Home</h3>
								<h4>首页</h4>
							</a>
						</li>
						<li>
							<a href="index.html#popular" class="til">
								<h3>Hot recommend</h3>
								<h4>热门推荐</h4>
							</a>
						</li>
						<li>
							<a href="index.html#freshUp" class="til">
								<h3>What's new</h3>
								<h4>新鲜上架</h4>
							</a>
						</li>
						<li>
							<a href="index.html#diy" class="til">
								<h3>Do it youself</h3>
								<h4>自己搭配</h4>
							</a>
						</li>
					</ul>
				</div>	
			</div>
		</header><!-- /header -->

		<div class="main">
			<!-- 轮播图 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/banner1.jpg" alt=""></div>  
					<div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/banner2.jpg" alt=""></div>  
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div> 
			</div>

			<!-- 热门推荐 -->
			<div class="popular" id="popular">
				<h1>热门推荐&nbsp;Hot recommend</h1>
				<%
					List<Goods> ltHotG = (List<Goods>)session.getAttribute("ltHotG");
					if(ltHotG!=null&&ltHotG.size()>=5){
				%>
				<div class="popularLeft">
					<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=ltHotG.get(0).getG_id() %>><img src="${pageContext.request.contextPath}/upload/<%=ltHotG.get(0).getLtMage().get(0) %>" alt=""></a>
				</div>
				<div class="popularRight">
					<div class="new-product">
						<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=ltHotG.get(1).getG_id() %>"><img src=""${pageContext.request.contextPath}/upload/<%=ltHotG.get(1).getLtMage().get(1) %>" alt=""></a>
					</div>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=ltHotG.get(2).getG_id() %>"><img src="images/hot3.jpg" alt=""></a><img src=""${pageContext.request.contextPath}/upload/<%=ltHotG.get(0).getLtMage().get(2) %>" class="hot" alt="热卖">
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=ltHotG.get(3).getG_id() %>"><img src="images/hot4.jpg" alt=""></a><img src=""${pageContext.request.contextPath}/upload/<%=ltHotG.get(0).getLtMage().get(3) %>" class="hot" alt="热卖">
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=ltHotG.get(4).getG_id() %>"><img src="images/hot5.jpg" alt=""></a><img src=""${pageContext.request.contextPath}/upload/<%=ltHotG.get(0).getLtMage().get(4) %>" class="hot" alt="热卖">
						</li>
					</ul>
				</div>
				<%
				}
				%>
			</div>
			
			<!-- 新鲜上架 -->
			<div class="freshUp" id="freshUp">
				<h1>新鲜上架&nbsp;What's new</h1>
				<div class="freshItem">
					<ul>
					<%
						List<Goods> ltNewG = (List<Goods>)session.getAttribute("ltNewG");
						if(ltNewG!=null&&ltNewG.size()>0){
							for(Goods goods: ltNewG){
					%>		
						<li>
							<a href="${pageContext.request.contextPath}/goods/toDetal?g_id="+<%=goods.getG_id() %> title="">
								<div class="img"><img src="${pageContext.request.contextPath}/upload/<%=goods.getLtMage().get(0) %>" alt="新鲜上架"></div>
								<div class="freshText"><%=goods.getG_title() %></div>
							</a>
						</li>
					<%
							}
						}
					%>
					</ul>
				</div>
			</div>

			<!-- 自己搭配 -->
			<div class="diy" id="diy">
				<h1>自己搭配&nbsp;Do it youself</h1>
				<div class="diyTitle">
					<ul>
			            <li class="active">
			            	<a href="javascript:;">水果</a>
			            </li>
						<li>
			            	<a href="javascript:;">鲜花</a>
			            </li>
					</ul>
		            <a href="productZ.html" target="" class="zuhe">开始组合</a>
				</div>
				<div class="diyContent">
					<!-- 水果 -->
					<div class="diyGoods">
						<div class="freshItem">
							<ul>
							<%
								List<GoodsSingle> ltA = (List<GoodsSingle>)session.getAttribute("ltA");
								if(ltA!=null&&ltA.size()>0){
									for(GoodsSingle singleA:ltA){
							%>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="${pageContext.request.contextPath}/upload/<%=singleA.getLtMage().get(0) %>" alt="苹果"></div>
										<div class="freshText"><%=singleA.getGs_title() %></div>
									</a>
									<div class="select"><span></span></div>
								</li>
							<%
									}
								}
							%>
							</ul>
						</div>
					</div>
					<!-- 鲜花 -->
					<div class="diyGoods" style="display: none;">
						<div class="freshItem">
							<ul>
							<%
								List<GoodsSingle> ltB = (List<GoodsSingle>)session.getAttribute("ltB");
								if(ltB!=null&&ltB.size()>0){
									for(GoodsSingle singleB:ltB){
							%>
								<li>
									<a href="javascript:;" title="">
										<div class="img"><img src="${pageContext.request.contextPath}/upload/<%=singleB.getLtMage().get(0) %>" alt="薰衣草"></div>
										<div class="freshText"><%=singleB.getGs_title() %></div>
									</a>
									<div class="select"><span></span></div>
								</li>
							<%
									}
								}
							%>
							</ul>
						</div>
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
			// 轮播图
	    	var swiper = new Swiper('.swiper-container', {
	        	pagination: '.swiper-pagination',
	        	slidesPerView: 1,	
	       		slidesPerGroup : 1,
				loop: true,
	       		paginationClickable: true,
				autoplay: 3000
		    });

		    $('.topmenu li').click(function(){
		    	 $('.topmenu li').removeClass('active');
		    	$(this).addClass('active');
		    })

		    $('.login .myInfoTi').hover(function(){
		    	$('.myInfo').fadeToggle();
		    })
		    // 自己搭配
		    $('.diyTitle li').click(function(){
		    	if (!$(this).hasClass('active')) {
		    		$('.diyTitle li').removeClass('active');
		    		$(this).addClass('active');
		    	}
				var aa = $(this).index();

		        $('.diyContent').children('.diyGoods').hide();
		        $('.diyContent').children('.diyGoods').eq(aa).show(); 
		    })
		    $('.diyGoods .freshItem li').click(function(){
		    	if (!$(this).hasClass('active')) {
		    		$(this).addClass('active');
		    	}else{
		    		$(this).removeClass('active');
		    	}
		    })
		})
	</script>

</body>
</html>