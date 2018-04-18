package flower.fruit.shop.controller;

import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import flower.fruit.shop.dao.UserAddressDao;
import flower.fruit.shop.domain.UserAddress;

@Controller
@RequestMapping("/addRess")
public class UserAddressController {
	
	@Resource
	private UserAddressDao userAddressDao;
	
	@RequestMapping("/add")
	public String addAddress(HttpServletRequest request,HttpSession session){
		String userId = (String) session.getAttribute("userId");
		if(userId!=null&&userId!=""){
			String ua_name= request.getParameter("ua_name");
			String ua_mobile = request.getParameter("ua_mobile");
			String ua_detal = request.getParameter("ua_detal");//详细地址
			String ua_province = request.getParameter("ua_province");
			String ua_id = UUID.randomUUID().toString();
			UserAddress userAddress = new UserAddress();
			userAddress.setUserId(userId);
			userAddress.setUa_id(ua_id);
			userAddress.setUa_mobile(ua_mobile);
			userAddress.setUa_name(ua_name);
			userAddress.setUa_province(ua_province);
			userAddress.setUa_detal(ua_detal);
			
			userAddressDao.addAdress(userAddress);
			return "/myAddress";
		}
		return "/login";
	}
}
