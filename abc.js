function uname()
{
    x=document.getElementById("t1").value;
    if(x.length>=3)
    {
        return true;
    }
    else
    {
        document.getElementById("s1").innerHTML="ivalid user name";
        return false;
    }
}
function upass()
{
 y=document.getElementById("t2").value;
    if(y.length>=3)
    {
        return true;
    }
    else
    {
        document.getElementById("s2").innerHTML="ivalid user pass";
        return false;
    }   
}
function demo()
{
   document.getElementById("s1").innerHTML="";
    document.getElementById("s2").innerHTML="";
    if(uname()&&upass())
    {
        form1.submit();
    }
   
}