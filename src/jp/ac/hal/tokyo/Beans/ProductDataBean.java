package jp.ac.hal.tokyo.Beans;

import java.util.ArrayList;
import java.util.Date;

public class ProductDataBean {
	
	private String userId;
	private String category;
	private String author;
	private String productName;
	private String productIcon;
	private int productPoint;
	private ArrayList<String> productImage;
	private String productText;
	private String productSize;
	private String productComp;
	private String productFileName;
	private String administerId;
	private int stopFlag;
	private Date stopFlagDate;
	

	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserId() {
		return userId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductIcon() {
		return productIcon;
	}
	public void setProductIcon(String productIcon) {
		this.productIcon = productIcon;
	}
	public int getProductPoint() {
		return productPoint;
	}
	public void setProductPoint(int productPoint) {
		this.productPoint = productPoint;
	}
	public ArrayList<String> getProductImage() {
		return productImage;
	}
	public void setProductImage(ArrayList<String> productImage) {
		this.productImage = productImage;
	}
	public String getProductText() {
		return productText;
	}
	public void setProductText(String productText) {
		this.productText = productText;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductComp() {
		return productComp;
	}
	public void setProductComp(String productComp) {
		this.productComp = productComp;
	}
	public String getProductFileName() {
		return productFileName;
	}
	public void setProductFileName(String productFileName) {
		this.productFileName = productFileName;
	}

	public String getAdministerId() {
		return administerId;
	}
	public void setAdministerId(String administerId) {
		this.administerId = administerId;
	}
	public int getStopFlag() {
		return stopFlag;
	}
	public void setStopFlag(int stopFlag) {
		this.stopFlag = stopFlag;
	}
	public Date getStopFlagDate() {
		return stopFlagDate;
	}
	public void setStopFlagDate(Date stopFlagDate) {
		this.stopFlagDate = stopFlagDate;
	}
	

}
