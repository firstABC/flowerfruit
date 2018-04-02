package flower.fruit.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		String g_recommend = request.getParameter("g_recommend");
		Goods goods = new Goods();
		String g_id = UUID.randomUUID().toString();
		goods.setG_id(g_id);
		goods.setG_title(g_title);
		goods.setG_parameter(g_parameter);
		goods.setG_price(g_price);
		goods.setG_status(g_status);
		goods.setG_recommend(g_recommend);
		int isOk = goodsDao.publishGoods(goods);
		
		int inMages = 0;
		String path = request.getServletContext().getRealPath("/upload");
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				boolean b = file1.isEmpty();
				String name = System.currentTimeMillis()+file1.getOriginalFilename();
				file1.transferTo(new File(path,name));
				Images images = new Images();
				images.setG_id(g_id);;
				images.setIm_id(UUID.randomUUID().toString());
				images.setPathName(name);
				inMages = imagesDao.insertImage(images);	
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
}
