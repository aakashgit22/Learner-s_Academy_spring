
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
  <center>  <h2 >INSERT TO ADD DETAILS OF SUBJECTS</h2></center><br /><hr class="new1">
    <form action="subjectSave" method="post" class="form card" id="frm">
      
        <table class="table table-hover">
       
         <tr>
        <td>Class</td>
        <td><input type="text" name="classs" required></td>
        </td>
        </tr>
       
        <tr>
         <td>TeacherName</td>
         <td><input type="text" name="userName" required></td>
        </tr>
        
        <tr>
         <td>Subjects</td>
         <td><select name="city">
            <option value="English">English</option>
            <option value="Hindi">Hindi</option>
            <option value="Mathematics">Mathematics</option>
            <option value="Science">Science</option>
             <option value="SocialScience">SocialScience</option>
         </select></td>
        </tr>

      

        <tr class="card-footer">
        <td><button type="submit">subjectSave</button></td>
        <td><button type="reset" >cancel</button></td>
        </tr>

        </table>
       
    </form>
</body>
</html>