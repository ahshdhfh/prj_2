package prj_2;

public class LoginSessionVO {
	private String nickName, personalIntro, userImg, userId;
	private int actAreaNum;
	
	public LoginSessionVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public LoginSessionVO(String nickName, String personalIntro, String userImg, String userId, int actAreaNum) {
		this.nickName = nickName;
		this.personalIntro = personalIntro;
		this.userImg = userImg;
		this.userId = userId;
		this.actAreaNum = actAreaNum;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getPersonalIntro() {
		return personalIntro;
	}


	public void setPersonalIntro(String personalIntro) {
		this.personalIntro = personalIntro;
	}


	public String getUserImg() {
		return userImg;
	}


	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getActAreaNum() {
		return actAreaNum;
	}


	public void setActAreaNum(int actAreaNum) {
		this.actAreaNum = actAreaNum;
	}
	
	
	
	
}
