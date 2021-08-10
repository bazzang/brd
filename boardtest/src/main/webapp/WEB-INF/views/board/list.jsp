<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.board_list{}
</style>
</head>
<body>
	<div class="board_list">
		<table>
			<thead>
				<th width="10%">#</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="25%">작성일</th>
			</thead>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.bno}</td>
					<td><a href="/board/boardView.do?bno=${list.bno}">${list.title }</a></td>
					<td>${list.writer }</td>
					<td><fmt:formatDate value="${list.writeDt}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		</table>
		<input type="button" value="글쓰기">
	</div>
</body>
</html>