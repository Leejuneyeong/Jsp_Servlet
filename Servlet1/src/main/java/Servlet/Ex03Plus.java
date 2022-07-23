package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03Plus")
public class Ex03Plus extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num1 = Integer.parseInt(request.getParameter("num1")); 
		int num2 = Integer.parseInt(request.getParameter("num2"));  

		int sum = num1+num2;
		
		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<body>");
		out.print(num1+"+"+num2+"="+sum);
		out.print("</body>");
		out.print("</html>");


	}

}
