package art_Gallery;

public class RequestPainting {
	private int painting_id;
    private String title;
    private String description;
    private double price;
    private String category;
    private double weight;
    private double length;
    private double width;
    private String image_url;
    private String material;
    private boolean in_stock;
    private String frame;
    
	public RequestPainting(int painting_id, String title, String description, double price, String category,
			double weight, double length, double width, String image_url, String material, boolean in_stock,
			String frame) {
	
		this.painting_id = painting_id;
		this.title = title;
		this.description = description;
		this.price = price;
		this.category = category;
		this.weight = weight;
		this.length = length;
		this.width = width;
		this.image_url = image_url;
		this.material = material;
		this.in_stock = in_stock;
		this.frame = frame;
	}

	public int getPainting_id() {
		return painting_id;
	}

	public String getTitle() {
		return title;
	}

	public String getDescription() {
		return description;
	}

	public double getPrice() {
		return price;
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

	public boolean isIn_stock() {
		return in_stock;
	}

	public String getFrame() {
		return frame;
	}

}
