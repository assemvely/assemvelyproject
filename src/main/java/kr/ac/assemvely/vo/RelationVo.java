package kr.ac.assemvely.vo;

public class RelationVo 
{
	private String followingid;
	private String followerid;
	public String getFollowingid() 
	{
		return followingid;
	}
	public void setFollowingid(String followingid) 
	{
		this.followingid = followingid;
	}
	public String getFollowerid() 
	{
		return followerid;
	}
	public void setFollowerid(String followerid) 
	{
		this.followerid = followerid;
	}
	@Override
	public String toString() {
		return "RelationVo [followingid=" + followingid + ", followerid=" + followerid + "]";
	}
	
	
	
}
