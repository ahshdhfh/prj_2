package prj_2;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class ProductDetailVO {

	private String prodName, placeTraction, detailTxt, userId, personalIntro, userImg,areaName, categoryName;
	private int price, prodNum, interestCnt, commCnt, viewCnt;
	private Date inputDate;
	private List<String> prodImg;
	
	public ProductDetailVO() {
	
	}

	public ProductDetailVO(List<String> prodImg , String prodName, String placeTraction, String detailTxt, String userId,
			String personalIntro, String userImg, int price, int prodNum, String categoryName, int interestCnt,
			int commCnt, int viewCnt, String areaName, Date inputDate) {
		this.prodImg = prodImg; //상품이미지
		this.prodName = prodName; //이름
		this.placeTraction = placeTraction; //거래희망장소
		this.detailTxt = detailTxt; //상세설명
		this.userId = userId; //유저아이디
		this.personalIntro = personalIntro; //자기소개
		this.userImg = userImg; //유저이미지
		this.price = price; //가격
		this.prodNum = prodNum; //상품번호
		this.categoryName = categoryName; //카테고리 번호
		this.interestCnt = interestCnt; //관심수
		this.commCnt = commCnt; //댓글수
		this.viewCnt = viewCnt; //조회수
		this.areaName = areaName; //활동지역
		this.inputDate = inputDate; //등록일
	}


	public List<String> getProdImg() {
		return prodImg;
	}

	public void setProdImg(List<String> prodImg) {
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

	public String getdetailTxt() {
		return detailTxt;
	}

	public void setdetailTxt(String detailTxt) {
		this.detailTxt = detailTxt;
	}

	public String getuserId() {
		return userId;
	}

	public void setuserId(String userId) {
		this.userId = userId;
	}

	public String getpersonalIntro() {
		return personalIntro;
	}

	public void setpersonalIntro(String personalIntro) {
		this.personalIntro = personalIntro;
	}

	public String getuserImg() {
		return userImg;
	}

	public void setuserImg(String userImg) {
		this.userImg = userImg;
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


	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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


	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public Date getInputDate() {
		return inputDate;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	@Override
	public String toString() {
		return "ProductDetailVO [prodName=" + prodName + ", placeTraction=" + placeTraction + ", detailTxt=" + detailTxt
				+ ", userId=" + userId + ", personalIntro=" + personalIntro + ", userImg=" + userImg + ", areaName="
				+ areaName + ", categoryName=" + categoryName + ", price=" + price + ", prodNum=" + prodNum
				+ ", interestCnt=" + interestCnt + ", commCnt=" + commCnt + ", viewCnt=" + viewCnt + ", inputDate="
				+ inputDate + ", prodImg=" + prodImg + "]";
	}


	

}// class