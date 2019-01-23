package bean;

public class UnMemBean {
	int no;
	String nu_name;
	String un_pw;
	String un_birth;
	String un_phone;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getNu_name() {
		return nu_name == null ? "" : nu_name.trim();
	}
	public void setNu_name(String nu_name) {
		this.nu_name = nu_name;
	}
	public String getUn_pw() {
		return un_pw == null ? "" : un_pw.trim();
	}
	public void setUn_pw(String un_pw) {
		this.un_pw = un_pw;
	}
	public String getUn_birth() {
		return un_birth == null ? "" : un_birth.trim();
	}
	public void setUn_birth(String un_birth) {
		this.un_birth = un_birth;
	}
	public String getUn_phone() {
		return un_phone == null ? "" : un_phone.trim();
	}
	public void setUn_phone(String un_phone) {
		this.un_phone = un_phone;
	}

}
