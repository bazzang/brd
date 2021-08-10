<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<form name ="form" id="form" method="post" action="/board/boardInsert.do?boardVO=${form}">
    <table>
        <tr>
            <th>제목<input type="text" id="title" name="title"></th>
        </tr>
        <tr>
            <th>작성자<input type="text" id="writer" name="writer"></th>
        </tr>           
        <tr>
            <th>내용
                <textarea class="board_form_contentarea" id="content" name="content" ></textarea>
            </th>
        </tr>
        <tr>
            <td>비밀번호<input type="password" id="con_pw" name ="con_pw"></td>
            
        </tr>
        
        
    </table>
    <input type="submit" value="등록">
    <input type="button" onclick="location.href='/list.do'" value="목록으로"> 
</form>
</body>
</html>