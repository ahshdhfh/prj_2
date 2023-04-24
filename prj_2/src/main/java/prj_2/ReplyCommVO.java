package prj_2;

import java.util.Date;

public class ReplyCommVO {
	
	//REPLY_NUM	REPLY_COMMENT	WRITE_DATE	COMMENT_NUM	USER_ID	
	private String replyCom,userId;
	private int repNum,commNum;
	private Date writeDate;
	
	public ReplyCommVO() {

	}

	public ReplyCommVO(String replyCom, String userId, int repNum, int commNum, Date writeDate) {
		this.replyCom = replyCom;
		this.userId = userId;
		this.repNum = repNum;
		this.commNum = commNum;
		this.writeDate = writeDate;
	}

	public String getReplyCom() {
		return replyCom;
	}

	public void setReplyCom(String replyCom) {
		this.replyCom = replyCom;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getRepNum() {
		return repNum;
	}

	public void setRepNum(int repNum) {
		this.repNum = repNum;
	}

	public int getcommNum() {
		return commNum;
	}

	public void setcommNum(int commNum) {
		this.commNum = commNum;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	
	
}
