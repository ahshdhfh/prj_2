package prj_2;

import java.sql.Date;

public class SetCommVO {
	private String userId, prodComment, replyComment;
	private int commNum, prodNum, replyNum;
	private Date writeDate;
	
	
	
	public SetCommVO() {
	}

	public SetCommVO(String userId, String prodComment, String replyComment, int commNum, int prodNum, int replyNum,
			Date writeDate) {
		this.userId = userId;
		this.prodComment = prodComment;
		this.replyComment = replyComment;
		this.commNum = commNum;
		this.prodNum = prodNum;
		this.replyNum = replyNum;
		this.writeDate = writeDate;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getProdComment() {
		return prodComment;
	}
	
	public void setProdComment(String prodComment) {
		this.prodComment = prodComment;
	}
	
	public String getReplyComment() {
		return replyComment;
	}
	
	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
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
	
	public int getReplyNum() {
		return replyNum;
	}
	
	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}
	
	public Date getWriteDate() {
		return writeDate;
	}
	
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "SetCommVO [userId=" + userId + ", prodComment=" + prodComment + ", replyComment=" + replyComment
				+ ", commNum=" + commNum + ", prodNum=" + prodNum + ", replyNum=" + replyNum + ", writeDate="
				+ writeDate + "]";
	}


}
