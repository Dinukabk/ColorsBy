package art_Gallery;

public class CustomerNew {

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
	
	public CustomerNew(int customer_id, String full_name2, String username2, String passU, String phone_no2, String add_line_012,
			String add_line_022, int postal_code, String province2, String city2, String country2) {
		this.customer_id = customer_id;
		this.full_name = full_name2;
		this.username = username2;
		this.password = passU;
		this.phone_no = phone_no2;
		this.add_line_01 = add_line_012;
		this.add_line_02 = add_line_022;
		this.postal_code = postal_code;
		this.province = province2;
		this.city = city2;
		this.country = country2;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public char getFull_name() {
		return full_name;
	}

	public char getUsername() {
		return username;
	}

	public char getPassword() {
		return password;
	}

	public char getPhone_no() {
		return phone_no;
	}

	public char getAdd_line_01() {
		return add_line_01;
	}

	public char getAdd_line_02() {
		return add_line_02;
	}

	public int getPostal_code() {
		return postal_code;
	}

	public char getProvince() {
		return province;
	}

	public char getCity() {
		return city;
	}

	public char getCountry() {
		return country;
	}

			
	
}
