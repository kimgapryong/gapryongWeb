package dto;

import java.io.Serializable;

public class Product implements Serializable {
	private String productId;
	private String pname;
	private String description;
	private String programName;
	private String filename;
	
	
	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getProgramName() {
		return programName;
	}


	public void setProgramName(String programName) {
		this.programName = programName;
	}


	public Product() {
		super();
	}


	public Product(String peoductId, String pname) {
		super();
		this.productId = peoductId;
		this.pname = pname;
	}


	public String getProductId() {
		return productId;
	}


	public void setProductId(String peoductId) {
		this.productId = peoductId;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
