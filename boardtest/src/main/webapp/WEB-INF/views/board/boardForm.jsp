<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .board_form_contentarea{width: 500px; height: 300px;}
    </style>
</head>
<body>
<form action="boardInsert.do">
    <table>
        <tr>
            <th>제목<input type="text" id="title" name="title"></th>
        </tr>
        <tr>
            <th>작성자<input type="text" id="writer" name="writer"></th>
        </tr>
        <tr>
            <th>내용
                <input type="text" class="board_form_contentarea" id="content" name="content">
            </th>
        </tr>
        <tr>
            <td>비밀번호<input type="password" id="cnt_pw" name ="cnt_pw"></td>
            <td><input type="submit" value="등록"></td>
        </tr>
    </table>
</form>
</body>
</html>