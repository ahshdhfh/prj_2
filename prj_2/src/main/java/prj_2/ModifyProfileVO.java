package prj_2;

public class ModifyProfileVO {
	private String nickName, userImg, personalIntro;
	
	public ModifyProfileVO() {
	
	}

	
	
	public ModifyProfileVO(String nickName, String userImg, String personalIntro) {
		this.nickName = nickName;
		this.userImg = userImg;
		this.personalIntro = personalIntro;
	}



	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserImg() {
		return userImg;
	}

	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	public String getPersonalIntro() {
		return personalIntro;
	}

	public void setPersonalIntro(String personalIntro) {
		this.personalIntro = personalIntro;
	}

	
	
	
}
