package flower.fruit.shop.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import flower.fruit.shop.dao.GoodsDao;
import flower.fruit.shop.dao.ImagesDao;
import flower.fruit.shop.domain.Goods;

@Controller
@RequestMapping("switch")
public class SwitchController {
	@Resource
	private ImagesDao imagesDao;
	@Resource
	private GoodsDao goodsDao;
	
	@RequestMapping("/index")
	public String toIndex(HttpServletRequest request,HttpSession session){
		List<Goods> ltHotG = goodsDao.selectGoodsByHot();  //首页热门推荐5
		
		if(ltHotG!=null){
			session.setAttribute("ltHotG", ltHotG);
		}
		
		List<Goods> ltNewG = goodsDao.selectGoodsByNew();
		if(ltNewG!=null){
			session.setAttribute("ltNewG", ltNewG);
		}
		
		return "/index";
	}
}
