<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String idx = request.getParameter("idx");
DAO dao = (DAO) session.getAttribute("dao");
VO vo = new VO();
vo.setName(request.getParameter("name"));
vo.setSubject(request.getParameter("subject"));
vo.setEmail(request.getParameter("email"));
vo.setPwd(request.getParameter("pwd"));
vo.setContent(request.getParameter("content"));

int result = dao.getInsert(vo);
pageContext.setAttribute("result", result);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if (${result} == 1) {
		alert("삽입 성공");
		location.href= 'list.jsp';
	}else {
		alert("삽입 실패");
	}
</script>
</head>
<body>

</body>
</html>
writeOK.txt 1KB
