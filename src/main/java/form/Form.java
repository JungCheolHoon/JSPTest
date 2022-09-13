package form;

public class Form implements java.io.Serializable {
	private String userid, userpwd, usernickname, email;
	
	public Form() {
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsernickname() {
		return usernickname;
	}

	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "{\"id\":" + "\""+ userid + "\""+ ","+ 
					"\"pwd\":" + "\""+userpwd +"\""+ ","+ 
					"\"usernickname\":" +"\""+ usernickname +"\""+ ","+
					"\"email\":" +"\""+ email +"\""+
					"}";
	}
}
