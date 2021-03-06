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
          <li><a href="home_siswa.jsp">Beranda</a></li>
          <li><a href="profil_siswa.jsp">Profil</a></li>
          <li><a href="jadwal_siswa.jsp">Jadwal</a></li>
          <li><a href="nilai_siswa.jsp">Nilai</a></li>
          <li style="float : right "><strong><a href='logout.jsp'> Log Out</a></strong></li>
        </nav>
    </center>
    <body>
        <br/>
        <br/>
    <%
      try {
          String Host = "jdbc:mysql://localhost:3306/tugas_akhir";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;
          Class.forName("com.mysql.jdbc.Driver");
          connection = DriverManager.getConnection(Host, "root", "");
          statement = connection.createStatement();
          String id = session.getAttribute("userid").toString();
          String Data = "select * from nilai where username ='" + id + "'";
          rs = statement.executeQuery(Data);

    %>
    <center>
        <h2>Nilai Akhir Tahun Ajaran 2013/2014 Semester Ganjil</h2>
        <table border=1>
        <tr bgcolor="#339999">
            <td>Kode Matapelajaran</td>
            <td>Matapelajaran</td>
            <td>Nilai</td>
        </tr>
       <%
    while (rs.next()) {
    %>  
    <tr>
        <td bgcolor="white"><%=rs.getString("kode_mapel")%></td>
        <td bgcolor="white"><%=rs.getString("mata_pelajaran")%></td>
        <td bgcolor="white"><%=rs.getString("nilai")%></td>
    </tr>
    <%   }    %>
        </table> 
    </center>
    <%
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
                out.println("Can't connect to database.");
                out.println(ex.toString());
            }
      %>
        </table>
    </body>
</html>
