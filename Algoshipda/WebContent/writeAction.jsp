<%@page import="bbs.bbsDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%> 
	<%
		String mem_mail = null;
		if (session.getAttribute("mem_mail") != null) {
			mem_mail = (String) session.getAttribute("mem_mail");
		}
		if (info == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�α����� �ϼ���.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}else {
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�Է��� �� �� ������ �ֽ��ϴ�.')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				bbsDAO bbsDAO = new bbsDAO();
				int result = bbsDAO.write(bbs.getBbsTitle(), info.getMem_mail(), bbs.getBbsContent());
				if(result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('�۾��⿡ �����߽��ϴ�.')");
					script.println("history.back()");
					script.println("</script>");
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'board_cat.jsp'");
					script.println("</script>");
				}
			}
		}
		
			
	%>
</body>
</html>