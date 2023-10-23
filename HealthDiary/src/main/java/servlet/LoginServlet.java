package servlet;

// ログインに関するリクエストを処理するコントローラ

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		  // セッションを取得または作成
	    HttpSession session = request.getSession();
	    
	    // セッションスコープに保存された登録ユーザー情報を取得
	    User registerUser = (User)session.getAttribute("registerUser");
	    
	    // ログイン認証処理
	    boolean isLogin = false;  // デフォルトではログイン失敗として初期化
	    
	    if (registerUser != null && registerUser.getName().equals(name) 
	            && registerUser.getPass().equals(pass)) {
	        isLogin = true;  // 入力されたユーザー名とパスワードがセッションスコープの情報と一致
	    }
	    
	    // ログイン結果をリクエスト属性にセット
	    request.setAttribute("isLogin", isLogin);
	    
	    // ログイン成功時の処理
	    if (isLogin) {
	    	
	        // ユーザー情報をセッションスコープに保存
	        session.setAttribute("loginUser", registerUser);
	        
	        // ログイン結果画面にフォワード
	        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/loginResult.jsp");
	        dispatcher.forward(request, response);
		} else {
			
            // ログインエラー時のリダイレクト
            response.sendRedirect("index.jsp"); // index.jsp にリダイレクト
        }
		

	}

	}
	

