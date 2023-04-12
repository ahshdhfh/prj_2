package prj_2;

import java.util.Date;

public class InterestListVO {

	private String prod_Img;
	private int prod_Num;
	private Date checked_Date;
	
	
	public InterestListVO() {
		super();
	}
	
	public InterestListVO(String prod_Img, int prod_Num, Date checked_Date) {
		super();
		this.prod_Img = prod_Img;
		this.prod_Num = prod_Num;
		this.checked_Date = checked_Date;
	}

	public String getProd_Img() {
		return prod_Img;
	}
	public void setProd_Img(String prod_Img) {
		this.prod_Img = prod_Img;
	}
	public int getProd_Num() {
		return prod_Num;
	}
	public void setProd_Num(int prod_Num) {
		this.prod_Num = prod_Num;
	}
	public Date getChecked_Date() {
		return checked_Date;
	}
	public void setChecked_Date(Date checked_Date) {
		this.checked_Date = checked_Date;
	}
	
	@Override
	public String toString() {
		return "InterestListVO [prod_Img=" + prod_Img + ", prod_Num=" + prod_Num + ", checked_Date=" + checked_Date
				+ "]";
	}
	
	
}
