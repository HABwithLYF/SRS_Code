<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#eunice
  {
  cellspacing="5";
  width:80%;
  border-collapse:collapse;
  }
#eunice th 
  {
  background-color:#A7C942;
  color:#FFFFFF;
  border:1px solid #98bf21;
  padding:5px 10px 4px 10px;
  }
#eunice tr td 
  {
  color:#000000;
  background-color:#EAF2D3;
  border:1px solid #98bf21;
  padding:5px 10px 4px 10px;
  }
.button {
    background-color: #4CAF50;
    color: white;
    border:none;
    border-radius: 5px;
    padding: 5px 15px;
    text-align: center;
    font-size: 16px;
    margin: 4px 2px;
    width: 80px;
}
.button:hover {
    background-color: #3e8e41;
}
</style>
</head>
<body bgcolor="#EEE8AA"><center>
<%
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/SRS?useSSL=false";
    	String password = "1234";
    	String username="root";
    	Connection conn = DriverManager.getConnection(url, username, password);   	
    	Statement stmt = conn.createStatement();
    	String sql = "select * from gene";
    	ResultSet rs = stmt.executeQuery(sql);     	  
%>
<h1 style="color:#6B8E23">Please input your gene information or upload gene files!</h1>
    <form action="upload.jsp" method="post" ENCTYPE="multipart/form-data">
      Choose your gene file:<input type="file" name="upfile" size="25">
      <input type="submit" value="Upload" class="button">
   </form>
   
   <form action="insert.jsp" method="post">
     <input type="submit" value="Insert" class="button">
   </form>
<br>
 <table id="eunice" >  
        <tr>  
            <th><% out.print("gene_id ");%> </th>  
            <th><% out.print("ControlSample ");%> </th>  
            <th><% out.print("KnockOutSample");%> </th>  

        </tr>    
        <%   while (rs.next()) {   %>  
        <tr>  
            <td><% out.print(rs.getString(1));%> </td>  
            <td><% out.print(rs.getString(2));%> </td>  
            <td><% out.print(rs.getString(3));%> </td>  
       </tr> 
        <%   }  %>  
    </table>
 </center>
    <%  rs.close();  
        stmt.close();  
        conn.close();   %> 
</body>
</html>