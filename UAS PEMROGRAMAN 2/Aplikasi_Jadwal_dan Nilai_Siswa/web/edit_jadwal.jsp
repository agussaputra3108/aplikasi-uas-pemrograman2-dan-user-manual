
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Jadwal</title>
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
            alert("Selamat anda berhasil merubah data");
        }
        
        </script>
        
    </head>
    
    <%
        String id = request.getParameter("id");
        String hari = request.getParameter("hari");
        String jam_pelajaran = request.getParameter("jam_pelajaran");
        String mata_pelajaran = request.getParameter("mata_pelajaran");
        String nama_guru = request.getParameter("nama_guru");
    %>
    <body>
        <div id="con">
	<h2>Form Edit Jadwal</h2>
	<form action="proses_edit_jadwal.jsp" method="post">
	<p>
		<label>Hari</label>
		<% 
                    out.print("<input type='hidden' name='id' value='"+id+"'>"); 
                    out.print("<input type='text' name='hari' value='"+hari+"'>"); 
                %>
	</p>
	<p>
		<label>Jam Pelajaran</label>
		<% 
                    out.print("<input type='text' name='jam_pelajaran' value='"+jam_pelajaran+"'>"); 
                %>
	</p>
	<p>
		<label>Mata Pelajaran</label>
		<% 
                    out.print("<input type='text' name='mata_pelajaran' value='"+mata_pelajaran+"'>"); 
                %>
	</p>
	<p>
		<label>Nama Guru</label>
		<% 
                    out.print("<input type='text' name='nama_guru' value='"+nama_guru+"'>"); 
                %>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" onClick="daftar()" Value="Update"/>
	</p>
        If you will back click <a href ="jadwal_edit.jsp">here</a>
	</form>
        </div>
    </body>
</html>