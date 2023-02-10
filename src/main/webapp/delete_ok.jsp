<%@page import="com.ict.edu.DAO"%>
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
		String idx = request.getParameter("idx");
		DAO dao = (DAO)session.getAttribute("dao");
		int result = dao.getDelete(idx); 
	    pageContext.setAttribute("result", result);
	%>
	<script type="text/javascript">
		if(${result}==1){
			alert("삭제 성공");
			location.href="list.jsp";
		}else{
			alert("삭제 실패");
		}
	</script>
</body>
</html>