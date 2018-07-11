<%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("name")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>