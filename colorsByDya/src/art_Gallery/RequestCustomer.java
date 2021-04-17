package art_Gallery;

public class RequestCustomer {
	private int customer_id;
	private String full_name;
	private String username;
	private String password;
	private String phone_no;
	private String add_line_01;
	private String add_line_02;
	private int postal_code;
	private String province;
	private String city;
	private String country;
	
	public RequestCustomer(int customer_id, String full_name, String username, String password, String phone_no,
			String add_line_01, String add_line_02, int postal_code, String province, String city, String country) {
		
		this.customer_id = customer_id;
		this.full_name = full_name;
		this.username = username;
		this.password = password;
		this.phone_no = phone_no;
		this.add_line_01 = add_line_01;
		this.add_line_02 = add_line_02;
		this.postal_code = postal_code;
		this.province = province;
		this.city = city;
		this.country = country;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public String getFull_name() {
		return full_name;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getPhone_no() {
		return phone_no;
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
	
}
