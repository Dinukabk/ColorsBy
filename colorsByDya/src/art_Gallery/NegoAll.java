package art_Gallery;

public class NegoAll {
	private String full_name;
	private String phone_no;
	private String title;
	private String image_url;
	private String message;
	
	public NegoAll(String full_name, String phone_no, String title, String image_url, String message) {
		
		this.full_name = full_name;
		this.phone_no = phone_no;
		this.title = title;
		this.image_url = image_url;
		this.message = message;
	}
	
	public String getFull_name() {
		return full_name;
	}

	public String getPhone_no() {
		return phone_no;
	}
	
	public String getTitle() {
		return title;
	}

	public String getImage_url() {
		return image_url;
	}

	public String getMessage() {
		return message;
	}

}
