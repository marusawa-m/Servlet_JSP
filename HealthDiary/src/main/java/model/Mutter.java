package model;

// つぶやき投稿の情報に関するJavaBeans

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Mutter implements Serializable {
	
	private String userName;		// 投稿時の名前
	private String text;			// メモ欄
	public  double bmi;
	public  String bodyType;
	private String healthRating;  	// 体調評価
	private Date date; 				// 投稿日時取得用
	private String sdf; 			// SimpleDateFormatでの投稿日時表記用

	

	public Mutter (String userName, String text, double bmi, String bodyType, String healthRating,
					Date date) {
		this.userName = userName;
		this.text = text;
		this.bmi = bmi;
		this.bodyType = bodyType;
		this.healthRating = healthRating;
		this.date = date;
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");
		// SimpleDateFormatでフォーマット
        this.sdf = dateFormat.format(date); 
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
	
	public String getSdf() {
        return sdf;
    }
	
	public Date getDate() {
		return date;
	}
}
