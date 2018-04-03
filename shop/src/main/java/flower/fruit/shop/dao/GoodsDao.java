package flower.fruit.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Goods;
@Repository("goodsDao")
public interface GoodsDao {

	//发布商品时使用
	public int publishGoods(Goods goods);
	
	//首页热门推荐
	public List<Goods> selectGoodsByHot();
	
	//首页新品
	public List<Goods> selectGoodsByNew();
}
