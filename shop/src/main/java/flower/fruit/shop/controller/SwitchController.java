package flower.fruit.shop.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import flower.fruit.shop.dao.GoodsDao;
import flower.fruit.shop.dao.GoodsSingleDao;
import flower.fruit.shop.dao.ImagesDao;
import flower.fruit.shop.domain.Goods;
import flower.fruit.shop.domain.GoodsSingle;

@Controller
@RequestMapping("switch")
public class SwitchController {
	@Resource
	private ImagesDao imagesDao;
	@Resource
	private GoodsDao goodsDao;
	@Resource
	private GoodsSingleDao goodsSingleDao;
	
	@RequestMapping("/index")
	public String toIndex(HttpServletRequest request,HttpSession session){
		 //首页热门推荐5
		List<Goods> ltHotG = goodsDao.selectGoodsByHot(); 
		if(ltHotG!=null){
			session.setAttribute("ltHotG", ltHotG);
		}
		
		//新品上架
		List<Goods> ltNewG = goodsDao.selectGoodsByNew();
		if(ltNewG!=null){
			session.setAttribute("ltNewG", ltNewG);
		}
		
		//水果
		List<GoodsSingle> ltA = goodsSingleDao.selectAllGoodsSingleA();
		if(ltA!=null){
			session.setAttribute("ltA", ltA);
		}
		//鲜花
		List<GoodsSingle> ltB = goodsSingleDao.selectAllGoodsSingleB();
		if(ltB!=null){
			session.setAttribute("ltB", ltB);
		}
		return "/index";
	}
}
