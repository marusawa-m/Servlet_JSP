package model;

public class RegisterUserLogic {
    
    private String errorMsg; // エラーメッセージを格納する変数

    public boolean execute(User user) {
    	
    	  String errorMsg = "";

    	    if (user.getName() == null || user.getName().trim().isEmpty()
    	            && (user.getPass() == null || user.getPass().trim().isEmpty())) {
    	    	
    	        errorMsg = "名前・パスワードが入力されていません.";
    	        
    	    } else if (user.getName() == null || user.getName().trim().isEmpty()) {
    	    
    	    	errorMsg = "名前が入力されていません.";
    	    
    	    } else if (user.getPass() == null || user.getPass().trim().isEmpty()) {
    	    
    	    	errorMsg = "パスワードが入力されていません.";
    	    
    	    }

    	    if (!errorMsg.isEmpty()) {
    	        // エラーメッセージが設定されている場合はエラーがあるため、falseを返す
    	        this.errorMsg = errorMsg;
    	        return false;
    	    }

    	    // エラーがない場合はtrueを返す
    	    return true;
    	}

    	public String getErrorMsg() {
    	    return errorMsg; // エラーメッセージを取得するメソッド
    	}
}
