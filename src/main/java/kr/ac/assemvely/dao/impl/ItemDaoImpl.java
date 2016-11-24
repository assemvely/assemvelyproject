package kr.ac.assemvely.dao.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ac.assemvely.dao.ItemDao;
import kr.ac.assemvely.vo.ItemInfoVo;
import kr.ac.assemvely.vo.ItemVo;

@Repository
public class ItemDaoImpl implements ItemDao {

	@Inject
	private SqlSession SqlSession;

	private static final String namespace = "kr.ac.assemvely.mapper.ItemMapper";

	@Override
	public void insertitem(ItemVo itemvo) {

		SqlSession.insert(namespace + ".insertitem", itemvo);
		System.out.println("����� ���̿�!"+itemvo.toString());
	}

	@Override
	public List<ItemVo> listitem() {
		return SqlSession.selectList(namespace + ".selectitem");
	}

	@Override
	public ItemVo readposting(String clothcode) {
		 
		return  SqlSession.selectOne(namespace+".selectone",clothcode);
	}

	@Override
	public ItemVo clothcode(String name) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectOne(namespace+".select",name);
		
	}

	@Override
	public void insertinfo(ItemInfoVo info) throws Exception {
		
		SqlSession.insert(namespace+".insertinfo",info);
		
	}



}