package bean;

public class Item implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Product1 product1;
	private int count;
	
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count=count;
	}
	
	public Product1 getProduct1() {
		return product1;
	}

	public void setProduct1(Product1 product1) {
		this.product1 =product1;
	}
	
}
