
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrasi</title>
        <style type="text/css">
	*{margin:auto;padding:0;}
	body{font-family:Mongolian Baiti;background:#000;}
	#con{background:blue;width:350px;padding:30px;margin-top:100px;border-radius:20px;border:1 solid #eee;box-shadow:2px 6px 10px #ccc;}
	h2{text-align:center;margin-bottom:15px;}
	p{margin-bottom:10px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:linear-gradient(top, #333 0%, #777 100%);background:-moz-linear-gradient(top, #333 0%, #777 100%);background:-webkit-linear-gradient(top, #333 0%, #777 100%);height:30px;width:100px;border-radius:5px;}
	input[type=submit]:active{background:linear-gradient(top, #888 0%, #bbb 100%);background:-moz-linear-gradient(top, #888 0%, #bbb 100%);background:-webkit-linear-gradient(top, #888 0%, #bbb 100%);}
        </style>
    </head>
    <body>
        <div id="con">
	<h2>Form Daftar Siswa Baru</h2>
	<form action="register.jsp" method="post">
	<p>
		<label>NIS</label>
		<input type="text" name="nis"/>
	</p>
	<p>
		<label>Nama</label>
		<input type="text" name="nama"/>
	</p>
	<p>
		<label>Jenis Kelamin</label>
		<input type="radio" name="jk" value="Laki-laki" checked/> Laki-laki
		<input type="radio" name="jk" value="Perempuan"/> Perempuan
	</p>
	<p>
		<label>Tempat lahir</label>
		<input type="text" name="tempat"/>
	</p>
	<p>
		<label>Tanggal Lahir</label>
		<select name="lhari">
		<%
                    for(int a=1;a<=31;a++){
		%>
                <option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
		<select name="lbulan">
		<%
                    for(int a=1;a<=12;a++){
		%>
			<option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
		<select name="ltahun">
		<%
                    for(int a=1970;a<=2014;a++){
		%>
			<option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
	</p>
	<p>
		<label>Alamat</label>
		<input type="text" name="alamat"/>
	</p>
	<p>
		<label>Email</label>
		<input type="email" name="email"/>
	</p>
	<p>
		<label>Phone</label>
		<input type="phone" name="phone"/>
	</p>
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
		<input type="submit" name="submit" Value="Daftar"/>
	</p>
        If you will back click <a href ="index.jsp">here</a>
	</form>
</div>
    </body>
</html>