package bean;

public class MemberBean {
	int no;
	String mem_name;
	String mem_id;
	String mem_pw;
	String mem_jumin1;
	String mem_jumin2;
	String mem_zip;	//우편번호
	String mem_addr1;	//주소
	String mem_addr2; 	//상세주소
	String mem_tel;
	String mem_email;
	String mem_date;	//가입일자
	String mem_gender;
	
	public MemberBean() {
		
	}
	public MemberBean(int no, String mem_id, String mem_pw, String mem_jumin1, String mem_jumin2, String mem_zip, String mem_addr1,
			String mem_addr2, String mem_tel, String mem_email, String mem_date, String mem_gender, String mem_name) {
		super();
		this.no = no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_jumin1 = mem_jumin1;
		this.mem_zip = mem_zip;
		this.mem_addr1 = mem_addr1;
		this.mem_addr2 = mem_addr2;
		this.mem_tel = mem_tel;
		this.mem_email = mem_email;
		this.mem_date = mem_date;
		this.mem_gender = mem_gender;
		this.mem_name = mem_name;
	}
	
	public String getMem_name() {
		return mem_name == null ? "" : mem_name.trim();
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_jumin1() {
		return mem_jumin1;
	}
	public void setMem_jumin1(String mem_jumin1) {
		this.mem_jumin1 = mem_jumin1;
	}
	public String getMem_zip() {
		return mem_zip;
	}
	public void setMem_zip(String mem_zip) {
		this.mem_zip = mem_zip;
	}
	public String getMem_addr1() {
		return mem_addr1;
	}
	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}
	public String getMem_addr2() {
		return mem_addr2;
	}
	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	public String getMem_jumin2() {
		return mem_jumin2 == null ? "" : mem_jumin2.trim();
	}
	public void setMem_jumin2(String mem_jumin2) {
		this.mem_jumin2 = mem_jumin2;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_date() {
		return mem_date;
	}
	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	
	
	
}
