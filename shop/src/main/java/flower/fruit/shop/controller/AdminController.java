package flower.fruit.shop.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import flower.fruit.shop.dao.AdminDao;
import flower.fruit.shop.domain.Admin;
import flower.fruit.shop.domain.User;



@Controller
public class AdminController{
		
		private static Logger logger = Logger.getLogger(AdminController.class);
		
		@Autowired
		private AdminDao adminDao;
		
		//private Admin admin;
		
		@RequestMapping(value = "/loginAdmin", method = RequestMethod.GET) 

		public String login(HttpServletRequest request,HttpServletResponse response,  
		@RequestParam("adminName")String adminName, @RequestParam("adminPwd")String adminPwd, 
		Model model) throws Exception { 
			HttpSession session = request.getSession();
			Admin admin = new Admin(adminName,adminPwd);
			admin.setIsDelete("0");
			Admin loginAdmin = adminDao.getLoginAdmin(admin);
			if(loginAdmin != null){
				 model.addAttribute("loginAdmin", loginAdmin); 
				 session.setAttribute("adminId", loginAdmin.getAdminId());
				 session.setAttribute("adminName", adminName);
			     return "AdminUser";
			}
			else{
				request.setAttribute("msg", "登录失败");
				return "AdminLogin";
			}
		}
		@RequestMapping(value = "/outAdmin", method = RequestMethod.GET)
		public String out(HttpServletRequest request) throws Exception{
			HttpSession session = request.getSession();
			session.invalidate();
			return "AdminLogin";
		}
		@RequestMapping("/registerAdmin")
		public String register(HttpServletRequest request,HttpServletResponse response,Admin admin){
			HttpSession session = request.getSession();
			if(admin != null){
				//设置id
				String adminIdStr = UUID.randomUUID().toString();
				admin.setAdminId(adminIdStr);
				//默认未禁用
				admin.setIsDelete("0");
				//设置当前注册时间
//				Date date = new Date();
//				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				admin.setAdminDate(sdf.format(date));
				Admin aCons = new Admin();
				aCons.setAdminName(admin.getAdminName());
				if(adminDao.getAdminCheck(aCons) >= 1){
					request.setAttribute("msg", "用户名重复!");
					session.setAttribute("admin", admin);
					return "AdminRegister";
				}else{
					adminDao.addAdmin(admin);
					session.setAttribute("adminName", admin.getAdminName());
					session.setAttribute("adminId", admin.getAdminId());
					return "AdminUser";
				}
			}else{
				request.setAttribute("msg", "注册失败!");
				return "AdminRegister";
			}
		}
}
