package art_Gallery;

public class PaymentsDatabaseUtil {
	private int userID = 1;
	// userID = session.getUserID();
	private int paymentAmount = 100000;
	// payment amount = ShoppingCart.getTotal();
	private int cartID = 1;
	// cartID = session.getCartID(userID);
	private int paymentStatus = 0;
	private int cardNumber;
	// cardNumber = session.getCardNumber(userID);
	private String nameOnCard;
	// nameOnCard = session.getNameOnCard(userID);
	private int expDate;
	// expDate = session.getExpDate(userID);
	private int cvv;
	// cvv = session.getCVV(userID);
	Payment newPayment = new Payment(userID, paymentAmount, cartID, paymentStatus, cardNumber, nameOnCard, expDate, cvv);
}
