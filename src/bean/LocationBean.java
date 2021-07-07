package bean;

public class LocationBean {
	int location_no;
	String location_name;
	int location_bigNum;
	int location_x;
	int location_y;
	
	LocationBean(){
		
	}
	

	public int getLocation_bigNum() {
		return location_bigNum;
	}


	public void setLocation_bigNum(int location_bigNum) {
		this.location_bigNum = location_bigNum;
	}


	public LocationBean(int location_no, String location_name, int location_bigNum, int location_x, int location_y) {
		super();
		this.location_no = location_no;
		this.location_name = location_name;
		this.location_bigNum = location_bigNum;
		this.location_x = location_x;
		this.location_y = location_y;
	}
	public int getLocation_no() {
		return location_no;
	}
	public void setLocation_no(int location_no) {
		this.location_no = location_no;
	}
	public String getLocation_name() {
		return location_name;
	}
	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}
	public int getLocation_x() {
		return location_x;
	}
	public void setLocation_x(int location_x) {
		this.location_x = location_x;
	}
	public int getLocation_y() {
		return location_y;
	}
	public void setLocation_y(int location_y) {
		this.location_y = location_y;
	}
	
	
}
