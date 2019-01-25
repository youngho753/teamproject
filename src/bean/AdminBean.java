package bean;

import java.sql.Date;

public class AdminBean {
	
	private int no;
	private String mpostfile;
	private String msubject;
	private String mtype;
	private Date mdate;
	private String mdirector;
	private String mactor;
	private String mgenre;
	private String mstory;
	private String ageLimit;
	
	
	public String getMpostfile() {
		return mpostfile == null ? "" : mpostfile.trim();
	}
	public void setMpostfile(String mpostfile) {
		this.mpostfile = mpostfile;
	}
	public String getMsubject() {
		return msubject == null ? "" : msubject.trim();
	}
	public void setMsubject(String msubject) {
		this.msubject = msubject;
	}
	public String getMtype() {
		return mtype == null ? "" : mtype.trim();
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}

	public Date getMdate() {
		return mdate;
	}
	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
	public String getMdirector() {
		return mdirector == null ? "" : mdirector.trim();
	}
	public void setMdirector(String mdirector) {
		this.mdirector = mdirector;
	}
	public String getMactor() {
		return mactor == null ? "" : mactor.trim();
	}
	public void setMactor(String mactor) {
		this.mactor = mactor;
	}
	public String getMgenre() {
		return mgenre == null ? "" : mgenre.trim();
	}
	public void setMgenre(String mgenre) {
		this.mgenre = mgenre;
	}
	public String getMstory() {
		return mstory == null ? "" : mstory.trim();
	}
	public void setMstory(String mstory) {
		this.mstory = mstory;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAgeLimit() {
		return ageLimit == null ? "" : ageLimit.trim();
	}
	public void setAgeLimit(String ageLimit) {
		this.ageLimit = ageLimit;
	}

	
	
	

}
