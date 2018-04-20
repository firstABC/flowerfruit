package flower.fruit.shop.dao;

import java.util.List;

import flower.fruit.shop.domain.UserAddress;

public interface UserAddressDao {

	//发布新地址
	public int addAdress(UserAddress userAddress);
	//查询地址
	public List<UserAddress> selectAddress(String userId);
}
