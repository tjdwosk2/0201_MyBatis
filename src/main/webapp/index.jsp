<%@page import="com.ict.edu.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
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
		WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
	    DAO dao = (DAO)context.getBean("dao");
	    session.setAttribute("dao", dao);
	    request.getRequestDispatcher("list.jsp").forward(request, response);
	%>
</body>
</html>