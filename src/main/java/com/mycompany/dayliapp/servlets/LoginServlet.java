package com.mycompany.dayliapp.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final String URL = "jdbc:mysql://127.0.0.1:3306/dailydb";
    private static final String USUARIO = "root"; 
    private static final String PASSWORD = "1144"; 
    private static final Logger logger = Logger.getLogger(LoginServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        
        if (validarUsuario(usuario, password)) {
            
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect(request.getContextPath() + "/jsp/bienvenido.jsp");
        } else {
            
            response.sendRedirect(request.getContextPath() + "/jsp/login.jsp?error=1");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("usuario") != null) {
            
            response.sendRedirect(request.getContextPath() + "/jsp/bienvenido.jsp");
        } else {
            
            response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
        }
    }

    private boolean validarUsuario(String usuario, String password) {
        boolean isValid = false;
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(URL, USUARIO, PASSWORD)) {
                String sql = "SELECT * FROM Usuario WHERE Nombre = ? AND Contraseña = ?";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, usuario);
                    ps.setString(2, password);
                    try (ResultSet rs = ps.executeQuery()) {
                        if (rs.next()) {
                            isValid = true;  
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            
            logger.log(Level.SEVERE, "Error de conexión o consulta", e);
        }
        return isValid;
    }
}





