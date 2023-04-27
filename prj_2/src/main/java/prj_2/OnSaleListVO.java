package prj_2;

import java.sql.Date;

public class OnSaleListVO {
	
	public int prodNum;
	public String prodName;
	public Date inputDate;
	
	public OnSaleListVO() {
	}
	
	

	public OnSaleListVO(int prodNum, String prodName, Date inputDate) {
		super();
		this.prodNum = prodNum;
		this.prodName = prodName;
		this.inputDate = inputDate;
	}



	public int getProdNum() {
		return prodNum;
	}

	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public Date getInputDate() {
		return inputDate;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	@Override
	public String toString() {
		return "OnSaleListVO [prodNum=" + prodNum + ", prodName=" + prodName + ", inputDate=" + inputDate + "]";
	}
	
	

}
