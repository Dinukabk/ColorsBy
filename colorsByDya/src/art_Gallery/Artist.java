package art_Gallery;

public class Artist {
	
private int artist_id;
private String name;
private int phone_no;
private String email;
private String description;
private String add_line_01;
private String add_line_02;
private int postal_code;
private String province;
private String city;
private String country;
private String username;
private String password;
private int a_admin_id;

public Artist(int artist_id, String name, int phone_no, String email, String description, String add_line_01,
		String add_line_02, int postal_code, String province, String city, String country, String username,
		String password, int a_admin_id) {
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

public int getArtist_id() {
	return artist_id;
}


public String getName() {
	return name;
}



public int getPhone_no() {
	return phone_no;
}



public String getEmail() {
	return email;
}





public String getDescription() {
	return description;
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




public String getUsername() {
	return username;
}




public String getPassword() {
	return password;
}




public int getA_admin_id() {
	return a_admin_id;
}







}