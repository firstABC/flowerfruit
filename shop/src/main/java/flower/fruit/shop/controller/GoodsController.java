package flower.fruit.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import flower.fruit.shop.dao.GoodsDao;
import flower.fruit.shop.dao.ImagesDao;
import flower.fruit.shop.domain.Goods;
import flower.fruit.shop.domain.Images;

@Controller
@RequestMapping("/goods") 
public class GoodsController {

	@Resource
	private ImagesDao imagesDao;
	@Resource
	private GoodsDao goodsDao;
	
	@RequestMapping("/toPublish")
	@ResponseBody
	public Map<String,String> publishGood(MultipartFile[] file,HttpServletRequest request,HttpSession session) throws IllegalStateException, IOException{
		String g_title = request.getParameter("g_title");
		String g_parameter = request.getParameter("g_parameter");
		String g_price = request.getParameter("g_price");
		int g_status = Integer.parseInt(request.getParameter("g_status"));
		int hot_index = Integer.parseInt(request.getParameter("hot_index"));
		String g_recommend = request.getParameter("g_recommend");
		Goods goods = new Goods();
		String g_id = UUID.randomUUID().toString();
		goods.setG_id(g_id);
		goods.setG_title(g_title);
		goods.setG_parameter(g_parameter);
		goods.setG_price(g_price);
		goods.setG_status(g_status);
		goods.setG_recommend(g_recommend);
		goods.setHot_index(hot_index);
		int isOk = goodsDao.publishGoods(goods);
		
		int inMages = 0;
		String path = request.getServletContext().getRealPath("/upload");
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				boolean b = file1.isEmpty();
				if(!b){
					String name = System.currentTimeMillis()+file1.getOriginalFilename();
					file1.transferTo(new File(path,name));
					Images images = new Images();
					images.setG_id(g_id);;
					images.setIm_id(UUID.randomUUID().toString());
					images.setPathName(name);
					inMages = imagesDao.insertImage(images);	
				}
				
			}		
		}
		
		Map<String,String> map = new ConcurrentHashMap<String,String>();
		if(isOk!=0||inMages!=0){
			map.put("message", "success");
		}else{
			map.put("message", "error");
		}
		return map;
	}
	
	//后台管理 商品管理
	@RequestMapping("/toAdminGoodsManage")
	public String selectGoodsToManage(HttpServletRequest request,HttpSession session){
		List<Goods> ltGM = goodsDao.selectGoodsForManage();
		if(ltGM!=null&&ltGM.size()>0){
			session.setAttribute("ltGM", ltGM);
		}
		return "/AdminProduct";
	}
	
	@RequestMapping("/toEdit")
	public String toEditGoods(HttpServletRequest request,HttpSession session,@RequestParam("g_id")String g_id){
		Goods goods = goodsDao.selectGoodsById(g_id);
		if(goods!=null){
			session.setAttribute("goodsEdit", goods);
		}
		return "/AdminProductEdit";
	}
	
	@RequestMapping("/toEditNow")
	@ResponseBody
	public Map toEditNow(HttpServletRequest request,HttpSession session){
		Map map = new ConcurrentHashMap<String,String>();
		String g_title = request.getParameter("g_title");
		String g_id = request.getParameter("g_id");
		String g_parameter = request.getParameter("g_parameter");
		String g_price = request.getParameter("g_price");
		int g_status = Integer.parseInt(request.getParameter("g_status"));
		int hot_index = Integer.parseInt(request.getParameter("hot_index"));
		String g_recommend = request.getParameter("g_recommend");
		Goods goods = new Goods();
		goods.setG_id(g_id);
		goods.setG_title(g_title);
		goods.setG_parameter(g_parameter);
		goods.setG_price(g_price);
		goods.setG_status(g_status);
		goods.setHot_index(hot_index);
		goods.setG_recommend(g_recommend);
		int isOk = goodsDao.alterGoods(goods);
		if(isOk>0){
			map.put("message", "success");
		}else{
			map.put("message", "error");
		}
		return map;
	}
	
	
	@RequestMapping("/toDetal")
	public String toDetalGoods(HttpServletRequest request,HttpSession session,@RequestParam("g_id")String g_id){
		Goods goods = goodsDao.selectGoodsById(g_id);
		if(goods!=null){
			session.setAttribute("goodsDetal", goods);
		}
		return "/product";
	}
}
