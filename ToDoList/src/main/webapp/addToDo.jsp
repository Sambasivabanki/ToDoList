<%@ page import="dao.DAO" %>
<%
	String task=request.getParameter("task");
	String startdate=request.getParameter("startdate");
	String starttime=request.getParameter("starttime");
	String enddate=request.getParameter("enddate");
	String endtime=request.getParameter("endtime");
	String email=(String)session.getAttribute("email");
	DAO obj=new DAO();
	boolean flag=obj.addToDo(email,task,startdate,starttime,enddate,endtime);
	if(flag){
		response.sendRedirect("UserHome.jsp?msg=Task details updated successfully");
	}
	else{
		response.sendRedirect("UserHome.jsp?msg=Something went wrong please check it");
	}
	%>