package flower.fruit.shop.dao;

import java.util.List;

import flower.fruit.shop.domain.Orders;
import flower.fruit.shop.domain.OrdersVO;

public interface OrdersDao {

	//新增订单
	public int addOrder(Orders order);
	
	//查询所有订单
	public List<OrdersVO> selectAll();
	
	//根据用户id查询用户的订单
	public List<Orders> selectMyOrder(String userId);
}
