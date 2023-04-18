package prj_2;

public class FindPassVO {
	private String userId, userName, email;
	
	public FindPassVO() {
	}

	@Override
	public String toString() {
		return "FindPassVO [userId=" + userId + ", userName=" + userName + ", email=" + email + "]";
	}

	public FindPassVO(String userId, String userName, String email) {
		this.userId = userId;
		this.userName = userName;
		this.email = email;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
