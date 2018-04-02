package flower.fruit.shop.domain;

public class Comment {
	private String commentId;		//评论ID
	private User user;				//评论的用户			需要自己关联 
	private Goods goods;			//提问的商品ID
	private String commentMsg;	//评论
	private String commentType;	//评论类型（1：好评，2：中差评）
	private String commentDate;	//评论时间
	private String isDelete;		//是否删除
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String getCommentMsg() {
		return commentMsg;
	}
	public void setCommentMsg(String commentMsg) {
		this.commentMsg = commentMsg;
	}
	public String getCommentType() {
		return commentType;
	}
	public void setCommentType(String commentType) {
		this.commentType = commentType;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
}
