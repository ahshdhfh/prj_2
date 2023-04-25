package prj_2;

import java.sql.Date;

/**
 * 관리자 댓글테이블 VO
 * @author user
 */
public class AdminCommVO {
	
	private int commentNum, prodNum;
	private String userId, prodComment;
	private Date writeDate;	
	
	public AdminCommVO() {
	}

	public AdminCommVO(int commentNum, int prodNum, String userId, String prodComment, Date writeDate) {
		this.commentNum = commentNum;
		this.prodNum = prodNum;
		this.userId = userId;
		this.prodComment = prodComment;
		this.writeDate = writeDate;
	}
	
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getProdNum() {
		return prodNum;
	}
	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
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
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "AdminCommVO [commentNum=" + commentNum + ", prodNum=" + prodNum + ", userId=" + userId
				+ ", prodComment=" + prodComment + ", writeDate=" + writeDate + "]";
	}	
	
}//VO
