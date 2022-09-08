<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 삽입 성공</title>
</head>
<body>
<%@include file = "dbconn.jsp" %> 
<%
	// 문자형식
	request.setCharacterEncoding("utf-8");
	// sql문 입력
	// 파라미터 불러와서 가져옴
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String name = request.getParameter("name");
	// 테스트
	// System.out.printf("%s, %s, %s\n",id, pass, name);

	// 데이터베이스에서는 문자열형이라고 알아서 인식함
	// 데이터베이스에 데이터 넘겨주기
	String sql = "INSERT INTO membertable(id, password, name) VALUES(?,?,?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pass);
	ps.setString(3, name);
	ps.executeUpdate();
	System.out.println("데이터 삽입에 성공했습니다.");

%>
<h1>아이디 : <%= id %></h1>
<h1>비밀번호 : <%= password %></h1>
<h1>이름 : <%= name %></h1>
</body>
</html>