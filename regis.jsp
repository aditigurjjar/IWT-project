<html>
<head>

<link rel="stylesheet" href="style.css"/>
<script type="text/javascript" src="abc.js">
</script>
</head>

<body >

<%@include file="mymenu1.jsp"%>
<div id="mydata">
<center>
<form action="regis1.jsp" name="form1">
<table cellpadding="12">

<tr>
<td>Enter Name:</td>
<td><input type="text" placeholder="Enter Name..." name="u1"  id="t1"><br><font id="s1"></font>
</td>
</tr>

<tr>
<td>Enter Password:</td>
<td><input type="password" placeholder="Enter Password..." name="u2" id="t2"><br><font id="s2"></font>
</td>
</tr>

<tr>
<th colspan="2"><input type="button" value="Registration" class="B" onclick="demo()"></th>
</tr>


</table>
</center>
</div>

</body>
</html>
