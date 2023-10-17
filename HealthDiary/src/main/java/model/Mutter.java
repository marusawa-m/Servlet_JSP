package model;

// つぶやき投稿の情報に関するJavaBeans

import java.io.Serializable;

public class Mutter implements Serializable {
	
	private String userName;	// 投稿時の名前
	private String text;		// メモ欄
	private double height, weight, bmi;		// BMI計算に使用
	private String bodyType;	// 実際使用するBMI

	public Mutter (String userName, String text) {
		this.userName = userName;
		this.text = text;
	}
	
	public String getUserName() {
		return userName;
	}
	public String getText() {
		return text;
	}
	public double getHeight() {
		return height;
	}
	
	public double getWeight() {
		return weight;
	}
	
	public double getBmi() {
		return bmi;
	}
	public String getBodyType() {
		return bodyType;
	}
	
	public void setHeight(double height) {
		this.height = height;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	public void setBodyType(String bodyType) {
		this.bodyType = bodyType;
	}
}
