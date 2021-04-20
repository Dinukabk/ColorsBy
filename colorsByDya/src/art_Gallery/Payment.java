package art_Gallery;

public class Payment {

	private String userName;
	private Boolean cardAvailability;
	
	public Payment(String userName, Boolean cardAvailability) {
		this.userName = userName;
		this.cardAvailability = cardAvailability;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public Boolean getAvailability() {
		return cardAvailability;
	}
}
