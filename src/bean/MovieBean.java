package bean;

public class MovieBean {
	int no;
	String movie_name;
	String movie_date;
	String movie_director;
	String movie_type;
	String movie_audience;
	String movie_summary;
	
	public MovieBean(){
		
	}
	
	public MovieBean(int no, String movie_name, String movie_date, String movie_director, String movie_type,
			String movie_audience, String movie_summary) {
		super();
		this.no = no;
		this.movie_name = movie_name;
		this.movie_date = movie_date;
		this.movie_director = movie_director;
		this.movie_type = movie_type;
		this.movie_audience = movie_audience;
		this.movie_summary = movie_summary;
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
	public String getMovie_date() {
		return movie_date;
	}
	public void setMovie_date(String movie_date) {
		this.movie_date = movie_date;
	}
	public String getMovie_director() {
		return movie_director;
	}
	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}
	public String getMovie_type() {
		return movie_type;
	}
	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}
	public String getMovie_audience() {
		return movie_audience;
	}
	public void setMovie_audience(String movie_audience) {
		this.movie_audience = movie_audience;
	}
	public String getMovie_summary() {
		return movie_summary;
	}
	public void setMovie_summary(String movie_summary) {
		this.movie_summary = movie_summary;
	}
	
	
}