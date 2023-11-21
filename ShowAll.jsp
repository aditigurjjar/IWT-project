<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@include file="menudemo2.jsp"%>
<div id="mydata">
<center>
<% 
try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
			Statement st = con.createStatement();
			ResultSet rs=st.executeQuery("select * from marks");

%>
<table cellpadding="12">
    <tr>
        <td>ROLL</td>
        <td>UNAME</td>
        <td>PHYSICS</td>
        <td>CHEM</td>
        <td>MATH</td>
     </tr>
     <%
        while(rs.next())
        {
        %>
        <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
        </tr> 
        <%
}
   %>
   </table>
   </center>
   <%
        con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>
        