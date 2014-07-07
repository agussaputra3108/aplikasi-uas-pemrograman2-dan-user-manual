
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String hari = request.getParameter("hari");
    String jam_pelajaran = request.getParameter("jam_pelajaran");
    String mata_pelajaran = request.getParameter("mata_pelajaran");
    String nama_guru = request.getParameter("nama_guru");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into jadwal(hari,jam_pelajaran,mata_pelajaran,nama_guru) values ('"+hari+"','"+jam_pelajaran+"','"+mata_pelajaran+"','"+nama_guru+"') ");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("jadwal_edit.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
