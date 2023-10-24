package model;

// つぶやき投稿の情報に関するJavaBeans

import java.io.Serializable;
import java.text.SimpleDateFormat;

public class Mutter implements Serializable {
	
	private String userName;	// 投稿時の名前
	private String text;		// メモ欄
	public  double bmi;
	public  String bodyType;
	private String healthRating;  // 体調評価
	private SimpleDateFormat date; // 投稿日時
	

	public Mutter (String userName, String text, double bmi, String bodyType, String healthRating,
					SimpleDateFormat date) {
		this.userName = userName;
		this.text = text;
		this.bmi = bmi;
		this.bodyType = bodyType;
		this.healthRating = healthRating;
		this.date = date;
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
	public SimpleDateFormat date() {
		return date;
	}
}
