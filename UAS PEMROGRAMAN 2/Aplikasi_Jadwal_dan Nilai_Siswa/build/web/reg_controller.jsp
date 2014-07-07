
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String nip = request.getParameter("nip");
    String nama = request.getParameter("nama");
    String jk = request.getParameter("jk");
    String tempat = request.getParameter("tempat");
    String tgl1 = request.getParameter("ltahun");
    String tgl2 = request.getParameter("lbulan");
    String tgl3 = request.getParameter("lhari");
    String alamat = request.getParameter("alamat");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String hobi = request.getParameter("hobi");
    String jabatan = request.getParameter("jabatan");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into guru(nip,nama,jk,tempat,tgl,alamat,email,phone,hobi,jabatan) values ('"+nip+"','"+nama+"','"+jk+"','"+tempat+"','"+tgl1+"-"+tgl2+"-"+tgl3+"','"+alamat+"','"+email+"','"+phone+"','"+hobi+"','"+jabatan+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("daftarguru.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
