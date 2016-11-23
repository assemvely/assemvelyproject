package kr.ac.assemvely.dao.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.ac.assemvely.dao.ItemDao;
import kr.ac.assemvely.vo.ItemVo;

@Repository
public class ItemDaoImpl implements ItemDao {

	@Inject
	private SqlSession SqlSession;

	private static final String namespace = "kr.ac.assemvely.mapper.ItemMapper";

	@Override
	public void insertitem(ItemVo itemvo) {

		SqlSession.insert(namespace + ".insertitem", itemvo);

	}

	@Override
	public List<ItemVo> listitem() {
		return SqlSession.selectList(namespace + ".selectitem");
	}

}