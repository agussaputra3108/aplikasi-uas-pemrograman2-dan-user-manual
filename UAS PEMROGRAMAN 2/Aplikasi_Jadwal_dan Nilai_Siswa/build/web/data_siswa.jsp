<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Siswa</title>
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
    <br/>
    <table border=1>

    <tr  width="10" bgcolor="#339999">
        <th>NIS</th>
        <th>Nama Siswa</th>
        <th>Jenis Kelamin</th>
        <th>Tempat Lahir</th>
        <th>Tanggal Lahir</th>
        <th>Alamat</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Username</th>
        <th>Password</th>
        <th>Aksi</th>
    </tr>                      
    <tr>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from siswa");
                while(rs.next()) {
                    Integer id = rs.getInt("id_user");
                    Integer nis = rs.getInt("nis");
                    String nama = rs.getString("nama");
                    String jk = rs.getString("jk");
                    String tempat = rs.getString("tempat");
                    String tgl = rs.getString("tgl");
                    String alamat = rs.getString("alamat");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    
                    out.print("<tr>");
                    out.print("<td bgcolor='white'>"+nis+"</td>");
                    out.print("<td bgcolor='white'>"+nama+"</td>");
                    out.print("<td bgcolor='white'>"+jk+"</td>");
                    out.print("<td bgcolor='white'>"+tempat+"</td>");
                    out.print("<td bgcolor='white'>"+tgl+"</td>");
                    out.print("<td bgcolor='white'>"+alamat+"</td>");
                    out.print("<td bgcolor='white'>"+email+"</td>");
                    out.print("<td bgcolor='white'>"+phone+"</td>");
                    out.print("<td bgcolor='white'>"+username+"</td>");
                    out.print("<td bgcolor='white'>"+password+"</td>");
                    out.print("<td bgcolor='white'><a href='siswahapus.jsp?action=hapus&id="+id+"'><input type='submit' name='submit' Value='Delete'></td>");
                    out.print("</tr>");
                }
            %>    
    </tr>
        </table>    

    </body>
</html>
