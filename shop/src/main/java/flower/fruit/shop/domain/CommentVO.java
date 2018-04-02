package flower.fruit.shop.domain;

public class CommentVO {
	private String commentId;		//评论ID
	private String userId;			//评论用户的Id
	private String userName;		//用户名
	private String goodsId;		//所评论商品的Id
	private String goodsName;		//商品名称
	private String commentMsg;	//评论
	private String commentType;	//评论类型（1：好评，2：中差评）
	private String commentDate;	//评论时间
	private String isDelete;		//是否删除
	
	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CommentVO(String commentId, String userId, String goodsId,
			String commentMsg, String commentType, String commentDate,
			String isDelete) {
		super();
		this.commentId = commentId;
		this.userId = userId;
		this.goodsId = goodsId;
		this.commentMsg = commentMsg;
		this.commentType = commentType;
		this.commentDate = commentDate;
		this.isDelete = isDelete;
	}

	public String getCommentId() {
		return commentId;
	}
	
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
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
