package prj_2;

/**
 * 관리자 상품테이블 VO
 * @author user
 */
public class AdminProductVO {

	private String prodName, inputDate, categoryName, userId;
	private int prodNum, price;
	
	public AdminProductVO() {
	}

	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProdNum() {
		return prodNum;
	}
	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "AdminProductVO [prodName=" + prodName + ", inputDate=" + inputDate + ", categoryName=" + categoryName
				+ ", userId=" + userId + ", prodNum=" + prodNum + ", price=" + price + "]";
	}
	
	
}
