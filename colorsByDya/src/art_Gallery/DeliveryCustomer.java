package art_Gallery;

public class DeliveryCustomer {

	private int delivery_id;
	private String full_name;
	private String add_line_01;
	private String add_line_02;
	private int postal_code;
	private String province;
	private String city;
	private String country;
	private String status;
	private int p_payment_id;

	public DeliveryCustomer() {
	}

	public DeliveryCustomer(int delivery_id, String full_name, String add_line_01, String add_line_02, int postal_code,
			String province, String city, String country, String status, int p_payment_id) {
		this.delivery_id = delivery_id;
		this.full_name = full_name;
		this.add_line_01 = add_line_01;
		this.add_line_02 = add_line_02;
		this.postal_code = postal_code;
		this.province = province;
		this.city = city;
		this.country = country;
		this.status = status;
		this.p_payment_id = p_payment_id;

	}

	public DeliveryCustomer(int delivery_id, String full_name, String add_line_01, String add_line_02, int postal_code,
			String province, String city, String country) {
		super();
		this.delivery_id = delivery_id;
		this.full_name = full_name;
		this.add_line_01 = add_line_01;
		this.add_line_02 = add_line_02;
		this.postal_code = postal_code;
		this.province = province;
		this.city = city;
		this.country = country;
	}

	public int getDelivery_id() {
		return delivery_id;
	}

	public String getFull_name() {
		return full_name;
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

	public String getStatus() {
		return status;
	}

	public int getP_payment_id() {
		return p_payment_id;
	}

	public void setDelivery_id(int delivery_id) {
		this.delivery_id = delivery_id;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public void setAdd_line_01(String add_line_01) {
		this.add_line_01 = add_line_01;
	}

	public void setAdd_line_02(String add_line_02) {
		this.add_line_02 = add_line_02;
	}

	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setP_payment_id(int p_payment_id) {
		this.p_payment_id = p_payment_id;
	}

	@Override
	public String toString() {
		return "DeliveryCustomer [delivery_id=" + delivery_id + ", full_name=" + full_name + ", add_line_01="
				+ add_line_01 + ", add_line_02=" + add_line_02 + ", postal_code=" + postal_code + ", province="
				+ province + ", city=" + city + ", country=" + country + ", status=" + status + ", p_payment_id="
				+ p_payment_id + "]";
	}

}
