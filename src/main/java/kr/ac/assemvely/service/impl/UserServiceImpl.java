package kr.ac.assemvely.service.impl;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ac.assemvely.dao.UserDao;
import kr.ac.assemvely.service.UserService;
import kr.ac.assemvely.vo.RelationVo;
import kr.ac.assemvely.vo.TempUserVo;
import kr.ac.assemvely.vo.UserDto;
import kr.ac.assemvely.vo.UserVo;

@Service
public class UserServiceImpl implements UserService
{
	
	@Inject
	private UserDao dao;
	
	

	@Override
	public void join(UserVo vo) throws Exception 
	{
		dao.join(vo);
		
	}

	@Override
	public void deleteuser(UserDto dto) throws Exception 
	{
		
		dao.deleteuser(dto);
	}

	@Override
	public List<UserVo> userlist() throws Exception 
	{
		
		return dao.userlist();
	}

	@Override
	public UserVo login(UserDto dto) throws Exception 
	{
		
		return dao.login(dto);
	}

	@Override
	public void sellerjoin(UserVo vo) throws Exception 
	{
		dao.sellerjoin(vo);
		
	}

	@Override
	public List<UserVo> templist() throws Exception 
	{
	
		return dao.templist();
	}

	@Override
	public TempUserVo selecttempuser(String id) throws Exception 
	{
		
		return dao.selecttempuser(id);
	}

	@Override
	public void deletetempuser(String id) throws Exception 
	{
		
		dao.deletetempuser(id);
	}

	@Override
	public void following(RelationVo rvo) throws Exception 
	{
		dao.following(rvo);
	}

	@Override
	public int followingcounter(String followingid) throws Exception 
	{
		
		return dao.followingcounter(followingid);
	
	}

	@Override
	public int followercounter(String followerid) throws Exception 
	{
		
		return dao.followercounter(followerid);
	}

	@Override
	public int sellercounter() throws Exception 
	{
		
		return dao.sellercounter();
	}

	@Override
	public int buyercounter() throws Exception 
	{
		
		return dao.buyercounter();
	}

}
