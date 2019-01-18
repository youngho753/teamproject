package bean;

public class CommentBean {
	int no;
	String comment_id;
	String comment_date;
	int comment_grade;	//점수
	String comment_contents;//내용
	String comment_movie;
	
	public CommentBean(){
		
	}
	
	public CommentBean(int no, String comment_id, String comment_date, int comment_grade, String comment_comtents,
			String comment_movie) {
		super();
		this.no = no;
		this.comment_id = comment_id;
		this.comment_date = comment_date;
		this.comment_grade = comment_grade;
		this.comment_contents = comment_comtents;
		this.comment_movie = comment_movie;
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public int getComment_grade() {
		return comment_grade;
	}
	public void setComment_grade(int comment_grade) {
		this.comment_grade = comment_grade;
	}
	public String getComment_contents() {
		return comment_contents;
	}
	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
	}
	public String getComment_movie() {
		return comment_movie;
	}
	public void setComment_movie(String comment_movie) {
		this.comment_movie = comment_movie;
	}
	
	
}
