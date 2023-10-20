package model;

public class RegisterUserLogic {
    
    private String errorMsg; // エラーメッセージを格納する変数

    public boolean execute(User user) {
    	
        // バリデーションを実行
        if (user.getName() == null || user.getName().trim().isEmpty()) {
            errorMsg = "名前が入力されていません。";
            return false; // エラーがある場合は false を返す
        }
        
        if (user.getPass() == null || user.getPass().trim().isEmpty()) {
            errorMsg = "パスワードが入力されていません。";
            return false; // エラーがある場合は false を返す
        }
        
        // エラーがない場合は true を返す
        return true;
    }
    
    public String getErrorMsg() {
        return errorMsg; // エラーメッセージを取得するメソッド
    }
}
