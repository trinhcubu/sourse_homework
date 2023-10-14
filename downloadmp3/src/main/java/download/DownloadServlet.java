package download;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;




import business.User;
import data.UserIO;
import util.CookieUtil;

/**
 * Servlet implementation class download
 */
@WebServlet("/download")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		if(action == null)
			action = "viewAlbums";
		String url="/index.jsp";
		
		if(action.equals("viewAlbums")) {
			url = "/index.jsp";
		}
		else if (action.equals("checkUser")) {
			url = checkUser(request, response);
		}
		else if (action.equals("viewCookies")) {
			url="/viewcookies.jsp";
		}
		else if (action.equals("deleteCookies")) {
			url = deleteCookies(request,response);
		}
		getServletContext()
			.getRequestDispatcher(url)
			.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String url = "index.jsp";
		if(action.equals("registerUser")){
			url=registerUser(request, response);
		}
		getServletContext()
			.getRequestDispatcher(url)
			.forward(request, response);
	}


	private String checkUser(HttpServletRequest request, HttpServletResponse response) {
		String productCode = request.getParameter("productCode");
		HttpSession session =  request.getSession();
		session.setAttribute("productCode", productCode);
		User user =(User) session.getAttribute("user");
		String url;
		
		if(user == null) {
			Cookie[] cookies =request.getCookies();
			String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookies");
			if(emailAddress ==null|| emailAddress.equals("")) {
				url ="/register.jsp";
			}
			else {
				ServletContext sc =getServletContext();
				String path= sc.getRealPath("/WEB-INF/EmailList.txt");
				user = UserIO.getUser(emailAddress, path);
				session.setAttribute("user",user);
				url = "/"+productCode + "_download.jsp";
			}
		}
		else {
			url = "/"+productCode + "_download.jsp";
		}
		return url;
	}
	private String registerUser(HttpServletRequest request,
            HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		User user =new User();
		user.setEmail(email);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		
		ServletContext sc = getServletContext();
		String path = sc.getRealPath("/WEB-INF/EmailList.txt");
		UserIO.add(user, path);
		
		
		HttpSession session =request.getSession();
		session.setAttribute("user", user);
		Cookie c =new Cookie("emailCookie",email);
		c.setMaxAge(60*60*24*365*2);
		c.setPath("/");
		response.addCookie(c);
		String productCode = (String) session.getAttribute("productCode");
        String url = "/" + productCode + "_download.jsp";
		
		
		return url;
	}
	private String deleteCookies(HttpServletRequest request,
            HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/delete_cookies.jsp";
        return url;
    }
}
