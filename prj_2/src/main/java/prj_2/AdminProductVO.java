package prj_2;

import java.sql.Date;

/**
 * 관리자 상품테이블 VO
 * @author user
 */
public class AdminProductVO {

	private String prodName, categoryName, userId;
	private Date inputDate;
	private int prodNum, price;
	
	public AdminProductVO() {
	}

	public AdminProductVO(String prodName, String categoryName, String userId, Date inputDate, int prodNum, int price) {
		this.prodName = prodName;
		this.categoryName = categoryName;
		this.userId = userId;
		this.inputDate = inputDate;
		this.prodNum = prodNum;
		this.price = price;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
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
		return "AdminProductVO [prodName=" + prodName + ", categoryName=" + categoryName + ", userId=" + userId
				+ ", inputDate=" + inputDate + ", prodNum=" + prodNum + ", price=" + price + "]";
	}
	
	
}//VO
