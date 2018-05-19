package flower.fruit.shop.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import flower.fruit.shop.dao.GoodsDao;
import flower.fruit.shop.dao.OrdersDao;
import flower.fruit.shop.dao.UserAddressDao;
import flower.fruit.shop.domain.Goods;
import flower.fruit.shop.domain.GoodsSingle;
import flower.fruit.shop.domain.Orders;
import flower.fruit.shop.domain.OrdersVO;
import flower.fruit.shop.domain.UserAddress;

@Controller
@RequestMapping("order")
public class OrdersController {

	@Resource
	private OrdersDao ordersDao;
	@Resource
	private GoodsDao goodsDao;
	@Resource
	private UserAddressDao userAddressDao;
	
	@RequestMapping("/toAdd")
	public String addOrder(HttpServletRequest request,HttpSession session){
		String g_id = request.getParameter("g_id");
		Double g_price = Double.parseDouble(request.getParameter("g_price"));
		String ua_id = request.getParameter("ua_id");
		//int or_number = Integer.parseInt(request.getParameter("or_number"));
		//int or_number = 1;
		String or_numberStr =request.getParameter("or_number");
		int or_number = 1;
		if(or_numberStr != null&&or_numberStr !=""){
			or_number = Integer.parseInt(or_numberStr);
		}
		Double or_price = g_price*or_number;
		for(int i=1;i<or_number;i++){
			//or_price=g_price.sum(g_price, g_price);
		}
		String userId = (String) session.getAttribute("userId");
	
		Orders orders = new Orders();
		orders.setOr_price(or_price.toString());
		orders.setUser_id(userId);
		orders.setG_id(g_id);
		orders.setOr_id(UUID.randomUUID().toString());
		orders.setOr_number(or_number);
		orders.setOr_status("A");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		orders.setOr_date(sdf.format(date));
		orders.setUa_id(ua_id);
		
		
		int isOk = ordersDao.addOrder(orders);
		
		if(isOk>0)
			return "/paymentSuc";
		else
			return "/paymentFail";
	}
	
	@RequestMapping("/orderM")
	public String selectAllOrder(HttpServletRequest request,HttpSession session){
		List<OrdersVO> ltOr = ordersDao.selectAll();
		session.setAttribute("ltOr", ltOr);
		return "/AdminOrder";
	}
	
	@RequestMapping("/toPayment")
	public String toPay(HttpServletRequest request,HttpSession session){
		String userId = (String) session.getAttribute("userId");
		if(userId!=null&&userId!=""){
			List<UserAddress> ltUA = userAddressDao.selectAddress(userId);
			if(ltUA!=null&&ltUA.size()>0)
				session.setAttribute("ltUA", ltUA);
			return "/payment";
		}else{
			return "/login";
		}
	}
	
	@RequestMapping("/toMyOrder")
	public String myOrder(HttpServletRequest request,HttpSession session){
		String userId = (String) session.getAttribute("userId");
		if(userId!=null&&userId!=""){
			List<OrdersVO> ltOrder =  ordersDao.selectMyOrder(userId);
			/*if(ltOrder!=null&&ltOrder.size()>0){
				for(Orders orders:ltOrder){
					Goods goods = goodsDao.selectGoodsById(orders.getG_id());
					orders.setGoods(goods);
				}
			}*/
			session.setAttribute("ltMyOrder", ltOrder);
			return "/myMenu";
		}else{
			return "/login";
		}
	}
	
	@RequestMapping("/toAddZ")
	public String addOrderZ(HttpServletRequest request,HttpSession session){
		String userId = (String) session.getAttribute("userId");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ua_id = request.getParameter("ua_id");
		String or_numberStr =request.getParameter("or_number");
		String uuid = UUID.randomUUID().toString();
		int or_number = 1;
		if(or_numberStr != null&&or_numberStr !=""){
			or_number = Integer.parseInt(or_numberStr);
		}
		String[] gs_ids = request.getParameter("gs_ids").split(",");
		String[] gs_prices = request.getParameter("gs_prices").split(",");
		
		if(gs_ids != null&&gs_prices != null){
			for(int i=0;i<gs_ids.length;i++){
				Orders orders = new Orders();
				orders.setOr_id(uuid);
				orders.setUser_id(userId);
				orders.setOr_status("A");
				orders.setOr_date(sdf.format(date));
				orders.setUa_id(ua_id);
				orders.setOr_number(or_number);
				Double g_price = Double.parseDouble(gs_prices[i]);
				Double or_price = g_price*or_number;
				orders.setG_id(gs_ids[i]);
				orders.setOr_price(or_price.toString());
				ordersDao.addOrder(orders);
			}
			return "/paymentSuc";
		}else{
			return "/paymentFail";
		}
			
	}
}
