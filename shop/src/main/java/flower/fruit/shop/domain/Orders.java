package flower.fruit.shop.domain;

import java.util.Date;

public class Orders {
	private String or_id;
	private String g_id;
	private int or_number;
	private Date or_date;
	private Double or_price;
	private String or_status;
	
	
	
	public String getOr_status() {
		return or_status;
	}
	public void setOr_status(String or_status) {
		this.or_status = or_status;
	}
	public Double getOr_price() {
		return or_price;
	}
	public void setOr_price(Double or_price) {
		this.or_price = or_price;
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
	public Date getOr_date() {
		return or_date;
	}
	public void setOr_date(Date or_date) {
		this.or_date = or_date;
	}
	
}