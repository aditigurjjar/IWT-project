<%@page import="java.sql.*"%>
<% 
String s1=request.getParameter("u1");

try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
			Statement st = con.createStatement();
                        String s11="delete from marks where ROLL='"+s1+"'"; 
			st.executeUpdate(s11);
		response.sendRedirect("ShowAll.jsp");
			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
%>