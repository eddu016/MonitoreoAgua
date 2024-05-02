import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/DBPG"})
public class DBPG extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String usuario = "root";
        String contraseña = "root";
        String url = "jdbc:mariadb://127.0.0.1:3306/watervisor"; // La URL de conexión a la base de datos "usuarios" en el servidor HeidiSQL
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver"); // Utilizamos el controlador JDBC de MySQL
            con = DriverManager.getConnection(url, usuario, contraseña);
            
           
            
            // Consulta para obtener el usuario, contraseña y rol
            String query = "SELECT usuario, email, password, rol FROM usuarios WHERE email = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, request.getParameter("email")); // Recibes el email del formulario
            rs = ps.executeQuery();
            
            if (rs.next()) {
                String dbUser = rs.getString("usuario");
                String dbEmail = rs.getString("email");
                String dbPassword = rs.getString("password");
                String dbRole = rs.getString("rol");
                
                // Verificar si la contraseña coincide y redirigir según el rol
                if (dbPassword.equals(request.getParameter("password"))) { // Recibe la contraseña del formulario
                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", dbUser);
                    if (dbRole.equals("Admin")) {
                        // Redirigir a la página de administrador
                        response.sendRedirect("admin.jsp");
                    } else {
                        // Redirigir a la página de usuario normal
                        response.sendRedirect("simulacion.jsp");
                    }
                } else {
                    out.println("<h1>Contraseña incorrecta</h1>");
                }
            } else {
                out.println("<h1>Usuario no encontrado</h1>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<h1>Error en la conexión</h1>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
