package model;

// ログイン処理を行うモデル

import java.util.*;

public class LoginLogic {
	
	public boolean execute (User user) {
		
		if (user.getPass().equals("0000")) {
			
			return true;
			
		}
		
		return false;
		
	}

}
