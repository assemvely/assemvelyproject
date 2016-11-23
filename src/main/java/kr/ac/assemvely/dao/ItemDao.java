package kr.ac.assemvely.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.ac.assemvely.vo.ItemVo;

public interface ItemDao {

	public List<ItemVo> listitem();

	public void insertitem(ItemVo itemvo);

}
