
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Nilai</title>
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
        String id = request.getParameter("id_nilai");
        String username = request.getParameter("username");
        String nis = request.getParameter("nis");
        String kode_mapel = request.getParameter("kode_mapel");
        String mata_pelajaran = request.getParameter("mata_pelajaran");
        String nip = request.getParameter("nip");
        String nilai = request.getParameter("nilai");
    %>
    <body>
        <div id="con">
	<h2>Form Tambah Nilai Siswa</h2>
	<form action="reg_nilai.jsp" method="post">
	<p>
		<label>NIS</label>
		<input type="text" name="nis"/>
	</p>
        <p>
		<label>Username</label>
		<input type="text" name="username"/>
	</p>
	<p>
		<label>Kode Matapelajaran</label>
		<input type="text" name="kode_mapel"/>
	</p>
	<p>
		<label>Mata Pelajaran</label>
                <input type="text" name="mata_pelajaran"/>
	</p>
	<p>
		<label>NIP</label>
		<input type="text" name="nip"/>
	</p>
        <p>
		<label>Nilai</label>
		<input type="text" name="nilai"/>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" Value="Tambah"/>
	</p>
        If you will back click <a href ="nilai_edit.jsp">here</a>
	</form>
        </div>
    </body>
</html>