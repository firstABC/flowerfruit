package flower.fruit.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Consult;
import flower.fruit.shop.domain.ConsultVO;
import flower.fruit.shop.domain.Page;

@Repository("consultDao")
public interface ConsultDao {
	
	//查询用户评论
	public List<ConsultVO> getConsultList(Page page);
	
	//查询总数
	public int getConsultCount(Page page);
	
	//用户新增评论
	public void addConsult(ConsultVO consultVO);
	
	//管理员新增回复
	public void addReply(ConsultVO consultVO);
}
