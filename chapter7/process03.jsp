<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String fileUploadPath = "C:\\upload";

	DiskFileUpload upload = new DiskFileUpload();
	
	List items = upload.parseRequest(request);
	
	Iterator params  = items.iterator();
	
	while(params.hasNext()) {
		FileItem item = (FileItem) params.next();
		if(item.isFormField()) {
			String title = item.getString("UTF-8");
			out.println("<h3> " + title + "</h3>");
		} else {
			String filename = item.getName();
			
			System.out.println("원본 파일의 이름 =" +filename);
  			filename = filename.substring(filename.lastIndexOf("\\" ) + 1);
  			System.out.println("수정된 파일의 이름 =" +filename);
  			
			File file = new File(fileUploadPath + "/" + filename);
			item.write(file);
			
			out.println("파일 이름 :" + filename + " <br>");
		}
 	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>