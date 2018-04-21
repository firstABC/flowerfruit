package flower.fruit.shop.domain;

import java.util.List;

public class Goods {

	private String g_id;
	private String g_title;
	private String g_detal;
	private String g_price;
	//规格参数
	private String g_parameter;
	//推荐理由
	private String g_recommend;
	//浏览量
	private int g_view;
	//状态：新品上架 0  推荐 1
	private int g_status;
	private int hot_index;
	private List<Images> ltMage;
	
	
	
	public int getHot_index() {
		return hot_index;
	}
	public void setHot_index(int hot_index) {
		this.hot_index = hot_index;
	}
	public String getG_price() {
		return g_price;
	}
	public void setG_price(String g_price) {
		this.g_price = g_price;
	}
	public int getG_status() {
		return g_status;
	}
	public void setG_status(int g_status) {
		this.g_status = g_status;
	}
	public List<Images> getLtMage() {
		return ltMage;
	}
	public void setLtMage(List<Images> ltMage) {
		this.ltMage = ltMage;
	}
	public String getG_id() {
		return g_id;
	}
	public void setG_id(String g_id) {
		this.g_id = g_id;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_detal() {
		return g_detal;
	}
	public void setG_detal(String g_detal) {
		this.g_detal = g_detal;
	}
	public String getG_parameter() {
		return g_parameter;
	}
	public void setG_parameter(String g_parameter) {
		this.g_parameter = g_parameter;
	}
	public String getG_recommend() {
		return g_recommend;
	}
	public void setG_recommend(String g_recommend) {
		this.g_recommend = g_recommend;
	}
	public int getG_view() {
		return g_view;
	}
	public void setG_view(int g_view) {
		this.g_view = g_view;
	}
	
	
	
}
