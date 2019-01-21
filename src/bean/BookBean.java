package bean;

public class BookBean {
	int pay_ticketno;
	int pay_hallNo;	//영화관
	String pay_movieName;
	String pay_id;
	int pay_price;
	int pay_personnel;	//인원수
	String pay_date;
	String pay_type;
	
	BookBean(){
		
	}
	
	
	public BookBean(int pay_ticketno, int pay_hallNo, String pay_movieName, String pay_id, int pay_price,
			int pay_personnel, String pay_date, String pay_type) {
		super();
		this.pay_ticketno = pay_ticketno;
		this.pay_hallNo = pay_hallNo;
		this.pay_movieName = pay_movieName;
		this.pay_id = pay_id;
		this.pay_price = pay_price;
		this.pay_personnel = pay_personnel;
		this.pay_date = pay_date;
		this.pay_type = pay_type;
	}


	public int getPay_ticketno() {
		return pay_ticketno;
	}
	public void setPay_ticketno(int pay_ticketno) {
		this.pay_ticketno = pay_ticketno;
	}
	public int getPay_hallNo() {
		return pay_hallNo;
	}
	public void setPay_hallNo(int pay_hallNo) {
		this.pay_hallNo = pay_hallNo;
	}
	public String getPay_movieName() {
		return pay_movieName;
	}
	public void setPay_movieName(String pay_movieName) {
		this.pay_movieName = pay_movieName;
	}
	public String getPay_id() {
		return pay_id;
	}
	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public int getPay_personnel() {
		return pay_personnel;
	}
	public void setPay_personnel(int pay_personnel) {
		this.pay_personnel = pay_personnel;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	
	
	
}
