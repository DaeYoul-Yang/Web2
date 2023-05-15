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
				
				
				String uid2 = request.getParameter("id2");
				String uid1 = request.getParameter("id1");
				
			   
				
				
			
			    Class.forName("com.mysql.jdbc.Driver"); 
			    
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234"); 
			    String sql = "UPDATE puser SET name='"+uid2+"' where name='"+uid1+"'";
			    
			    Statement stmt = conn.createStatement();
			    
			    int count = stmt.executeUpdate(sql);
			    if(count==1){
			    	out.print("회원수정이 완료되었습니다.");
			    }
			    else{
			    	out.print("회원수정 중 오류가 발생하였습니다.");
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