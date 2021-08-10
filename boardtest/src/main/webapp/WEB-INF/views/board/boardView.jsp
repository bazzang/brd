<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${boardVO.bno}${boardVO.title}${boardVO.writer}${boardVO.writeDt}${boardVO.content}
	<input type="button" value="글 수정">
</body>
</html>