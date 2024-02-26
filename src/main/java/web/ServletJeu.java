package web;

import Metier.Jeu;

import Model.JeuBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class ServletJeu extends HttpServlet {
    private Jeu jeu;

    @Override
    public void init() throws ServletException {
        jeu = new Jeu();
        jeu.genererNombre();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Utiliser sendRedirect
        // response.sendRedirect("index.jsp");

        // Utiliser forward
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int nbPropose;
        JeuBean monBean = new JeuBean();

        nbPropose = Integer.parseInt(request.getParameter("nombrePropose"));
        monBean.setNb(nbPropose);
        String msg=jeu.jouer(nbPropose);
        System.out.println("---------------------"+msg);
        monBean.setMsg(msg);

        request.setAttribute("bean", monBean);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}



