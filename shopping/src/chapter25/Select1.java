package chapter25;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns={"/chapter25/select"})
public class Select1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost (
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();

		request.setCharacterEncoding("UTF-8");
		
		String payment = request.getParameter("payment");
		String mail = request.getParameter("mail");
		
		out.println("<p>���x�������@��"+payment+"�ɐݒ肵�܂����B</p>");
		
		if (mail != null) {
			out.println("<p>���[���������肵�܂��B</p>");
		} else {
			out.println("<p>���[���͂����肵�܂���B</p>");
		}
		
	}
	
}
