package prj_2;
import java.sql.Date;

public class CommVO {
	private String id, writeCom;
	private int commentNum;
	private Date writeDate;
	
	public CommVO() {
	
	}

	public CommVO(String id, String writeCom, int commentNum, Date writeDate) {
		this.id = id;
		this.writeCom = writeCom;
		this.commentNum = commentNum;
		this.writeDate = writeDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWriteCom() {
		return writeCom;
	}

	public void setWriteCom(String writeCom) {
		this.writeCom = writeCom;
	}

	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	
}
