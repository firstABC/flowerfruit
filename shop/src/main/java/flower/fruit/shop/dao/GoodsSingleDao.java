package flower.fruit.shop.dao;

import java.util.List;

import flower.fruit.shop.domain.GoodsSingle;

public interface GoodsSingleDao {

	//发布新品
	public int publishSingeGoods(GoodsSingle goodsSingle);
	
	//查询所有的水果
	public List<GoodsSingle> selectAllGoodsSingleA();
	
	//查询所有的鲜花
	public List<GoodsSingle> selectAllGoodsSingleB();
	
	
	//根据id查询
	public GoodsSingle selectbyId(String gs_id);
	
	//修改单品
	public int alterGoodsSingle(GoodsSingle goodsSingle);
}
