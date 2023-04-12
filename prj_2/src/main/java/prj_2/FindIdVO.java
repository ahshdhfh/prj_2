package prj_2;

public class FindIdVO {
	private String userName, eMail;

	public FindIdVO() {

	}
	
	
	public FindIdVO(String userName, String eMail) {
		this.userName = userName;
		this.eMail = eMail;
	}



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	
	
}
