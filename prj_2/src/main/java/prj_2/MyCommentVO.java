package prj_2;

public class MyCommentVO {

	private int comment_Num, reply_Num;
	private String prod_Comments, reply_Comment;
	
	public MyCommentVO() {
		super();
	}
	
	public MyCommentVO(int comment_Num, int reply_Num, String prod_Comments, String reply_Comment) {
		super();
		this.comment_Num = comment_Num;
		this.reply_Num = reply_Num;
		this.prod_Comments = prod_Comments;
		this.reply_Comment = reply_Comment;
	}

	public int getComment_Num() {
		return comment_Num;
	}
	public void setComment_Num(int comment_Num) {
		this.comment_Num = comment_Num;
	}
	public int getReply_Num() {
		return reply_Num;
	}
	public void setReply_Num(int reply_Num) {
		this.reply_Num = reply_Num;
	}
	public String getProd_Comments() {
		return prod_Comments;
	}
	public void setProd_Comments(String prod_Comments) {
		this.prod_Comments = prod_Comments;
	}
	public String getReply_Comment() {
		return reply_Comment;
	}
	public void setReply_Comment(String reply_Comment) {
		this.reply_Comment = reply_Comment;
	}
	
	@Override
	public String toString() {
		return "MyCommentVO [comment_Num=" + comment_Num + ", reply_Num=" + reply_Num + ", prod_Comments="
				+ prod_Comments + ", reply_Comment=" + reply_Comment + "]";
	}
	
}
