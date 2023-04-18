package prj_2;

public class ModifyInfoVO {
	private String email, addr, detailAddr, tel;
	private int actAreaNum, zipcode;
	
	public ModifyInfoVO() {

	}

	public ModifyInfoVO(String email, String addr, String detailAddr, String tel, int actAreaNum, int zipcode) {
		this.email = email;
		this.addr = addr;
		this.detailAddr = detailAddr;
		this.tel = tel;
		this.actAreaNum = actAreaNum;
		this.zipcode = zipcode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String phoneNum) {
		this.tel = phoneNum;
	}

	public int getActAreaNum() {
		return actAreaNum;
	}

	public void setActAreaNum(int actAreaNum) {
		this.actAreaNum = actAreaNum;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}


	
	
}
