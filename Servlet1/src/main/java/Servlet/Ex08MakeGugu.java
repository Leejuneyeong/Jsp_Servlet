package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex08MakeGugu")
public class Ex08MakeGugu extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String color = request.getParameter("color"); 
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border = '1' bgcolor="+color+">");
		
		for(int i=num1;i<=num2;i++) {
			out.print("<tr>");
			for(int j=1;j<=9;j++) {
				out.print("<td>"+i+"*"+j+"="+i*j+"</td>");
			}
			out.print("</tr>");
		}
		
		out.print("</table");
		out.print("</body>");
		out.print("</html>");
	}

}
