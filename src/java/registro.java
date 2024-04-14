/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

/**
 *
 * @author Eduardo Sanchez
 */
@WebServlet(urlPatterns = {"/registro"})
public class registro extends HttpServlet {

   
   
    
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

    try {
        Class.forName("org.mariadb.jdbc.Driver"); // Utilizamos el controlador JDBC de MySQL
        con = DriverManager.getConnection(url, usuario, contraseña);
        
        // Recupera los datos del formulario de registro
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rol = "Usuario"; // Por defecto, podría ser "Usuario" para nuevos registros
        
        // Verifica si el usuario ya existe en la base de datos
        String checkQuery = "SELECT email FROM usuarios WHERE email = ?";
        ps = con.prepareStatement(checkQuery);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.println("<h1>El usuario ya existe</h1>");
            return;
        }
        
        // Si el usuario no existe, procede con la inserción en la base de datos
        String insertQuery = "INSERT INTO usuarios (usuario, email, password, rol) VALUES (?, ?, ?, ?)";
        ps = con.prepareStatement(insertQuery);
        ps.setString(1, username);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, rol);
        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            out.println("<h1>Registro exitoso</h1>");
        } else {
            out.println("<h1>Error en el registro</h1>");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        out.println("<h1>Error en la conexión</h1>");
    } finally {
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


   

}
