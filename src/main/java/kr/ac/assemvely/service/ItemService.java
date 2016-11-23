package kr.ac.assemvely.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.ac.assemvely.vo.ItemVo;

public interface ItemService {
	public List<ItemVo> listitem() throws Exception;

	public void insertitem(ItemVo vo) throws Exception;

}
