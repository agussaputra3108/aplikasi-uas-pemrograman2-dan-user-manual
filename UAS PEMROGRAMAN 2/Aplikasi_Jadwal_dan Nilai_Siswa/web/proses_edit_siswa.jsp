<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

            <script language="JavaScript">
                function daftar(){
                alert("Selamat anda berhasil menambahkan data");
                }
            </script>

<%
        String id_user = request.getParameter("id");
        String nis = request.getParameter("nis");
        String nama = request.getParameter("nama");
        String jk = request.getParameter("jk");
        String tempat = request.getParameter("tempat");
        String tgl = request.getParameter("tgl");
        String alamat = request.getParameter("alamat");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;

    int i = st.executeUpdate("UPDATE `siswa` SET `nis`='"+nis+"',`nama`='"+nama+"',`jk`='"+jk+"',`tempat`='"+tempat+"',`alamat`='"+alamat+"',`email`='"+email+"',`phone`='"+phone+"',`username`='"+username+"',`password`='"+password+"' WHERE `id_user`='"+id_user+"'");
    if (i > 0) {
        out.print("Anda Sukses Mengupdate data");
    } else {
        out.print("GAGAL Mengupdate Data!!!!");
    }
%>