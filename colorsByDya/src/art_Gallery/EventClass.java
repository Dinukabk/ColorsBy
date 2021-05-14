package art_Gallery;

import java.util.Date;

public class EventClass {
	private int id;
	private String name;
	private Date date;
	private boolean status;
	private String description;
	private int adminID;
	
	
	public EventClass(int id, String name, Date date, boolean status, String description, int adminID) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.status = status;
		this.description = description;
		this.adminID = adminID;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public Date getDate() {
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
