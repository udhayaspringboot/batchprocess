<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>





<button><a href="/automode">Auto Job Scheduling</a></button>  

 <button> <a href="/manualmodelist">Manual Job Scheduling</a></button>

<br>
${successorfailure}


<!-- <br> <a href="/firstautomodetest">first auto test </a> -->



${hello}

<c:if test="${chis eq 'checkhis' }">

<c:if test="${lisHist.size() == 0}">

No manual scheduling histories available

</c:if>
<c:if test="${lisHist.size() != 0}">
<table>

<tr><th>SNO</th><th>File Name</th><th>Date </th><th>Status</th></tr>
<c:forEach items="${lisHist}" var = "lh">

<tr><td>${lh.sNo}</td><td>${lh.fileName}</td><td>${lh.dateTime}</td><td>${lh.status}</td></tr>

</c:forEach>
</table>

</c:if>
</c:if>

<c:if test="${manualtest eq 'checkmanual'}">

<button><a href="/manualhistory">Manal scheduling history</a></button>
<form action="/manualmode" method="get">


<table>

<c:forEach items="${fName}" var="fileName"> 
<tr> <td><input type="checkbox" name="fnames" value= "${fileName}"></td><td>
   ${fileName}</td>
</tr>
</c:forEach></table>
calender  <input type="datetime-local"  value="2020-10-08 19:32:00" step="1" name="datetimeloc">
<input type="submit" value="manual search">
</form>
</c:if>
</body>
</html>