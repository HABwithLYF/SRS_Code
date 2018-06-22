<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.button {
    background-color: #4CAF50;
    color: white;
    border:none;
    border-radius: 5px;
    padding: 5px 15px;
    font-size: 16px;
}
.button:hover {
    background-color: #3e8e41;
}
.text{
border-radius:3px;
border:2px solid #4CAF50
}
</style>
</head>
<body bgcolor="#EEE8AA"><center>
<form action="insert1.jsp" method="post">
<table>
<tr><td>Gene_id:</td><td><input type="text" name="gene_id" class="text"/></td></tr>
<tr><td>ControlSample:</td><td><input type="text" name="ControlSample" class="text"/></td></tr>
<tr><td>KnockOutSample: </td><td><input type="text" name="KnockOutSample" class="text"/></td></tr>
</table>
<input type="submit" value="Insert" class="button" >
</form></center>
</body>
</html>