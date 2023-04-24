package prj_2;

import java.util.Arrays;
import java.util.Date;

public class ProductDetailVO {

	private String  prodImg[],prodName, placeTraction, textOfPrd, sellUserId, selfIntroduce, sellUserImg;
	private int price, prodNum, categoryNumber, interestCnt, commCnt, viewCnt, areaNum;
	private Date inputDate;
	
	public ProductDetailVO() {
	
	}

	public ProductDetailVO(String[] prodImg, String prodName, String placeTraction, String textOfPrd, String sellUserId,
			String selfIntroduce, String sellUserImg, int price, int prodNum, int categoryNumber, int interestCnt,
			int commCnt, int viewCnt, int areaNum, Date inputDate) {
		this.prodImg = prodImg;
		this.prodName = prodName;
		this.placeTraction = placeTraction;
		this.textOfPrd = textOfPrd;
		this.sellUserId = sellUserId;
		this.selfIntroduce = selfIntroduce;
		this.sellUserImg = sellUserImg;
		this.price = price;
		this.prodNum = prodNum;
		this.categoryNumber = categoryNumber;
		this.interestCnt = interestCnt;
		this.commCnt = commCnt;
		this.viewCnt = viewCnt;
		this.areaNum = areaNum;
		this.inputDate = inputDate;
	}

	public String[] getProdImg() {
		return prodImg;
	}

	public void setProdImg(String[] prodImg) {
		this.prodImg = prodImg;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getPlaceTraction() {
		return placeTraction;
	}

	public void setPlaceTraction(String placeTraction) {
		this.placeTraction = placeTraction;
	}

	public String getTextOfPrd() {
		return textOfPrd;
	}

	public void setTextOfPrd(String textOfPrd) {
		this.textOfPrd = textOfPrd;
	}

	public String getSellUserId() {
		return sellUserId;
	}

	public void setSellUserId(String sellUserId) {
		this.sellUserId = sellUserId;
	}

	public String getSelfIntroduce() {
		return selfIntroduce;
	}

	public void setSelfIntroduce(String selfIntroduce) {
		this.selfIntroduce = selfIntroduce;
	}

	public String getSellUserImg() {
		return sellUserImg;
	}

	public void setSellUserImg(String sellUserImg) {
		this.sellUserImg = sellUserImg;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getProdNum() {
		return prodNum;
	}

	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}

	public int getCategoryNumber() {
		return categoryNumber;
	}

	public void setCategoryNumber(int categoryNumber) {
		this.categoryNumber = categoryNumber;
	}

	public int getInterestCnt() {
		return interestCnt;
	}

	public void setInterestCnt(int interestCnt) {
		this.interestCnt = interestCnt;
	}

	public int getCommCnt() {
		return commCnt;
	}

	public void setCommCnt(int commCnt) {
		this.commCnt = commCnt;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public int getAreaNum() {
		return areaNum;
	}

	public void setAreaNum(int areaNum) {
		this.areaNum = areaNum;
	}

	public Date getInputDate() {
		return inputDate;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	@Override
	public String toString() {
		return "ProductDetailVO [prodName=" + prodName + ", placeTraction=" + placeTraction + ", textOfPrd=" + textOfPrd
				+ ", sellUserId=" + sellUserId + ", selfIntroduce=" + selfIntroduce + ", sellUserImg=" + sellUserImg
				+ ", price=" + price + ", prodNum=" + prodNum + ", categoryNumber=" + categoryNumber + ", interestCnt="
				+ interestCnt + ", commCnt=" + commCnt + ", viewCnt=" + viewCnt + ", areaNum=" + areaNum
				+ ", inputDate=" + inputDate + "]";
	}


	
	
	

}// class