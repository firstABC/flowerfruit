package flower.fruit.shop.dao;

import org.springframework.stereotype.Repository;

import flower.fruit.shop.domain.Images;
@Repository("imagesDao")
public interface ImagesDao {

	//添加图片
	public int insertImage(Images iamges);
}
