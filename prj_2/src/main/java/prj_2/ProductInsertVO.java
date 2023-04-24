package prj_2;

public class ProductInsertVO {
	private String prodImg[], prodName, textOfPrd,share,placeTraction,userId;
	private int price,categoryNumber,areaNum,prodNum;
	
	public ProductInsertVO() {
	}

	public ProductInsertVO(String[] prodImg, String prodName, String textOfPrd, String share, String placeTraction,
			String userId, int price, int categoryNumber, int areaNum, int prodNum) {
		this.prodImg = prodImg;
		this.prodName = prodName;
		this.textOfPrd = textOfPrd;
		this.share = share;
		this.placeTraction = placeTraction;
		this.userId = userId;
		this.price = price;
		this.categoryNumber = categoryNumber;
		this.areaNum = areaNum;
		this.prodNum = prodNum;
	}

	public String[] getprodImg() {
		return prodImg;
	}

	public void setprodImg(String[] prodImg) {
		this.prodImg = prodImg;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
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

	public String getPlaceTraction() {
		return placeTraction;
	}

	public void setPlaceTraction(String placeTraction) {
		this.placeTraction = placeTraction;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCategoryNumber() {
		return categoryNumber;
	}

	public void setCategoryNumber(int categoryNumber) {
		this.categoryNumber = categoryNumber;
	}

	public int getAreaNum() {
		return areaNum;
	}

	public void setAreaNum(int areaNum) {
		this.areaNum = areaNum;
	}

	public int getProdNum() {
		return prodNum;
	}

	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}

	
	
}
