package art_Gallery;

public class EventClass {
	private int name;
	private String date;
	private boolean status;
	private String description;
	private int adminID;
	
	
	public EventClass(int name, String date, boolean status, String description, int adminID) {
		this.name = name;
		this.date = date;
		this.status = status;
		this.description = description;
		this.adminID = adminID;
	}


	public int getName() {
		return name;
	}


	public String getDate() {
		return date;
	}


	public boolean isStatus() {
		return status;
	}


	public String getDescription() {
		return description;
	}


	public int getAdminID() {
		return adminID;
	}

	

}
