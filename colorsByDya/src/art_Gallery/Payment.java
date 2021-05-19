package art_Gallery;

public class Payment {
	private int cardNo;
	private String nameOnCard;
	private int expDate;
	private int cvv;
	
	public Payment(int cardNo, String nameOnCard, int expDate, int cvv) {
		this.cardNo = cardNo;
		this.nameOnCard = nameOnCard;
		this.expDate = expDate;
		this.cvv = cvv;
	}

	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

	public String getNameOnCard() {
		return nameOnCard;
	}

	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}

	public int getExpDate() {
		return expDate;
	}

	public void setExpDate(int expDate) {
		this.expDate = expDate;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
	
}
