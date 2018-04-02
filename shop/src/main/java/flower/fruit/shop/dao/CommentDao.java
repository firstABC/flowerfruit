package flower.fruit.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Comment;
import flower.fruit.shop.domain.CommentVO;
import flower.fruit.shop.domain.Page;

@Repository("commentDao")
public interface CommentDao {
	
	//查询用户评论
	public List<CommentVO> getCommentList(Page page);
	
	//查询总数
	public int getCommentCount(Page page);
	
	//用户新增评论
	public void addComment(CommentVO CommentVO);
	
}
