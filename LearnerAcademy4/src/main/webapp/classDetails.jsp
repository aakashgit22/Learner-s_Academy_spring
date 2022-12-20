
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
  #frm{
     width:500px;
     margin:auto;
     margin-top:100px;
  }
  marquee{
     margin-top:10px;
  }
</style>
</head>
<body class="container-fluid">
  <center>  <h2 >INSERT TO ADD DETAILS OF CLASS</h2></center><br /><hr class="new1">
   
      
   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-Of-Classes</title>
</head>

<body><center>
<h1 align="center">Welcome to Class Setup Page</h1>
 <h3>You can setup the list of classes by entering the relevant information below</h3>
 
 <form action="classSave" method="post">
 
 ClassName: <input type="text" name="ClassName"/><br><br>
 ClassCapacity: <input type="text" name="ClassCapacity"/><br><br>
 ClassTeacher: <input type="text" name="ClassTeacher"/><br><br>
 FloorLevel: <input type="text" name="FloorLevel"/><br><br>
 <tr>
   <td>
        <input type="submit" value="classSave">
   </td>
 </tr>
  </form>
</body></center>
</html>


