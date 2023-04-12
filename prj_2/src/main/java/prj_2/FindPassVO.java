package prj_2;

public class FindPassVO {
	private String id, name, eMail;
	
	public FindPassVO() {

	}

	public FindPassVO(String id, String name, String eMail) {
		this.id = id;
		this.name = name;
		this.eMail = eMail;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	
	
	
	
}
