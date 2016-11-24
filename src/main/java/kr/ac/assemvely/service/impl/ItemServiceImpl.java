package kr.ac.assemvely.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ac.assemvely.dao.ItemDao;
import kr.ac.assemvely.service.ItemService;
import kr.ac.assemvely.vo.ItemInfoVo;
import kr.ac.assemvely.vo.ItemVo;

@Service
public class ItemServiceImpl implements ItemService {
	@Inject
	private ItemDao dao;

	@Override
	public List<ItemVo> listitem() throws Exception {
		return dao.listitem();
	}

	@Override
	public void insertitem(ItemVo vo) throws Exception {
		dao.insertitem(vo);

	}

	@Override
	public ItemVo readposting(String clothcode) {
	 
		return dao.readposting(clothcode);
	}

	@Override
	public ItemVo clothcode(String name) throws Exception {
		// TODO Auto-generated method stub
		return dao.clothcode(name);
	}

	@Override
	public void insertinfo(ItemInfoVo info) throws Exception {
		dao.insertinfo(info);
		
	}

}
