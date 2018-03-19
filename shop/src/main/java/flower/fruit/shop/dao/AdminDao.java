package flower.fruit.shop.dao;


import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Admin;

@Repository("adminDao")
public interface AdminDao {
	//登录
	public Admin getLoginAdmin(Admin admin);
}
