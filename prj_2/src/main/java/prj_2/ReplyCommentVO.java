package prj_2;

public class ReplyCommentVO {
	private int replyNum;
	private String replyComment;
	
	public ReplyCommentVO() {
		super();
	}

	public ReplyCommentVO(int replyNum, String replyComment) {
		super();
		this.replyNum = replyNum;
		this.replyComment = replyComment;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}

	public String getReplyComment() {
		return replyComment;
	}

	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}

	@Override
	public String toString() {
		return "ReplyCommentVO [replyNum=" + replyNum + ", replyComment=" + replyComment + "]";
	}
	
	
}
