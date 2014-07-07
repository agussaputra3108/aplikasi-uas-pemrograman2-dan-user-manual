<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jadwal Siswa</title>
    </head>

    <style type="text/css">
        #nav *{margin:0 0 0 0;padding:0 0 0 0;list-style:none;}
        #nav ul{
            background:#ccc;
            height:30px;}
        #nav li{
            float:left;
            display:inline;}
        #nav li a{
            padding:0px 15px;
            line-height:30px;
            color:#111;
            display:block;
            text-decoration:none;
        }
        #nav li a:hover{
            background:rgba(0,0,0,0.1);
        }
        #nav li a:active{
            background:#ccc;
        }
        #nav li ul{
            display:block;
            width:170px;
            position:absolute;
            left:auto;
            z-index:10;
            height:auto;
            visibility:hidden;
            opacity:0;
        }
        #nav li li{
            display:block;
            float:none;
            width:100%;
        }
        #nav li:hover > ul{
            visibility:visible;
            width:200px;
            opacity:1;
        }
        #nav li li ul{
            left:200px;
            margin-top:-40px;
        }
        body{
            background : #3366FF;
            background-repeat: no-repeat;
        }
        
    </style>
    <center>
        <nav id="nav">
          <ul>
          <li><a href="home.jsp">Beranda</a></li>
          <li><a href="data_guru.jsp">Data Guru</a></li>
          <li><a href="data_siswa.jsp">Data Siswa</a></li>
          <li><a href="jadwal_edit.jsp">Jadwal</a></li>
          <li><a href="nilai_edit.jsp">Nilai</a></li>
          <li style="float : right "><strong><a href='logout.jsp'> Log Out</a></strong></li>
        </nav>
    </center>
    <body>
        <br/>
        <br/>
        <form method="get" action="">
            Pilih Hari 
                <td>
                    <select name="hari_pilihan">
                        <option value="#">--Pilih Hari--</option>
                        <option value="senin">Senin</option>
                        <option value="selasa">Selasa</option>
                        <option value="rabu">Rabu</option>
                        <option value="kamis">Kamis</option>
                        <option value="jumat">Jumat</option>
                        <option value="sabtu">Sabtu</option>
                    </select>
                    <button type="submit">Lihat Jadwal</button>
                </td></tr><br />
            <br/>

            <button><a href="tambah_jadwal.jsp">Tambah Jadwal</a></button>
            <table border=1>
                <%
                    try {
                        String Host = "jdbc:mysql://localhost:3306/tugas_akhir";
                        Connection connection = null;
                        Statement statement = null;
                        ResultSet rs = null;
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection(Host, "root", "");
                        statement = connection.createStatement();
                        String hari = request.getParameter("hari_pilihan");
                        String Data = "select * from jadwal where hari ='" + hari + "'";
                        rs = statement.executeQuery(Data);
                        %>
 
                            <tr width="10" bgcolor="#0000FF">
                                <td>Hari</td>
                                <td>Jam Pelajaran</td>
                                <td>Mata Pelajaran</td>
                                <td>Nama Guru</td>
                                <td><center>Action</center></td>
                            </tr>
                        
                        <% while (rs.next()) {
                            Integer id = rs.getInt("id_jadwal");
                            String day = rs.getString("hari");
                            String jam_pelajaran = rs.getString("jam_pelajaran");
                            String mata_pelajaran = rs.getString("mata_pelajaran");
                            String nama_guru = rs.getString("nama_guru");
                       
                            out.print("<tr>");
                            out.print("<td bgcolor='white'>"+day+"</td>");
                            out.print("<td bgcolor='white'>"+jam_pelajaran+"</td>");
                            out.print("<td bgcolor='white'>"+mata_pelajaran+"</td>");
                            out.print("<td bgcolor='white'>"+nama_guru+"</td>");
                            out.print("<td bgcolor='white'></a><a href='edit_jadwal.jsp?hari_pilihan="+hari+"&action=edit&id="+id+"&hari="+day+"&jam_pelajaran="+jam_pelajaran+"&mata_pelajaran="+mata_pelajaran+"&nama_guru="+nama_guru+"'><input type='button' name='submit' Value='Edit'></a><a href='guruhapus.jsp?action=hapus&id="+id+"'><input type='button' name='submit' Value='Delete'></td>");
                            out.print("</tr>");                         
                         
                        }%>
                        
                    <%}
                    catch(Exception e){
                        e.printStackTrace();
                    }
                    
                    
                        
                  %>
            </table>
        </form>
    </body>
</html>