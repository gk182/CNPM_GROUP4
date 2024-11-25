package google;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.UserDAO;

import java.io.IOException;

import org.apache.http.client.fluent.Request;


/**
 * Servlet implementation class LoginGoogleServlet
 */
@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginGoogleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String code = request.getParameter("code");
				if (code == null || code.isEmpty()) {
					RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
					dis.forward(request, response);
				} 
				else {
					String accessToken = GoogleUtils.getToken(code);
					GooglePoJo googlePojo = GoogleUtils.getUserInfo(accessToken);
					
					String googleId = googlePojo.getId();
		            String username = googlePojo.getEmail();
		            String email = googlePojo.getEmail();
		            
		            UserDAO.loginWithGoogle(googleId, username, email);
		            
					request.setAttribute("pojo", googlePojo);
					System.out.println("Response: " + response);

					RequestDispatcher dis = request.getRequestDispatcher("CustomerPage.jsp");
					dis.forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
