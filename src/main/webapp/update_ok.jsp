<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
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
	
		VO vo = new VO();
		vo.setIdx(request.getParameter("idx"));
		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setEmail(request.getParameter("email"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setContent(request.getParameter("content"));
		
	    DAO dao = (DAO)session.getAttribute("dao");
	    int result3 = dao.getUpdate(vo); 
	    pageContext.setAttribute("result3", result3);
	%>
	
	<script type="text/javascript">
		if(${result3}==1){
			alert("삽입 성공");
			location.href="list.jsp";
		}else{
			alert("삽입 실패");
		}
	</script>  
</body>
</html>