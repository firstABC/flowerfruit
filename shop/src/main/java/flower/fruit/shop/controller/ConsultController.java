package flower.fruit.shop.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



import flower.fruit.shop.dao.ConsultDao;
import flower.fruit.shop.domain.ConsultVO;
import flower.fruit.shop.domain.Page;



@Controller
@RequestMapping("con") 
public class ConsultController{
		
		private static Logger logger = Logger.getLogger(UserController.class);
		
		@Autowired
		private ConsultDao consultDao;
		
		@RequestMapping(value = "/getConsultByUser", method = RequestMethod.GET) 
		public @ResponseBody Page getConsultByUser(
				@RequestParam("userId")String userId, 
				@RequestParam("currentPage")int currentPage){
			Page page=new Page();
			Map<String, Object> paramsMap=new HashMap<String, Object>();
			paramsMap.put("userId", userId);
			page.setParams(paramsMap);
			int total=consultDao.getConsultCount(page);
			int pageSize = 2;
			int maxPage = 1;
			if(total%pageSize==0){
				maxPage=total/pageSize;
			}else{
				maxPage=total/pageSize+1;
			}
			if(currentPage<1){
				currentPage=1;
			}
			page.setTotal(total);
			page.setMaxPage(maxPage);
			page.setStartIndex((currentPage-1)*pageSize);
			page.setLength(pageSize);
			
			page.setData(consultDao.getConsultList(page));
			return page; 
		}
		@RequestMapping(value = "/getConsultByGoods", method = RequestMethod.GET) 
		public @ResponseBody Page getConsultByGoods(
				@RequestParam("goodsId")String goodsId, 
				@RequestParam("currentPage")int currentPage){
			Page page=new Page();
			Map<String, Object> paramsMap=new HashMap<String, Object>();
			paramsMap.put("goodsId", goodsId);
			page.setParams(paramsMap);
			int total=consultDao.getConsultCount(page);
			int pageSize = 5;
			int maxPage = 1;
			if(total%pageSize==0){
				maxPage=total/pageSize;
			}else{
				maxPage=total/pageSize+1;
			}
			if(currentPage<1){
				currentPage=1;
			}
			page.setTotal(total);
			page.setMaxPage(maxPage);
			page.setStartIndex((currentPage-1)*pageSize);
			page.setLength(pageSize);
			page.setData(consultDao.getConsultList(page));
			return page; 
		}
		@RequestMapping(value = "/addConsult", method = RequestMethod.POST) 
		public  @ResponseBody String addConsult(@RequestParam("userId")String userId, 
				@RequestParam("goodsId")String goodsId,
				@RequestParam("consultMsg")String consultMsg){
			if(userId != null && userId != ""
					&&goodsId != null && goodsId != ""
					&&consultMsg != null && consultMsg != ""){
				//设置id
				String consultVOIdStr = UUID.randomUUID().toString();
				//设置评论时间
				Date date = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				ConsultVO consultVO = new ConsultVO(consultVOIdStr,userId,goodsId,consultMsg,sdf.format(date),"0");
				consultDao.addConsult(consultVO);
				return "success";
			}else{
				return "error";
			}
		}
		@RequestMapping(value = "/addReply", method = RequestMethod.POST) 
		public @ResponseBody String addReply(@RequestParam("consultId")String consultId,
				@RequestParam("adminId")String adminId, 
				@RequestParam("replyMsg")String replyMsg){
			if(consultId != null && consultId != ""
					&&adminId != null && adminId != ""
					&&replyMsg != null && replyMsg != ""){
				//设置回复时间
				Date date = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				ConsultVO consultVO = new ConsultVO(consultId,adminId,replyMsg,sdf.format(date));
				consultDao.addReply(consultVO);
				return "success";
			}else{
				return "error";
			}
		}
}
