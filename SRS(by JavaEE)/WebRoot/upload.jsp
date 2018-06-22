<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.jspsmart.upload.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#EEE8AA"><center>
<% 
SmartUpload su = new SmartUpload();
su.initialize(pageContext);
su.setMaxFileSize(1024*1024*10);
su.setAllowedFilesList("doc,txt,docx,jpg,JPG");
su.setDeniedFilesList("exe,bat,jsp,htm,heml");
try{su.upload();
	su.save("d:/upload",SmartUpload.SAVE_PHYSICAL);
}catch(SmartUploadException e){
	e.printStackTrace();
}
%>
<br>
<h2 style="color:#6B8E23">Gene File Upload Success!</h2>
<h2 style="color:#6B8E23">Please wait for result...</h2>
<a href="show.jsp">Back</a>
</center>
</body>
</html>