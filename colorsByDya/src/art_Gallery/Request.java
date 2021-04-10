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
	private int artist_name;
	
	public Request(int request_id, String name, int phone, String email, String message, String photograph,
			String add_line_01, String add_line_02, int postal_code, String province, String city, String country,
			int artist_name) {
		
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
		this.artist_name = artist_name;
	}

	public int getRequest_id() {
		return request_id;
	}

	public String getName() {
		return name;
	}

	public int getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getMessage() {
		return message;
	}

	public String getPhotograph() {
		return photograph;
	}

	public String getAdd_line_01() {
		return add_line_01;
	}

	public String getAdd_line_02() {
		return add_line_02;
	}

	public int getPostal_code() {
		return postal_code;
	}

	public String getProvince() {
		return province;
	}

	public String getCity() {
		return city;
	}

	public String getCountry() {
		return country;
	}

	public int getArtist_name() {
		return artist_name;
	}

	
	
}
