<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
     %>
	<form action="Ex02randomWinner.jsp" method="Post">
		<fieldset>
			<legend>랜덤당첨작성</legend>
			주제 : <input type="text" name="title"><br>
			<%for(int i=0;i<num;i++){ %>
				  <input type="text" name="random"><br>
			<% } %>
			
			<input type="submit" value="시작">
			
		</fieldset>
	</form>
</body>
</html>