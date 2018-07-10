package login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginservlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public loginservlet() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id =Integer.parseInt( request.getParameter("form-username"));
		String password =request.getParameter("form-password");
		User user=new User();
		user.setId(id);
		user.setPwd(password);
		UserService service=new UserService();
		User existUser=null;
		try {
			existUser = service.login(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (existUser == null) { // 代表用户名或密码错误，存储错误信息在request域，请求转发到login.jsp
			request.setAttribute("login.message", "用户名或密码错误");
			request.getRequestDispatcher("/login.jsp").forward(request,
					response);
			return;
		} else {
			request.getSession().setAttribute("user", existUser);
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);

	}

	/**
		 * Initialization of the servlet. <br>
		 * 
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
