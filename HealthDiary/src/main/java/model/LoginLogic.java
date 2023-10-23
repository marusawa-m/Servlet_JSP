package model;

// ログイン処理を行うモデル

import java.util.regex.Pattern;


public class LoginLogic {
	
	public boolean execute (User user) {

	// チェックする文字列
	String str = "java";
	
	// パターンの生成(半角英数4文字)
	Pattern pattern = Pattern.compile("^[0-9a-zA-Z]{4}|");
	
	// パターンと一致するか
	if (pattern.matcher(str).matches()) {
	
		// 一致したとき
		return true;
	}
	
	return false;
	
	}
}
