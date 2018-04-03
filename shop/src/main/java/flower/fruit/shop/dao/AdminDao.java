package flower.fruit.shop.dao;


import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Admin;
import flower.fruit.shop.domain.User;

@Repository("adminDao")
public interface AdminDao {
	//登录
	public Admin getLoginAdmin(Admin admin);
	
	//注册
	public void addAdmin(Admin admin);
	
	//查询用户去重
	public int getAdminCheck(Admin admin);
}
