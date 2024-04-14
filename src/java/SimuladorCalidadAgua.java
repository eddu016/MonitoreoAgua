/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Eduardo Sanchez
 */
@WebServlet(urlPatterns = {"/SimuladorCalidadAgua"})
public class SimuladorCalidadAgua extends HttpServlet {
    private double temperatura;
    private double turbidez;
    private double pH;
    
    @Override
    public void init() throws ServletException{
        
        super.init();
        //iniciamos la lectura de los sensores (simulados)
        actualizarSensores();
        // Creamos un temporizador para actualizar los sensores cada 5 segundos
        new java.util.Timer().schedule(
            new java.util.TimerTask() {
            @Override
            public void run() {
                actualizarSensores();
            }
            },
                0, //Empezar de inmediato
                5 * 1000 //Actualizar cada 5 seg
        );
              
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Establecemos los atributos en el objeto request
        request.setAttribute("temperatura", temperatura);
        request.setAttribute("turbidez", turbidez);
        request.setAttribute("ph", pH);
        
        // Redirigimos la solicitud al archivo index JSP
        request.getRequestDispatcher("mostrar_datos.jsp").forward(request, response);
        
    }
    
    //Simulamos la lectura de sensores
    private void actualizarSensores(){
        temperatura = leerTemperatura();
        turbidez = leerTurbidez();
        pH = leerPh();
    }
    private double leerTemperatura() {
        Random rand = new Random();
        return rand.nextDouble() * 40;
    }

    private double leerTurbidez() {
        Random rand = new Random();
        return rand.nextDouble() * 100;
    }

    private double leerPh() {
        Random rand = new Random();
        return rand.nextDouble() * 14;
    }
   
    }

 
   