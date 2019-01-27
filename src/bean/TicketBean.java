package bean;

public class TicketBean {
	
	int no; 
	String movie_name; 
	String movie_time_strart;
	String movie_time_end;
	String movie_auditorium;
	String movie_seat;
	
	public TicketBean(int no, String movie_name, String movie_time_strart, String movie_time_end, String movie_auditorium, String movie_seat) {
		super();
		this.no = no;
		this.movie_name = movie_name;
		this.movie_time_strart = movie_time_strart;
		this.movie_time_end = movie_time_end;
		this.movie_auditorium = movie_auditorium;
		this.movie_seat = movie_seat;
		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_time_strart() {
		return movie_time_strart;
	}
	public void setMovie_time_strart(String movie_time_strart) {
		this.movie_time_strart = movie_time_strart;
	}
	public String getMovie_time_end() {
		return movie_time_end;
	}
	public void setMovie_time_end(String movie_time_end) {
		this.movie_time_end = movie_time_end;
	}
	public String getMovie_auditorium() {
		return movie_auditorium;
	}
	public void setMovie_auditorium(String movie_auditorium) {
		this.movie_auditorium = movie_auditorium;
	}
	public String getMovie_seat() {
		return movie_seat;
	}
	public void setMovie_seat(String movie_seat) {
		this.movie_seat = movie_seat;
	}
	
	
	

}
