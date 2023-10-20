package model;

// つぶやき投稿の情報に関するJavaBeans

import java.io.Serializable;

public class Mutter implements Serializable {
	
	private String userName;	// 投稿時の名前
	private String text;		// メモ欄
	public  double bmi;
	public  String bodyType;
	private String healthRating;  // 体調評価
	

	public Mutter (String userName, String text, double bmi, String bodyType, String healthRating) {
		this.userName = userName;
		this.text = text;
		this.bmi = bmi;
		this.bodyType = bodyType;
		this.healthRating = healthRating;
	}
	
	public String getUserName() {
		return userName;
	}
	public String getText() {
		return text;
	}
	public double getBmi() {
		return bmi;
	}
	public String getBodyType() {
		return bodyType;
	}
	public String getHealthRating() {
	        return healthRating;
	}
}
