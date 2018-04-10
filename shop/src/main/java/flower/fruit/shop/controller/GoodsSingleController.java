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

import flower.fruit.shop.dao.GoodsSingleDao;
import flower.fruit.shop.dao.ImagesDao;
import flower.fruit.shop.domain.GoodsSingle;
import flower.fruit.shop.domain.Images;

@Controller("gs")
public class GoodsSingleController {

	@Resource
	private GoodsSingleDao goodsSingleDao;
	@Resource
	private ImagesDao imagesDao;
	
	@RequestMapping("/toPublish")
	@ResponseBody
	public Map<String,String> publishGood(MultipartFile[] file,HttpServletRequest request,HttpSession session) throws IllegalStateException, IOException{
		String gs_title = request.getParameter("gs_title");
		String gs_price = request.getParameter("gs_price");
		String gs_type = request.getParameter("gs_type");
		GoodsSingle goodsSingle = new GoodsSingle();
		String gs_id = UUID.randomUUID().toString();
		goodsSingle.setGs_id(gs_id);
		goodsSingle.setGs_title(gs_title);
		goodsSingle.setGs_price(gs_price);
		goodsSingle.setGs_type(gs_type);
		int isOk = goodsSingleDao.publishSingeGoods(goodsSingle);
		
		int inMages = 0;
		String path = request.getServletContext().getRealPath("/upload");
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				boolean b = file1.isEmpty();
				String name = System.currentTimeMillis()+file1.getOriginalFilename();
				file1.transferTo(new File(path,name));
				Images images = new Images();
				images.setG_id(gs_id);;
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
	
	@RequestMapping("/manageA")
	public String mangeA(HttpServletRequest request,HttpSession session){
		List<GoodsSingle> ltA = goodsSingleDao.selectAllGoodsSingleA();
		if(ltA!=null){
			session.setAttribute("ltA", ltA);
		}
		return "/AdminGroupA";
	}
	
	@RequestMapping("/manageB")
	public String mangeB(HttpServletRequest request,HttpSession session){
		List<GoodsSingle> ltB = goodsSingleDao.selectAllGoodsSingleB();
		if(ltB!=null){
			session.setAttribute("ltB", ltB);
		}
		return "/AdminGroupB";
	}
	
	@RequestMapping("/toEditA")
	public String toEditA(HttpServletRequest request,HttpSession session,@RequestParam("gs_id")String gs_id){
		GoodsSingle goodsA = goodsSingleDao.selectbyId(gs_id);
		if(goodsA!=null){
			session.setAttribute("goodsA", goodsA);
		}
		return "/EditA";
	}

	//修改单品
	@RequestMapping("/toEditNow")
	@ResponseBody
	public Map toEditNow(HttpServletRequest request,HttpSession session){
		Map map = new ConcurrentHashMap<String,String>();
		String gs_title = request.getParameter("gs_title");
		String gs_price = request.getParameter("gs_price");
		String gs_type = request.getParameter("gs_type");
		String gs_id = request.getParameter("gs_id");
		
		GoodsSingle goodsSingle = new GoodsSingle();
		goodsSingle.setGs_id(gs_id);
		goodsSingle.setGs_title(gs_title);
		goodsSingle.setGs_price(gs_price);
		goodsSingle.setGs_type(gs_type);
		int isOk = goodsSingleDao.alterGoodsSingle(goodsSingle);
		if(isOk>0)
			map.put("message", "success");
		else
			map.put("message", "error");
		return map;
	}
}
