package art_Gallery;

import java.sql.Date;

public class Painting {
	private int painting_id;
	private String title;
	private String description;
	private String price;
	private Date drawn_date;
	private String category;
	private double weight;
	private double length;
	private double width;
	private String image_url;
	private String material;
	private boolean in_stock;
	private String frame;
	private int a_artist_id;
	private int c_cart_id;
	
	//Constructor
	
	public Painting(int painting_id, String title, String description, String price, Date drawn_date, String category,
			double weight, double length, double width, String image_url, String material, boolean in_stock,
			String frame, int a_artist_id, int c_cart_id) {
		
		super();
		this.painting_id = painting_id;
		this.title = title;
		this.description = description;
		this.price = price;
		this.drawn_date = drawn_date;
		this.category = category;
		this.weight = weight;
		this.length = length;
		this.width = width;
		this.image_url = image_url;
		this.material = material;
		this.in_stock = in_stock;
		this.frame = frame;
		this.a_artist_id = a_artist_id;
		this.c_cart_id = c_cart_id;
		
	}  //end of constructor
	
	/*
	 * //Testing Constructor
	 * 
	 * public Painting(int painting_id, String title, String description, double
	 * price, double weight, double length, double width, String material, String
	 * frame) {
	 * 
	 * this.painting_id = painting_id; this.title = title; this.description =
	 * description; this.price = price; this.weight = weight; this.length = length;
	 * this.width = width; this.material = material; this.frame = frame; }
	 */
	
	

	public int getPainting_id() {
		return painting_id;
	}

	public String getTitle() {
		return title;
	}

	public String getDescription() {
		return description;
	}

	public String getPrice() {
		return price;
	}

	public Date getDrawn_date() {
		return drawn_date;
	}

	public String getCategory() {
		return category;
	}

	public double getWeight() {
		return weight;
	}

	public double getLength() {
		return length;
	}

	public double getWidth() {
		return width;
	}

	public String getImage_url() {
		return image_url;
	}

	public String getMaterial() {
		return material;
	}

	public boolean getIn_stock() {
		return in_stock;
	}

	public String getFrame() {
		return frame;
	}

	public int getA_artist_id() {
		return a_artist_id;
	}

	public int getC_cart_id() {
		return c_cart_id;
	}	
	

}// end of class
