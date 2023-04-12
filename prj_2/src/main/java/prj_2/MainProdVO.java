package prj_2;

public class MainProdVO {
	
	public String prodImg, prodName, areaName;
	public int prodNum, price, viewCnt;
	
	public MainProdVO() {
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

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
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

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}


	@Override
	public String toString() {
		return "MainProdVO [prodImg=" + prodImg + ", prodName=" + prodName + ", areaName=" + areaName + ", prodNum="
				+ prodNum + ", price=" + price + ", viewCnt=" + viewCnt + "]";
	}
	
	
	
	
	
	
}//MainProdVO
