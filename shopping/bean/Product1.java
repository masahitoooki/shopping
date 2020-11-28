package bean;

public class Product1 implements java.io.Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String name;
	private int price;
	private String profile;
	
	public Product1() {
		
	}
	public Product1(int id, String name, int price, String profile) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.profile = profile;
		
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	public int getPrice() {
		return price;	
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getProfile() {
		return profile;
	}
	
	public void setProfile(String profile) {
		this.profile = profile;
	}
}
