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




import flower.fruit.shop.dao.CommentDao;
import flower.fruit.shop.domain.CommentVO;
import flower.fruit.shop.domain.Page;



@Controller
@RequestMapping("com") 
public class CommentController{
		
		private static Logger logger = Logger.getLogger(UserController.class);
		
		@Autowired
		private CommentDao commentDao;
		
		@RequestMapping(value = "/getConsultByUser", method = RequestMethod.GET) 
		public @ResponseBody Page getConsultByUser(
				@RequestParam("userId")String userId, 
				@RequestParam("currentPage")int currentPage){
			Page page=new Page();
			Map<String, Object> paramsMap=new HashMap<String, Object>();
			paramsMap.put("userId", userId);
			page.setParams(paramsMap);
			int total=commentDao.getCommentCount(page);
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
			
			page.setData(commentDao.getCommentList(page));
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
			int total=commentDao.getCommentCount(page);
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
			page.setData(commentDao.getCommentList(page));
			return page; 
		}
		@RequestMapping(value = "/addConsult", method = RequestMethod.POST) 
		public  @ResponseBody String addConsult(@RequestParam("userId")String userId, 
				@RequestParam("goodsId")String goodsId,
				@RequestParam("commentMsg")String commentMsg,
				@RequestParam("commentType")String commentType){
			if(userId != null && userId != ""
					&&goodsId != null && goodsId != ""
					&&commentMsg != null && commentMsg != ""){
				//设置id
				String consultVOIdStr = UUID.randomUUID().toString();
				//设置评论时间
				Date date = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				CommentVO commenttVO = new CommentVO(consultVOIdStr,userId,goodsId,commentMsg,commentType,sdf.format(date),"0");
				commentDao.addComment(commenttVO);
				return "success";
			}else{
				return "error";
			}
		}
}
