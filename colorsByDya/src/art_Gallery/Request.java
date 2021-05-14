package art_Gallery;

public class Request {
	private int request_id;
	private String name;
	private int phone;
	private String email;
	private String message;
	private String photograph;
	private String add_line_01;
	private String add_line_02;
	private int postal_code;
	private String province;
	private String city;
	private String country;
	private int c_customer_id;
	private int artist_name;
	private boolean accept;
	
	public Request(int request_id, String name, int phone, String email, String message, String photograph,
			String add_line_01, String add_line_02, int postal_code, String province, String city, String country,int c_customer_id,
			int artist_name,boolean accept) {
		
		this.request_id = request_id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.message = message;
		this.photograph = photograph;
		this.add_line_01 = add_line_01;
		this.add_line_02 = add_line_02;
		this.postal_code = postal_code;
		this.province = province;
		this.city = city;
		this.country = country;
		this.c_customer_id = c_customer_id;
		this.artist_name = artist_name;
		this.accept = accept;
	}

	public boolean isAccept() {
		return accept;
	}

	public void setAccept(boolean accept) {
		this.accept = accept;
	}

	public int getRequest_id() {
		return request_id;
	}

	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPhotograph() {
		return photograph;
	}

	public void setPhotograph(String photograph) {
		this.photograph = photograph;
	}

	public String getAdd_line_01() {
		return add_line_01;
	}

	public void setAdd_line_01(String add_line_01) {
		this.add_line_01 = add_line_01;
	}

	public String getAdd_line_02() {
		return add_line_02;
	}

	public void setAdd_line_02(String add_line_02) {
		this.add_line_02 = add_line_02;
	}

	public int getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getC_customer_id() {
		return c_customer_id;
	}

	public void setC_customer_id(int c_customer_id) {
		this.c_customer_id = c_customer_id;
	}

	public int getArtist_name() {
		return artist_name;
	}

	public void setArtist_name(int artist_name) {
		this.artist_name = artist_name;
	}

	/*
	 * public int getRequest_id() { return request_id; }
	 * 
	 * public String getName() { return name; }
	 * 
	 * public int getPhone() { return phone; }
	 * 
	 * public String getEmail() { return email; }
	 * 
	 * public String getMessage() { return message; }
	 * 
	 * public String getPhotograph() { return photograph; }
	 * 
	 * public String getAdd_line_01() { return add_line_01; }
	 * 
	 * public String getAdd_line_02() { return add_line_02; }
	 * 
	 * public int getPostal_code() { return postal_code; }
	 * 
	 * public String getProvince() { return province; }
	 * 
	 * public String getCity() { return city; }
	 * 
	 * public String getCountry() { return country; }
	 * 
	 * public int getC_customer_id() { return c_customer_id; }
	 * 
	 * public int getArtist_name() { return artist_name; }
	 */

	
	
}
