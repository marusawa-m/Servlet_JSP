// Code3_2
// HTMLの出力

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet2")
public class HelloServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// ①HttpServletResponseのsetContentType()を利用
			// レスポンスのcontent-typeヘッダを指定（サーブレットクラスが出力するデータの種類に合わせる）
			// HTML出力による「"text/html; charset=HTMLの文字コード"」を入力
		response.setContentType("text/html; charset=UTF-8");
		
		// ②HTMLの出力(必ず①を書いたあとに入れる)		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("///");
		out.println("</html>");
		
	}


}
