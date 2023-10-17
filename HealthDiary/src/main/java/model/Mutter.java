package model;

// つぶやき投稿の情報に関するJavaBeans

import java.io.Serializable;

public class Mutter implements Serializable {
	
	private String userName;	// 投稿時の名前
	private String text;		// メモ欄
	

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
}
