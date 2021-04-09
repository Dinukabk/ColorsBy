package art_Gallery;

public class Payment {
	// Check cart id for payment amount
	// Pay the amount from added cart
	// Validate the payment amount with cart total 
	// Payment completes
	
	// Until we make the session
	private int userID = 1;
	private int paymentAmount;
	private int cartID;
	private int paymentStatus;
	
	// Bla bla bla
	private int cardNumber;
	private String nameOnCard;
	private int expDate;
	private int cvv;
	
	// Test constructor
	public Payment(int userID, int paymentAmount, int cartID, int paymentStatus, int cardNumber, String nameOnCard,
			int expDate, int cvv) {
		this.userID = userID;
		this.paymentAmount = paymentAmount;
		this.cartID = cartID;
		this.paymentStatus = paymentStatus;
		this.cardNumber = cardNumber;
		this.nameOnCard = nameOnCard;
		this.expDate = expDate;
		this.cvv = cvv;
	}

	public int getUserID() {
		return userID;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public int getCartID() {
		return cartID;
	}

	public int getPaymentStatus() {
		return paymentStatus;
	}

	public int getCardNumber() {
		return cardNumber;
	}

	public String getNameOnCard() {
		return nameOnCard;
	}

	public int getExpDate() {
		return expDate;
	}
	
	public int getCvv() {
		return cvv;
	}
	
}
