package prj_2;

import java.util.Arrays;

public class ProductDetailVO {
	private String imgList[], prodName, showCategory, location, textOfPrd, sellUesrId, selfIntroduce, sellUserImg[];
	private int price, prodNum, countInter,countCom,countView;
	
	public ProductDetailVO() {
	
	}

	public ProductDetailVO(String[] imgList, String prodName, String showCategory, String location, String textOfPrd,
			String sellUesrId, String selfIntroduce, String[] sellUserImg, int price, int prodNum, int countInter,
			int countCom, int countView) {
		this.imgList = imgList;
		this.prodName = prodName;
		this.showCategory = showCategory;
		this.location = location;
		this.textOfPrd = textOfPrd;
		this.sellUesrId = sellUesrId;
		this.selfIntroduce = selfIntroduce;
		this.sellUserImg = sellUserImg;
		this.price = price;
		this.prodNum = prodNum;
		this.countInter = countInter;
		this.countCom = countCom;
		this.countView = countView;
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

	public String getShowCategory() {
		return showCategory;
	}

	public void setShowCategory(String showCategory) {
		this.showCategory = showCategory;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTextOfPrd() {
		return textOfPrd;
	}

	public void setTextOfPrd(String textOfPrd) {
		this.textOfPrd = textOfPrd;
	}

	public String getSellUesrId() {
		return sellUesrId;
	}

	public void setSellUesrId(String sellUesrId) {
		this.sellUesrId = sellUesrId;
	}

	public String getSelfIntroduce() {
		return selfIntroduce;
	}

	public void setSelfIntroduce(String selfIntroduce) {
		this.selfIntroduce = selfIntroduce;
	}

	public String[] getSellUserImg() {
		return sellUserImg;
	}

	public void setSellUserImg(String[] sellUserImg) {
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

	public int getCountInter() {
		return countInter;
	}

	public void setCountInter(int countInter) {
		this.countInter = countInter;
	}

	public int getCountCom() {
		return countCom;
	}

	public void setCountCom(int countCom) {
		this.countCom = countCom;
	}

	public int getCountView() {
		return countView;
	}

	public void setCountView(int countView) {
		this.countView = countView;
	}

	@Override
	public String toString() {
		return "ProductDetailVO [imgList=" + Arrays.toString(imgList) + ", prodName=" + prodName + ", showCategory="
				+ showCategory + ", location=" + location + ", textOfPrd=" + textOfPrd + ", sellUesrId=" + sellUesrId
				+ ", selfIntroduce=" + selfIntroduce + ", sellUserImg=" + Arrays.toString(sellUserImg) + ", price="
				+ price + ", prodNum=" + prodNum + ", countInter=" + countInter + ", countCom=" + countCom
				+ ", countView=" + countView + "]";
	}
	
	
	
}//class
