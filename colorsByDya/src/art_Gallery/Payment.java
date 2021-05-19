package art_Gallery;

import java.sql.Date;

public class Payment {
	private int cardNo;
	private String nameOnCard;
	private Date expDate;
	private int cvv;
	
	public Payment(int cardNo, String nameOnCard, Date expDate2, int cvv) {
		this.cardNo = cardNo;
		this.nameOnCard = nameOnCard;
		this.expDate = expDate2;
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

	public Date getExpDate() {
		return expDate;
	}

	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
	
}