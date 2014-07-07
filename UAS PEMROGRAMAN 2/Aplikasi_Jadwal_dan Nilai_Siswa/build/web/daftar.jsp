<%-- 
    Document   : daftar
    Created on : Jun 8, 2014, 8:54:40 AM
    Author     : Putra Tarihoran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Daftar</title>
    </head>
    <body>
        
        <form method="post" action="">
            <h3>Silahkan Isi Form Dibawah ini</h3>
	<table>
                <tr><td>NIM</td> <td>:</td> <td><input type="text" name=""></td></tr><br />
		<tr><td>NAMA</td> <td>:</td> <td><input type="text" name=""></td></tr><br />
		<tr><td>TEMPAT/TANGGAL LAHIR</td> <td>:</td> <td><input type="text" name=""></td></tr><br />
		<tr><td>JENIS KELAMIN</td> <td>:</td> 
			<td>
			<input name="jenkel" type="radio" value="Laki-Laki" />Laki-Laki
                        <input name="jenkel" type="radio" value="Perempuan" />Perempuan<br> </td>
			</td></tr><br />
                <tr><td>ALAMAT</td> <td>:</td> <td><input type="text" name=""></td></tr><br />
                
	</table>
		<input type="submit" name="operasi" value="Tambah" />
                <input type="reset" name="operasi" value="Batal" />
	</form>
    </body>
</html>
