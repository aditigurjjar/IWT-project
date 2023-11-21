<%@page import="java.sql.*"%>
<% 
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
			Statement st = con.createStatement();
                        String s11="insert into login values('"+s1+"','"+s2+"')";
			st.executeUpdate(s11);
		response.sendRedirect("logindemo.jsp");
			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
%>