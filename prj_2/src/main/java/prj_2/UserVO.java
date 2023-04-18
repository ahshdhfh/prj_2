package prj_2;

public class UserVO {
	private String userId, userPassword, userName, birthDate, email, email2, nickName, gender, addr, detailAddr, personalIntro, userImg, createDate, tel1, tel2, deleteDate, loginDate;
	private int zipcode, actAreaNum;
	
	public UserVO() {

	}
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPassword=" + userPassword + ", userName=" + userName + ", birthDate="
				+ birthDate + ", email=" + email + ", email2=" + email2 + ", nickName=" + nickName + ", gender="
				+ gender + ", addr=" + addr + ", detailAddr=" + detailAddr + ", personalIntro=" + personalIntro
				+ ", userImg=" + userImg + ", createDate=" + createDate + ", tel1=" + tel1 + ", tel2=" + tel2
				+ ", deleteDate=" + deleteDate + ", loginDate=" + loginDate + ", zipcode=" + zipcode + ", actAreaNum="
				+ actAreaNum + "]";
	}

	public UserVO(String userId, String userPassword, String userName, String birthDate, String email, String email2,
			String nickName, String gender, String addr, String detailAddr, String personalIntro, String userImg,
			String createDate, String tel1, String tel2, String deleteDate, String loginDate, int zipcode,
			int actAreaNum) {
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.birthDate = birthDate;
		this.email = email;
		this.email2 = email2;
		this.nickName = nickName;
		this.gender = gender;
		this.addr = addr;
		this.detailAddr = detailAddr;
		this.personalIntro = personalIntro;
		this.userImg = userImg;
		this.createDate = createDate;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.deleteDate = deleteDate;
		this.loginDate = loginDate;
		this.zipcode = zipcode;
		this.actAreaNum = actAreaNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
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

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}

	public String getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public int getActAreaNum() {
		return actAreaNum;
	}

	public void setActAreaNum(int actAreaNum) {
		this.actAreaNum = actAreaNum;
	}
	
	
	
	
}
