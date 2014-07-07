
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
        
            <script language="JavaScript">
        function daftar(){
            alert("Selamat anda berhasil menambahkan data");
        }
        
        </script>
        
    </head>
    
    <%
        String id = request.getParameter("id");
        String nip = request.getParameter("nip");
        String nama = request.getParameter("nama");
        String jk = request.getParameter("jk");
        String tempat = request.getParameter("tempat");
        String tgl = request.getParameter("tgl");
        String alamat = request.getParameter("alamat");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String hobi = request.getParameter("hobi");
        String jabatan = request.getParameter("jabatan");
    %>
    <body>
        <div id="con">
	<h2>Form Edit Data Guru</h2>
	<form action="prosesedit.jsp" method="post">
	<p>
		<label>NIP</label>
		<% 
                    out.print("<input type='hidden' name='id' value='"+id+"'>"); 
                    out.print("<input type='text' name='nip' value='"+nip+"'>"); 
                %>
	</p>
	<p>
		<label>Nama</label>
		<% 
                    out.print("<input type='text' name='nama' value='"+nama+"'>"); 
                %>
	</p>
	<p>
		<label>Jenis Kelamin</label>
		<input type="radio" name="jk" value="Laki-laki" checked/> Laki-laki
		<input type="radio" name="jk" value="Perempuan"/> Perempuan
	</p>
	<p>
		<label>Tempat lahir</label>
                <% 
                    out.print("<input type='text' name='tempat' value='"+tempat+"'>"); 
                %>
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
                    for(int a=1980;a<=2014;a++){
		%>
			<option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
	</p>
	<p>
		<label>Alamat</label>
		<% 
                    out.print("<input type='text' name='alamat' value='"+alamat+"'>"); 
                %>
	</p>
	<p>
		<label>Email</label>
		<% 
                    out.print("<input type='text' name='email' value='"+email+"'>"); 
                %>
	</p>
	<p>
		<label>Phone</label>
		<% 
                    out.print("<input type='text' name='phone' value='"+phone+"'>"); 
                %>
	</p>
	<p>
		<label>Hobi</label>
		<% 
                    out.print("<input type='text' name='hobi' value='"+hobi+"'>"); 
                %>
	</p>
	<p>
                <label>Jabatan</label>
                <select name="jabatan" >
                    <option value="kepala sekolah">Kepala Sekolah</option>
                    <option value="wakil kepala sekolah">Wakil Kepala Sekolah</option>
                    <option value="wali kelas">Wali Kelas</option>
                    <option value="guru kelas" selected="selected">Guru Kelas</option>
                </select>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" onClick="daftar()" Value="Update"/>
	</p>
        If you will back click <a href ="data_guru.jsp">here</a>
	</form>
        </div>
    </body>
</html>