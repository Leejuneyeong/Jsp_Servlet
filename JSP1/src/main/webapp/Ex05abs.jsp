<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 절대값을 구할 수 있는 메소드 선언하기! -> 선언자 기능 활용!  -->
	
	<%! /* <-선언자 */
	public int abs(int num){
		int result = Math.abs(num);
		return result;
	}
	%>
	
	<% ArrayList list = new ArrayList();%>
	<!-- 표현식은 변수나 메소드 호출이 가능하다!  -->
	<%=abs(-5) %>
</body>
</html>