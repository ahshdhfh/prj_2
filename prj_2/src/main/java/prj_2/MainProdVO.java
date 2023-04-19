package prj_2;

public class MainProdVO {   
	
	public String prodImg, prodName;
	public int price;
	public String areaName;
	public int viewCnt, prodNum;
	
	
	public MainProdVO() {
	}


	public MainProdVO(String prodImg, String prodName, int price, String areaName, int viewCnt, int prodNum) {
		super();
		this.prodImg = prodImg;
		this.prodName = prodName;
		this.price = price;
		this.areaName = areaName;
		this.viewCnt = viewCnt;
		this.prodNum = prodNum;
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


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getAreaName() {
		return areaName;
	}


	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}


	public int getViewCnt() {
		return viewCnt;
	}


	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}


	public int getProdNum() {
		return prodNum;
	}


	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}


	@Override
	public String toString() {
		return "MainProdVO [prodImg=" + prodImg + ", prodName=" + prodName + ", price=" + price + ", areaName="
				+ areaName + ", viewCnt=" + viewCnt + ", prodNum=" + prodNum + "]";
	}
	

}//MainProdVO
