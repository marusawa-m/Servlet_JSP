package servlet;

// Code3_4
// 占い結果をHTMLでレスポンスするサーブレットクラス

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// URLパターン（1つのプロジェクトに同名のパターンは作成不可）
@WebServlet("/UranaiServlet")
public class UranaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		// 運勢を配列で生成
		String[] luckArray = {"超ハッピー", "ハッピー", "アンハッピー"};
		// java.lang.Mathクラスを利用して運勢をランダムに設定
		int index = (int) (Math.random() * 3);
		// String型[]luckArrayを変数luckに格納
		String luck = luckArray[index];
		
		
		// 実行日の取得
		Date date = new Date();
		// java.util.Dateのインスタンスを生成（実行日の情報が格納される）
		SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
		// 前行の変数sdfを変数todayに変換
		String today = sdf.format(date);
		
		
		// HTMLを出力
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\" />");	// metaタグ利用の為(")にエスケープ文字を使用
		out.println("<title>今日の占い</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>" + today + "の運勢は「" + luck + "」です</p>");
		out.println("</body>");
		out.println("</html>");
		

	}



}
