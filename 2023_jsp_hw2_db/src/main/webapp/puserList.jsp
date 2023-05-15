<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				
				
	<%@ page import="java.sql.*" %>
	<%	

	
	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234");
    	Statement stmt = conn.createStatement();
    	ResultSet rs = stmt.executeQuery("SELECT id, name, ts FROM puser");
    
    	String str = "<table align=center>";
    	str += "<tr><th colspan=3>가입자 리스트</th></tr>";
    	while(rs.next()) {
        	str += "<tr><td colspan=3><hr></td></tr>";
        	str += "<tr>";
    		str += "<td>" + rs.getString("id") + "</td>";
    		str += "<td>" + rs.getString("name") + "</td>";
    		str += "<td>&nbsp;(" + rs.getString("ts") + ")</td>";
        	str += "</tr>";
    	}
    	str += "</table>";
    	out.print(str);
    
    	rs.close(); stmt.close(); conn.close();
%>
					
				
			</h1>
		</div>
	</div>	

	
	<div class="container">
		<div class="text-center">
			
			
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>
