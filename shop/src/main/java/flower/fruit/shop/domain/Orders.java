package flower.fruit.shop.domain;

import java.util.Date;

public class Orders {
	private String or_id;
	private String g_id;
	private int or_number;
	private String or_date;
	private String or_price;
	private String or_status;
	private String user_id;
	private String ua_id;
	
	private Goods goods; 
	
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String getUa_id() {
		return ua_id;
	}
	public void setUa_id(String ua_id) {
		this.ua_id = ua_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOr_id() {
		return or_id;
	}
	public void setOr_id(String or_id) {
		this.or_id = or_id;
	}
	public String getG_id() {
		return g_id;
	}
	public void setG_id(String g_id) {
		this.g_id = g_id;
	}
	public int getOr_number() {
		return or_number;
	}
	public void setOr_number(int or_number) {
		this.or_number = or_number;
	}
	public String getOr_date() {
		return or_date;
	}
	public void setOr_date(String or_date) {
		this.or_date = or_date;
	}
	public String getOr_price() {
		return or_price;
	}
	public void setOr_price(String or_price) {
		this.or_price = or_price;
	}
	public String getOr_status() {
		return or_status;
	}
	public void setOr_status(String or_status) {
		this.or_status = or_status;
	}
	
	
	
	
}