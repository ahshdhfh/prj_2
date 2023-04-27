package prj_2;
import java.sql.Date;

public class CommVO {
	private String userId, prodComments;
	private int commNum,prodNum;
	private Date writeDate;
	
	public CommVO() {
		
	}

	public CommVO(String userId, String prodComments, int commNum, int prodNum, Date writeDate) {
		this.userId = userId;
		this.prodComments = prodComments;
		this.commNum = commNum;
		this.prodNum = prodNum;
		this.writeDate = writeDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getProdComments() {
		return prodComments;
	}

	public void setProdComments(String prodComments) {
		this.prodComments = prodComments;
	}

	public int getCommNum() {
		return commNum;
	}

	public void setCommNum(int commNum) {
		this.commNum = commNum;
	}

	public int getProdNum() {
		return prodNum;
	}

	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	
	
	
}
