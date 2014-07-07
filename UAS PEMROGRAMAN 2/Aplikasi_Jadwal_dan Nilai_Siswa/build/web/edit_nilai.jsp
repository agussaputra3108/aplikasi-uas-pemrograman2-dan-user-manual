
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Nilai Siswa</title>
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
        String nis = request.getParameter("nis");
        String kode_mapel = request.getParameter("kode_mapel");
        String mata_pelajaran = request.getParameter("mata_pelajaran");
        String nilai = request.getParameter("nilai");
    %>
    <body>
        <div id="con">
	<h2>Form Edit Nilai Siswa</h2>
	<form action="proses_edit_nilai.jsp" method="post">
	<p>
		<label>NIS</label>
		<% 
                    out.print("<input type='hidden' name='id' value='"+id+"'>"); 
                    out.print("<input type='text' name='nis' value='"+nis+"'>"); 
                %>
	</p>
	<p>
		<label>Kode Matapelajaran</label>
		<% 
                    out.print("<input type='text' name='kode_mapel' value='"+kode_mapel+"'>"); 
                %>
	</p>
	<p>
		<label>Mata Pelajaran</label>
		<% 
                    out.print("<input type='text' name='mata_pelajaran' value='"+mata_pelajaran+"'>"); 
                %>
	</p>
	<p>
		<label>Nilai</label>
		<% 
                    out.print("<input type='text' name='nilai' value='"+nilai+"'>"); 
                %>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" onClick="daftar()" Value="Update"/>
	</p>
        If you will back click <a href ="nilai_edit.jsp">here</a>
	</form>
        </div>
    </body>
</html>