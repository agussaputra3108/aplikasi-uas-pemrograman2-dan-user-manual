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
        String id = request.getParameter("id_jadwal");
        String hari = request.getParameter("hari");
        String jam_pelajaran = request.getParameter("jam_pelajaran");
        String mata_pelajaran = request.getParameter("mata_pelajaran");
        String nama_guru = request.getParameter("nama_guru");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE `jadwal` SET `hari`='"+hari+"',`jam_pelajaran`='"+jam_pelajaran+"',`mata_pelajaran`='"+mata_pelajaran+"',`nama_guru`='"+nama_guru+"'WHERE `id_jadwal`='"+id+"'");
    if (i > 0) {
        out.print("Anda Sukses Mengupdate data");
    } else {
        out.print("GAGAL Mengupdate Data!!!!");
    }
%>