package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository GetInstance() {
		return instance;
	}
	public ProductRepository() {
		Product game1 = new Product("P1234", "비행기 게임");
		game1.setDescription("비행기 게임/ #종스크롤 #전투");
		game1.setProgramName("김갑룡");
		game1.setFilename("jwa1.jpg");
		
		Product game2 = new Product("P1255", "스타크듀드");
		game2.setDescription("비행기 게임/ #2D #횡스크롤 #액션");
		game2.setProgramName("김갑룡");
		game2.setFilename("jwa2.jpg");
		
		Product game3 = new Product("P1212", "미소년의 꿈");
		game3.setDescription("비행기 게임/ #미소녀 #연애 #시뮬레이션");
		game3.setProgramName("김갑룡");
		game3.setFilename("jwa3.jpg");
		
		listOfProducts.add(game1);
		listOfProducts.add(game2);
		listOfProducts.add(game3);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
		
	}

	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
