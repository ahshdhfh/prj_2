package prj_2;

/**
 *  관리자 로그인 VO
 * @author user
 */
public class AdminVO {
	private String adminId, adminPassword;

	public AdminVO() {
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	@Override
	public String toString() {
		return "AdminVO [adminId=" + adminId + ", adminPassword=" + adminPassword + "]";
	}
	
	
}
