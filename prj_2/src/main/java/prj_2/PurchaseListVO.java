package prj_2;

import java.sql.Date;

public class PurchaseListVO { //���ų���
	
	public int prodNum;
	public String prodName,sellerId;
	public Date transactionDate;
	
	public PurchaseListVO() {
	}

	
	
	public PurchaseListVO(int prodNum, String prodName, String sellerId, Date transactionDate) {
		super();
		this.prodNum = prodNum;
		this.prodName = prodName;
		this.sellerId = sellerId;
		this.transactionDate = transactionDate;
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

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}


	@Override
	public String toString() {
		return "PurchaseListVO [prodNum=" + prodNum + ", prodName=" + prodName + ", sellerId=" + sellerId
				+ ", transactionDate=" + transactionDate + "]";
	}
	
	
	
	

}//PurchaseListVO
