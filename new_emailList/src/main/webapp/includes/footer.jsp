<%@ page import="java.util.GregorianCalendar, java.util.Calendar"%>
<% 
GregorianCalendar currentDate = new GregorianCalendar();
int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>
	© Copyright
	<%= currentYear %>
	Mike Murach & Associates
</p>
</body>
</html>
