package flower.fruit.shop.domain;
import java.sql.Blob;

public class Images {
	private String im_id;
	//地址
	private String pathName;
	//商品id
	private String g_id;
	
	public String getIm_id() {
		return im_id;
	}
	public void setIm_id(String im_id) {
		this.im_id = im_id;
	}
	public String getPathName() {
		return pathName;
	}
	public void setPathName(String pathName) {
		this.pathName = pathName;
	}
	
	public String getG_id() {
		return g_id;
	}
	public void setG_id(String g_id) {
		this.g_id = g_id;
	}
	
	
	
	
}
