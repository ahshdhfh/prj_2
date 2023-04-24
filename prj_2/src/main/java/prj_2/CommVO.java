package prj_2;
import java.sql.Date;

public class CommVO {
	private String id, prodComments;
	private int commNum,prodNum;
	private Date writeDate;
	
	public CommVO() {
		
	}

	public CommVO(String id, String prodComments, int commNum, int prodNum, Date writeDate) {
		this.id = id;
		this.prodComments = prodComments;
		this.commNum = commNum;
		this.prodNum = prodNum;
		this.writeDate = writeDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getprodComments() {
		return prodComments;
	}

	public void setprodComments(String prodComments) {
		this.prodComments = prodComments;
	}

	public int getcommNum() {
		return commNum;
	}

	public void setcommNum(int commNum) {
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
