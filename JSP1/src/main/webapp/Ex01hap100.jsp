<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 1~100까지의 숫자들을 누적합계 !  -->
	
	<% 
	int sum=0;
	for(int i=1;i<=100;i++){
		sum=sum+i;	
	}
	System.out.println("합계 : "+sum);
	%>
	
	<h4> 합계 : <%= sum %> </h4>
	
</body>
</html>