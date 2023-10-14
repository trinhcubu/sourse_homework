package email;

import java.util.GregorianCalendar;
import java.util.Calendar;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import business.User;
import business.UserDB;

/**
 * Servlet implementation class EmailListServlet
 * @param <Date>
 */
@WebServlet("/emailList")
public class EmailListServlet<Date> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String url = "/index.jsp";
		    
		    
		    String action = request.getParameter("action");
		    if (action == null) url = "/index.jsp";
		    if (action.equals("add")) {

				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String email = request.getParameter("email");
				
				// store data in User object
				User user = new User();
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setEmail(email);
				GregorianCalendar currentDate = new GregorianCalendar();
				int currentYear = currentDate.get(Calendar.YEAR);
				request.setAttribute("currentYear", currentYear);
			//user=user()
			
			// store User object in request
			request.setAttribute("user", user);
			
			// forward request to JSP
			url = "/thanks.jsp";
		
		
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        }

	}
}
