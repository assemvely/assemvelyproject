package kr.ac.assemvely.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import kr.ac.assemvely.dao.ItemDao;
import kr.ac.assemvely.service.ItemService;
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

}
