package kr.ac.assemvely.dao;

import java.util.List;

import kr.ac.assemvely.vo.ItemInfoVo;
import kr.ac.assemvely.vo.ItemVo;

public interface ItemDao {

	public List<ItemVo> listitem();

	public void insertitem(ItemVo itemvo);
	public ItemVo readposting(String clothcode);
	
	public ItemVo clothcode(String name) throws Exception;
	public void insertinfo(ItemInfoVo info) throws Exception;
}
