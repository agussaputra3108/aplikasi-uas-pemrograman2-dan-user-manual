<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

            <script language="JavaScript">
                function daftar(){
                alert("Jadwal Sukses DiUpdate");
                }
            </script>

<%
        String id = request.getParameter("id");
        String nis = request.getParameter("nis");
        String kode_mapel = request.getParameter("kode_mapel");
        String mata_pelajaran = request.getParameter("mata_pelajaran");
        String nilai = request.getParameter("nilai");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE `nilai` SET `nis`='"+nis+"', `kode_mapel`='"+kode_mapel+"', `mata_pelajaran`='"+mata_pelajaran+"', `nilai`='"+nilai+" 'WHERE `id_nilai`='"+id+"'");
    if (i > 0) {
        out.print("Anda Sukses Mengupdate data");
    } else {
        out.print("GAGAL Mengupdate Data!!!!");
    }
%>