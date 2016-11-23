package kr.ac.assemvely.vo;

public class ItemVo {

	private int clothcode;
	private String id;
	private String colorcode;
	private int price;
	private int likecnt;
	private int tempcode;
	private String name;
 
	private String imgname;
	private String categorycode;
	
	 
	 

	public int getClothcode() {
		return clothcode;
	}

	public void setClothcode(int clothcode) {
		this.clothcode = clothcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getColorcode() {
		return colorcode;
	}

	public void setColorcode(String colorcode) {
		this.colorcode = colorcode;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getLikecnt() {
		return likecnt;
	}

	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}

	public int getTempcode() {
		return tempcode;
	}

	public void setTempcode(int tempcode) {
		this.tempcode = tempcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getCategorycode() {
		return categorycode;
	}

	public void setCategorycode(String categorycode) {
		this.categorycode = categorycode;
	}

	@Override
	public String toString() {
		return "ItemVo [clothcode=" + clothcode + ", id=" + id + ", colorcode=" + colorcode + ", price=" + price
				+ ", likecnt=" + likecnt + ", tempcode=" + tempcode + ", name=" + name + ", imgname=" + imgname
				+ ", categorycode=" + categorycode + "]";
	}

 

}
