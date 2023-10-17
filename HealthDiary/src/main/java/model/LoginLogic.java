package model;

// ログイン処理を行うモデル

public class LoginLogic {
	
	public boolean execute (User user) {
		
		if (user.getPass().equals("0000")) {
			
			return true;
			
		}
		
		return false;
		
	}

}
