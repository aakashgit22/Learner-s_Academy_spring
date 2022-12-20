
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
  <center>  <h2 >INSERT TO ADD DETAILS OF TEACHERS</h2></center><br /><hr class="new1">
    <form action="save" method="post" class="form card" id="frm">
      
        <table class="table table-hover">
        <tr>
         <td>Name</td>
         <td><input type="text" name="userName" required></td>
        </tr>
        <tr>
         <td>Email</td>
         <td><input type="email" name="email" required></td>
        </tr>
        <tr>
         <td>Mobile</td>
         <td><input type="text" name="mobile" required></td>
        </tr>
        <tr>
         <td>DOB</td>
         <td><input type="date" name="dob" required></td>
        </tr>
        <tr>
         <td>City</td>
         <td><select name="city">
            <option value="pune">Pune</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
            <option value="Hydrabad">Hydrabad</option>
         </select></td>
        </tr>
        <tr>
        <td>Gender</td>
        <td><input type="radio" name="gender" value="male">Male &nbsp;
            <input type="radio" name="gender" value="female">Female
        </td>
        </tr>
        <tr class="card-footer">
        <td><button type="submit">save</button></td>
        <td><button type="reset" >cancel</button></td>
        </tr>
        </table>
       
    </form>
</body>
</html>