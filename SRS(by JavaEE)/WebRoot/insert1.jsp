<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{

    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/SRS?useSSL=false";
    	String password = "1234";
    	String username="root";    	
    	Connection conn = DriverManager.getConnection(url, username, password); 	
    	String sql = "insert into gene(gene_id,ControlSample,KnockOutSample) values(?,?,?)";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	ps.setString(1,request.getParameter("gene_id"));
    	ps.setDouble(2,Double.parseDouble(request.getParameter("ControlSample")));
    	ps.setDouble(3,Double.parseDouble(request.getParameter("KnockOutSample")));
    	int row = ps.executeUpdate();
    	if(row > 0){
    		out.print("add" + row + "lines!");
    	}
       ps.close();
       conn.close();   	
    }catch(ClassNotFoundException e){
    	e.printStackTrace();
    }catch(SQLException e){
    	e.printStackTrace();
    }
 response.sendRedirect("show.jsp");
%>
</body>
</html>