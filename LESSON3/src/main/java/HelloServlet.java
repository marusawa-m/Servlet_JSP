// Code3_1
// サーブレットクラスの基本形（Eclipseではサーブレットを選べばデフォルトで入力される）

// ①サーブレット関係のクラスをインポート
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// ②javax.servlet.http.HttpServletクラスを継承する
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
// ③doGetメソッドをオーバーライドする
	// doGet()はサーブレットクラスがリクエストされた時に実行されるもの
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	}


}
