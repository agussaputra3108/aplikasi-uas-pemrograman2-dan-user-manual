<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nilai Siswa</title>
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
        <a href="tambah_nilai.jsp"><button>Tambah Nilai</button></a>
        <br/>

        <table border=1>
        <tr>
            <td>NIS</td>
            <td>Kode Matapelajaran</td>
            <td>Matapelajaran</td>
            <td>Nilai</td>
            <td>Aksi</td>
        </tr>
       <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from nilai");
                
                while (rs.next()) {
                            Integer id = rs.getInt("id_nilai");
                            String nis = rs.getString("nis");
                            String kode_mapel = rs.getString("kode_mapel");
                            String mata_pelajaran = rs.getString("mata_pelajaran");
                            String nilai = rs.getString("nilai");
                       
                            out.print("<tr>");
                            out.print("<td bgcolor='white'>"+nis+"</td>");
                            out.print("<td bgcolor='white'>"+kode_mapel+"</td>");
                            out.print("<td bgcolor='white'>"+mata_pelajaran+"</td>");
                            out.print("<td bgcolor='white'>"+nilai+"</td>");
                            out.print("<td bgcolor='white'></a><a href='edit_nilai.jsp?action=edit&id="+id+"&nis="+nis+"&kode_mapel="+kode_mapel+"&mata_pelajaran="+mata_pelajaran+"&nilai="+nilai+"'><input type='submit' name='submit' Value='Edit'></a></td>");
                            out.print("</tr>"); 
    }    %>
        </table>    
    </body>
</html>
