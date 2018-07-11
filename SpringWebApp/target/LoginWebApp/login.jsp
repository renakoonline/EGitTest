<%@ page import="java.sql.*"%>
<%
    String name = request.getParameter("name");   
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginaut",
            "root", "admin");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where name='" +name + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("name", name);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>