package art_Gallery;

public class Negotiate {
	private int price_req_id;
	private String message;
	private int c_customer_id;
	private int p_painting_id;
	private boolean accepted;
	
	public Negotiate(int price_req_id, String message, int c_customer_id, int p_painting_id, boolean accepted) {

		this.price_req_id = price_req_id;
		this.message = message;
		this.c_customer_id = c_customer_id;
		this.p_painting_id = p_painting_id;
		this.accepted = accepted;
	}

	public int getPrice_req_id() {
		return price_req_id;
	}

	public String getMessage() {
		return message;
	}
	
	public int getC_customer_id() {
		return c_customer_id;
	}

	public int getP_painting_id() {
		return p_painting_id;
	}

	public boolean isAccepted() {
		return accepted;
	}
	
}
