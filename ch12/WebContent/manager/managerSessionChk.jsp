<%  
	String managerId ="";
	String path = application.getContextPath();	// ch12
	// System.out.println("path = " + path);
    managerId = (String)session.getAttribute("managerId");
	if(managerId == null || managerId.equals("")){
       response.sendRedirect(path+"/manager/logon/managerLoginForm.jsp");
       return;
	} 
%>