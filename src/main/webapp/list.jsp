<%@page import="com.ict.edu.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
	DAO dao = (DAO)session.getAttribute("dao");
    List<VO> list = dao.getList();
    pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 방 명 록 </title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 600px; border-collapse:collapse; text-align: center;}
	table,th,td{border: 1px solid black; padding: 3px}
	div{width: 600px; margin:auto; text-align: center;}
</style>
</head>
<body>
	<div>
		<h2> 방 명 록 </h2>
		<hr>
		<p>[<a href="write.jsp">방명록 쓰기</a>]</p>
		<table>
			<thead>
				<tr style="background-color: #99ccff"><th>번호</th><th>작성자</th><th>제목</th><th>작성일</th></tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr><td colspan="4"><h2>원하는 정보가 존재하지 않습니다.</h2> </td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="k" varStatus="vs">
							<tr>
								<td>${vs.count }</td>
								<td>${k.name }</td>
								<td><a href="onelist.jsp?idx=${k.idx}">${k.subject}</a></td>
								<td>${k.regdate}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</body>
</html>





