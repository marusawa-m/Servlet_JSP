package model;

// ログイン処理を行うモデル

import java.util.regex.Pattern;


public class LoginLogic {
	
	public boolean execute (User user) {
		
	// ユーザーから提供されたパスワードを取得
	// (チェックする文字列)
	String str = user.getPass();
	
	// パターンの生成(半角英数4文字)
	Pattern pattern = Pattern.compile("^[0-9a-zA-Z]{4}|");

	// パターンと一致するか
	if (pattern.matcher(str).matches()) {

        return true; // パスワードが一致した場合

	} else {
	
		return false;
	
    	}
	}
	
}
