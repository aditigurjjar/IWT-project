<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="style.css"/>
</head>
<body >

<%@include file="menudemo2.jsp"%>

<div id="mydata">
<center>
<form action="searchdemo1.jsp">
<table cellpadding="12">

<tr>
<td>Enter Roll No.:</td>
<td><input type="text" placeholder="Enter Roll No...." name="u1"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" value="Search" name="b1"></th>
</tr>


</table>
    </form>
<%
    String s1=request.getParameter("b1");
    if(s1!=null)
    {
            String s2=request.getParameter("u1");
            try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
			Statement st = con.createStatement();
			ResultSet rs=st.executeQuery("select * from marks where ROLL='"+s2+"'");       
                        %>
    <form action="searchdemo.jsp">
    <table cellpadding="12">
     <%
   if(rs.next())
 {
   %>
   <tr>
   <td>ROLL</td>
   <td><input type="text" name="n1" value=<%=rs.getString(1)%>></td>    
   </tr>
   
      <tr>
   <td>NAME</td>
   <td><input type="text" name="n2" value=<%=rs.getString(2)%>></td>    
   </tr>
   
      <tr>
   <td>PHYSIC</td>
   <td><input type="text" name="n3" value=<%=rs.getString(3)%>></td>    
   </tr>
   
      <tr>
   <td>CHEM</td>
   <td><input type="text" name="n4" value=<%=rs.getString(4)%>></td>    
   </tr>
     
      <tr>
   <td>MATH</td>
   <td><input type="text" name="n5" value=<%=rs.getString(5)%>></td>    
   </tr>
   
     <tr>
<th colspan="2"><input type="submit" value="Update" class="B" name="b2"></th>
</tr>
<%
   }
else
   {
       %>
       <%="invalid rno"%>
       <%
   }
   %>
   </table>
   </form>
</center>
   <%
   con.close();
            }
            catch(Exception e1)
            {
              out.println(e1);
}
    }
    %>
    
</div>
    </body>
    </html>
    <%
    String s3=request.getParameter("b2");
    if(s3!=null)
    {
        String s11=request.getParameter("n1");
        String s12=request.getParameter("n2");
        String s13=request.getParameter("n3");
        String s14=request.getParameter("n4");
        String s15=request.getParameter("n5");
      try{
			
	Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
        Statement st = con.createStatement();
  String s21="update marks set NAME='"+s12+"',PHYSICS='"+s13+"',CHEM='"+s14+"',MATH='"+s15+"'where ROLL='"+s11+"'";
			st.executeUpdate(s21); 
        int x=st.executeUpdate(s21);
        response.sendRedirect("ShowAll.jsp");
        con.close();
      }
      catch(Exception e)
      {
      out.println(e);
      }}
        %>  
       
   
