package flower.fruit.shop.dao;

import java.util.List;

import flower.fruit.shop.domain.Orders;

public interface OrdersDao {

	//新增订单
	public int addOrder(Orders order);
	
	//查询所有订单
	public List<Orders> selectAll();
}
