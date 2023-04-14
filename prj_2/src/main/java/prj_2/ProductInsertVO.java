package prj_2;

public class ProductInsertVO {
	private String imgList[], prodName, categoryName,textOfPrd,share,location;
	private int price;
	
	public ProductInsertVO() {
	
	}

	public ProductInsertVO(String[] imgList, String prodName, String categoryName, String textOfPrd, String share,
			String location, int price) {
		this.imgList = imgList;
		this.prodName = prodName;
		this.categoryName = categoryName;
		this.textOfPrd = textOfPrd;
		this.share = share;
		this.location = location;
		this.price = price;
	}

	public String[] getImgList() {
		return imgList;
	}

	public void setImgList(String[] imgList) {
		this.imgList = imgList;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getTextOfPrd() {
		return textOfPrd;
	}

	public void setTextOfPrd(String textOfPrd) {
		this.textOfPrd = textOfPrd;
	}

	public String getShare() {
		return share;
	}

	public void setShare(String share) {
		this.share = share;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
