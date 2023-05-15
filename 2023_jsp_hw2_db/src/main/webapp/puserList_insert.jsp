<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>
	<%@ include file="menu.jsp"%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				
			<%@ page import="java.sql.*" %>
			
			<%
			
				request.setCharacterEncoding("utf-8");
				String uid = request.getParameter("id");
				String upass = request.getParameter("ps");
				String uname = request.getParameter("name");
				
				String sql = "INSERT INTO puser(id,password,name) VALUES";
				  
			    sql+="('" +uid+"','"+upass+"','"+uname+"')";
				
			
			    Class.forName("com.mysql.jdbc.Driver"); // 1번 , 양대열
			    
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234"); // 2번, 양대열
			    
			    Statement stmt = conn.createStatement();//3번, 양대열
			    
			    int count = stmt.executeUpdate(sql);
			    if(count==1){
			    	out.print("회원가입이 완료되었습니다.");
			    }
			    else{
			    	out.print("회원가입 중 오류가 발생하였습니다.");
			    }
			    stmt.close(); conn.close();
			   
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
