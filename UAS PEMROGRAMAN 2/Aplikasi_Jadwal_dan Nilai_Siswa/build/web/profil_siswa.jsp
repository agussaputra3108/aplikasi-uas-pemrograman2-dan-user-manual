
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Anda</title>
        <script>
            function edit(){
                window.location = "editprofil.jsp";
            }
        </script>
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
    <h2>Profil Anda</h2>
    <%
      try {
          String Host = "jdbc:mysql://localhost:3306/tugas_akhir";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;
          Class.forName("com.mysql.jdbc.Driver");
          connection = DriverManager.getConnection(Host, "root", "");
          statement = connection.createStatement();
          String id_user = session.getAttribute("userid").toString();
          String Data = "select * from siswa where username ='" + id_user + "'";
          rs = statement.executeQuery(Data);
    %>
        
        <table border=1>
   <%
    while (rs.next()) {
 
                    String id = rs.getString("id_user");
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
  
                    out.print("<tr><td bgcolor='white'>NIS</td><td>:</td><td bgcolor='white'>"+nis+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Nama</td><td>:</td><td bgcolor='white'>"+nama+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Jenis Kelamin</td><td>:</td><td bgcolor='white'>"+jk+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Tempat Lahir</td><td>:</td><td bgcolor='white'>"+tempat+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Tanggal Lahir</td><td>:</td><td bgcolor='white'>"+tgl+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Alamat</td><td>:</td><td bgcolor='white'>"+alamat+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Email</td><td>:</td><td bgcolor='white'>"+email+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Nomor Handphone</td><td>:</td><td bgcolor='white'>"+phone+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Username</td><td>:</td><td bgcolor='white'>"+username+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>Password</td><td>:</td><td bgcolor='white'>"+password+"</td></tr>");
                    out.print("<tr><td bgcolor='white'>&nbsp;</td><td><td bgcolor='white'></a><a href='editprofil.jsp?action=edit&id="+id+"&nis="+nis+"&nama="+nama+"&jk="+jk+"&tempat="+tempat+"&tgl="+tgl+"&alamat="+alamat+"&email="+email+"&phone="+phone+"&username="+username+"&password="+password+"'><input type='submit' name='submit' Value='Edit'></td></tr>");
       }    %>
        </table>    
    <%
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
                out.println("Can't connect to database.");
                out.println(ex.toString());
            }
      %>
    </body>
</html>
