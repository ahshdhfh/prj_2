package prj_2;

import java.util.Date;

public class SoldVO {
	private int prod_Num;
	private String prod_Name, purchaser_Id;
	private Date transaction_Date;
	
	
	public SoldVO() {
		super();
	}
	
	
	public SoldVO(int prod_Num, String prod_Name, String purchaser_Id, Date transaction_Date) {
		super();
		this.prod_Num = prod_Num;
		this.prod_Name = prod_Name;
		this.purchaser_Id = purchaser_Id;
		this.transaction_Date = transaction_Date;
	}

	public int getProd_Num() {
		return prod_Num;
	}
	public void setProd_Num(int prod_Num) {
		this.prod_Num = prod_Num;
	}
	public String getProd_Name() {
		return prod_Name;
	}
	public void setProd_Name(String prod_Name) {
		this.prod_Name = prod_Name;
	}
	public String getPurchaser_Id() {
		return purchaser_Id;
	}
	public void setPurchaser_Id(String purchaser_Id) {
		this.purchaser_Id = purchaser_Id;
	}
	public Date getTransaction_Date() {
		return transaction_Date;
	}
	public void setTransaction_Date(Date transaction_Date) {
		this.transaction_Date = transaction_Date;
	}
	@Override
	public String toString() {
		return "SoldVO [prod_Num=" + prod_Num + ", prod_Name=" + prod_Name + ", purchaser_Id=" + purchaser_Id
				+ ", transaction_Date=" + transaction_Date + "]";
	}
	
	
}
