package art_Gallery;

public class Artist {
	
private int artist_id;
private String name;
private String phone_no;
private String email;
private String description;
private String add_line_01;
private String add_line_02;
private String postal_code;
private String province;
private String city;
private String country;
private String username;
private String password;
private String  a_admin_id;

public Artist(int artist_id, String name, String phone_no, String email, String description, String add_line_01,
		String add_line_02, String postal_code, String province, String city, String country, String username,
		String password, String a_admin_id) {
	super();
	this.artist_id = artist_id;
	this.name = name;
	this.phone_no = phone_no;
	this.email = email;
	this.description = description;
	this.add_line_01 = add_line_01;
	this.add_line_02 = add_line_02;
	this.postal_code = postal_code;
	this.province = province;
	this.city = city;
	this.country = country;
	this.username = username;
	this.password = password;
	this.a_admin_id = a_admin_id;
}






public Artist(int artist_id, String name, String phone_no, String email, String description, String add_line_01,
		String add_line_02, String postal_code, String province, String city, String country) {
	super();
	this.artist_id = artist_id;
	this.name = name;
	this.phone_no = phone_no;
	this.email = email;
	this.description = description;
	this.add_line_01 = add_line_01;
	this.add_line_02 = add_line_02;
	this.postal_code = postal_code;
	this.province = province;
	this.city = city;
	this.country = country;
}






public int getArtist_id() {
	return artist_id;
}

public void setArtist_id(int artist_id) {
	this.artist_id = artist_id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPhone_no() {
	return phone_no;
}

public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
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

public String getPostal_code() {
	return postal_code;
}

public void setPostal_code(String postal_code) {
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

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getA_admin_id() {
	return a_admin_id;
}

public void setA_admin_id(String a_admin_id) {
	this.a_admin_id = a_admin_id;
}








}