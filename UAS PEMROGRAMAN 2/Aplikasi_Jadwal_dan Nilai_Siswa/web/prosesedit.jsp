<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

            <script language="JavaScript">
                function daftar(){
                alert("Data Sukses DiUpdate");
                }
            </script>

<%
        String id_user = request.getParameter("id");
        String nip = request.getParameter("nip");
        String nama = request.getParameter("nama");
        String jk = request.getParameter("jk");
        String tempat = request.getParameter("tempat");
        String tgl = request.getParameter("tgl");
        String alamat = request.getParameter("alamat");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String hobi = request.getParameter("hobi");
        String jabatan = request.getParameter("jabatan");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE `guru` SET `nip`='"+nip+"',`nama`='"+nama+"',`jk`='"+jk+"',`tempat`='"+tempat+"',`alamat`='"+alamat+"',`email`='"+email+"',`phone`='"+phone+"',`hobi`='"+hobi+"',`jabatan`='"+jabatan+"' WHERE `id_user`='"+id_user+"'");
    if (i > 0) {
        out.print("Anda Sukses Mengupdate data");
    } else {
        out.print("GAGAL Mengupdate Data!!!!");
    }
%>