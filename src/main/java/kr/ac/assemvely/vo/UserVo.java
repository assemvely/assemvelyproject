package kr.ac.assemvely.vo;

public class UserVo 
{
	  
	  private String id;
	  private String pw;
	  private String email;
	  private String bsm;
	  
	  private String imgname;
	  private String imgpath;
	  
	  private String filename;
	  private String filepath;
	  
	  private String address;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBsm() {
		return bsm;
	}

	public void setBsm(String bsm) {
		this.bsm = bsm;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserVo [id=" + id + ", pw=" + pw + ", email=" + email + ", bsm=" + bsm + ", imgname=" + imgname
				+ ", imgpath=" + imgpath + ", filename=" + filename + ", filepath=" + filepath + ", address=" + address
				+ "]";
	}
	  


	
}
