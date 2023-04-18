package prj_2;

public class FindIdVO {
	private String userName, email;

	public FindIdVO() {

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

	public FindIdVO(String userName, String email) {
		super();
		this.userName = userName;
		this.email = email;
	}
	
	
	
}
