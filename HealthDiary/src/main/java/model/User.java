package model;

// ユーザー情報に関するJavaBeans

import java.io.Serializable;

public class User implements Serializable {
	
	private String name;	// ログイン用の名前
	private String pass;	// ログイン用のパスワード
	
	
	// プロパティ
	public User (String name, String pass) {
		
		this.name = name;
		this.pass = pass;
		
	}
	
	
	public String getName() {
		return name;
	}
	
	public String getPass() {
		return pass;
	}

}
