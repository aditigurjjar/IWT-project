

<html>
<head>

<link rel="stylesheet" href="style.css"/>
</head>

<body >
<%@include file="mymenu1.jsp"%>


<div id="mydata">
<center>
    
    <% 
    String s11=request.getParameter("s1");
    if(s11!=null)
    {
        %>
        <%=s11%>
        <%
    }
    %>
    
<form action="menudemo.jsp">
<table cellpadding="12">

<tr>
<td>Enter Name:</td>
<td><input type="text" placeholder="Enter Name..." name="un"></td>
</tr>

<tr>
<td>Enter Password:</td>
<td><input type="password" placeholder="Enter Password..." name="up"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" value="Login" class="B"></th>
</tr>


</table>
</center>
</div>

</body>
</html>
