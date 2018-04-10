package flower.fruit.shop.domain;

import java.util.List;

public class GoodsSingle {

	private String gs_id;
	private String gs_title;
	private String gs_price;
	private String gs_type;
	private List<Images> ltMage;
	
	
	public String getGs_title() {
		return gs_title;
	}
	public void setGs_title(String gs_title) {
		this.gs_title = gs_title;
	}
	public String getGs_id() {
		return gs_id;
	}
	public void setGs_id(String gs_id) {
		this.gs_id = gs_id;
	}
	public String getGs_price() {
		return gs_price;
	}
	public void setGs_price(String gs_price) {
		this.gs_price = gs_price;
	}
	public String getGs_type() {
		return gs_type;
	}
	public void setGs_type(String gs_type) {
		this.gs_type = gs_type;
	}
	public List<Images> getLtMage() {
		return ltMage;
	}
	public void setLtMage(List<Images> ltMage) {
		this.ltMage = ltMage;
	}
	
	
}
