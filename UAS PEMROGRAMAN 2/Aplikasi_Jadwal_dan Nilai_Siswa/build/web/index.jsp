
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style type="text/css">
	*{margin:auto;padding:0;}
	body{font-family:Mongolian Baiti;background:#6699FF;}
	#con{background:#FF0033;width:350px;padding:30px;margin-top:200px;border-radius:20px;border:1 solid #eee;box-shadow:2px 6px 10px #ccc;}
	h2{text-align:center;margin-bottom:15px;}
	p{margin-bottom:10px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:linear-gradient(top, #333 0%, #777 100%);background:-moz-linear-gradient(top, #333 0%, #777 100%);background:-webkit-linear-gradient(top, #333 0%, #777 100%);height:30px;width:100px;border-radius:5px;}
	input[type=submit]:active{background:linear-gradient(top, #888 0%, #bbb 100%);background:-moz-linear-gradient(top, #888 0%, #bbb 100%);background:-webkit-linear-gradient(top, #888 0%, #bbb 100%);}
        </style>
    </head>
    <body>
        <div id="con">
	<h2>Login Akademik</h2>
	<form action="login.jsp" method="post">
	<p>
		<label>Username</label>
		<input type="text" name="username"/>
	</p>
	<p>
		<label>Password</label>
		<input type="password" name="password"/>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" Value="Masuk"/>
                <br/>Belum Punya Akun?? <a href="reg.jsp">Register Now</a>
                <br/>Login as admin <a href="admin.jsp">Click Here</a>
	</p>
	</form>
        </div>
    </body>
</html>