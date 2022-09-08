<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
Connection conn = null;
	
	// 데이터베이스 연결
	String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	String jdbcUrl = "jdbc:mysql://localhost/yangjung?serverTimezome=UTC";
	String user = "kmoonm";
	String password = "1234";
	try {
	// jdbc 드라이버 로딩
	Class.forName(jdbcDriver);
	// 커넥션 객체
	conn = DriverManager.getConnection(jdbcUrl, user, password);
	System.out.println("데이터베이스 연결 성공");
	
	// 1. 결과값을 저장할수 있다.
	// 2. 저장된 값을 한 행 단위로 불러올수 있다.
	// 3. 한행에서 값을 가져올때는 타입을 지정해 불러올수 있다.
	ResultSet rs = null;
	
	} catch(Exception e) {
		System.out.println("데이터베이스 에러");
		e.printStackTrace();
	}
%>