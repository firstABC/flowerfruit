package flower.fruit.shop.controller;

import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import flower.fruit.shop.dao.GoodsDao;
import flower.fruit.shop.dao.OrdersDao;
import flower.fruit.shop.domain.Goods;
import flower.fruit.shop.domain.Orders;

@Controller("/order")
public class OrdersController {

	@Resource
	private OrdersDao ordersDao;
	@Resource
	private GoodsDao goodsDao;
	
	@ResponseBody
	@RequestMapping("/toAdd")
	public Map addOrder(HttpServletRequest request,HttpSession session){
		Map map = new ConcurrentHashMap();
		String g_id = request.getParameter("g_id");
		Double g_price = Double.parseDouble(request.getParameter("g_price"));
		int or_number = Integer.parseInt(request.getParameter("or_number"));
		Double or_price = g_price;
		for(int i=1;i<or_number;i++){
			or_price=g_price.sum(g_price, g_price);
		}
		String userId = (String) session.getAttribute("userId");
	
		Orders orders = new Orders();
		orders.setOr_price(or_price.toString());
		orders.setUser_id(userId);
		orders.setG_id(g_id);
		orders.setOr_id(UUID.randomUUID().toString());
		orders.setOr_number(or_number);
		orders.setOr_status("A");
		
		
		orders.setUa_id("111");
		
		
		int isOk = ordersDao.addOrder(orders);
		
		if(isOk>0)
			map.put("message", "success");
		else
			map.put("message", "error");
		return map;
	}
	
	@RequestMapping("/orderM")
	public String selectAllOrder(HttpServletRequest request,HttpSession session){
		List<Orders> ltOr = ordersDao.selectAll();
		Map map = new ConcurrentHashMap<String,String>();
		if(ltOr!=null&&ltOr.size()>0){
			session.setAttribute("ltOr", ltOr);
			for(Orders order:ltOr){
				String g_id = order.getG_id();
				Goods goods = goodsDao.selectGoodsById(g_id);
				map.put(order.getOr_id(), goods.getG_title());
			}
			session.setAttribute("Or_map", map);
		}
		return "/AdminOrder";
	}
}
