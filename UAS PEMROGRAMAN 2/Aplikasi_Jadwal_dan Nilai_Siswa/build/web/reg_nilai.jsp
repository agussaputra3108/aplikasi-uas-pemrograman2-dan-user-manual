
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String nis = request.getParameter("nis");
    String username = request.getParameter("username");
    String kode_mapel = request.getParameter("kode_mapel");
    String mata_pelajaran = request.getParameter("mata_pelajaran");
    String nip = request.getParameter("nip");
    String nilai = request.getParameter("nilai");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into nilai(nis,username,kode_mapel,mata_pelajaran,nip,nilai) values ('"+nis+"','"+username+"','"+kode_mapel+"','"+mata_pelajaran+"','"+nip+"','"+nilai+"') ");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("nilai_edit.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
