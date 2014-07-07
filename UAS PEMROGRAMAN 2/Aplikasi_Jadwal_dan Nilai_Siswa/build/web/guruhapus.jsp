
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<script language="JavaScript">
    function berhasil() {
        alert("Data Sukses Dihapus");
    }
    
</script>

<%
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tugas_akhir","root", "");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("DELETE FROM `guru` WHERE id_user='"+id+"'");
    if (i > 0) {
        out.write("<script type='text/javascript'>\n");
        out.write("alert(' Data Berhasil dihapus!!! ');\n");
        out.write("setTimeout(function(){window.location.href='data_guru.jsp'},1000);");
        out.write("</script>\n");
    } else {
        out.print("GAGAL");
        out.print(id);
    }
%>

