package prj_2;

import java.util.Date;

public class InterestListVO {

	private String prodImg, prodName;
	private int prodNum, price;
	private Date checkedDate;
	public InterestListVO() {
	}
	public InterestListVO(String prodImg, String prodName, int prodNum, int price, Date checkedDate) {
		this.prodImg = prodImg;
		this.prodName = prodName;
		this.prodNum = prodNum;
		this.price = price;
		this.checkedDate = checkedDate;
	}
	public String getProdImg() {
		return prodImg;
	}
	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
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
	public Date getCheckedDate() {
		return checkedDate;
	}
	public void setCheckedDate(Date checkedDate) {
		this.checkedDate = checkedDate;
	}
	@Override
	public String toString() {
		return "InterestListVO [prodImg=" + prodImg + ", prodName=" + prodName + ", prodNum=" + prodNum + ", price="
				+ price + ", checkedDate=" + checkedDate + "]";
	}

	
}