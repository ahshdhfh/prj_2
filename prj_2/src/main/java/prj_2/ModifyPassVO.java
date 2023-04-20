package prj_2;

public class ModifyPassVO {
	private String userId, newPass;

	public ModifyPassVO() {

	}

	public ModifyPassVO(String userId, String newPass) {
		this.userId = userId;
		this.newPass = newPass;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getNewPass() {
		return newPass;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}
	
	
	
}
