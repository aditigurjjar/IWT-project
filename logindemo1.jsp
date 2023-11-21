<%@page import="java.sql.*"%>
<% 
String s1=request.getParameter("un");
String s2=request.getParameter("up");
try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?allowPublicKeyRetrieval=true&useSSL=false","root","Root");
			Statement st = con.createStatement();
			ResultSet rs=st.executeQuery("select * from login where UNAME='"+s1+"' AND UPASS='"+s2+"'");
                        if(rs.next())
                        {response.sendRedirect("logindemo.jsp");
                        }
		        else
                        {response.sendRedirect("logindemo.jsp?s1=invalid user name and password");
                        }
			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
%>