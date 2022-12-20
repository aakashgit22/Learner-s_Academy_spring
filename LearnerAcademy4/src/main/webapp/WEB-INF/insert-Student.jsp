
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
  <center>  <h2 >INSERT TO ADD DETAILS OF STUDENT</h2></center><br /><hr class="new1">
    <form action="studentSave" method="post" class="form card" id="frm">
      
        <table class="table table-hover">
        
        <tr>
         <td>RollNumber</td>
         <td><input type="text" name="RollNumber" required></td>
        </tr>
        
        <tr>
         <td>Name</td>
         <td><input type="text" name="Name" required></td>
        </tr>
        
        <tr>
         <td>Email</td>
         <td><input type="email" name="Email" required></td>
        </tr>
        
        <tr>
         <td>DOB</td>
         <td><input type="date" name="Dob" required></td>
        </tr>
        
        <tr>
        <td>Gender</td>
        <td><input type="radio" name="Gender" value="male">Male &nbsp;
            <input type="radio" name="Gender" value="female">Female
        </td>
        
        </tr>
        <tr class="card-footer">
        <td><button type="submit">studentSave</button></td>
        <td><button type="reset" >cancel</button></td>
        </tr>
        </table>
       
    </form>
</body>
</html>