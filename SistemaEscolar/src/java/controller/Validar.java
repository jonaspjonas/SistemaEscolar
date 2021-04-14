package controller;

import dao.ProfessorDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Professor;

@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    Professor prof = new Professor();
    ProfessorDao profdao = new ProfessorDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");

        if (acao.equalsIgnoreCase("Entrar")) {
            String email = request.getParameter("txtemail");
            String senha = request.getParameter("txtsenha");
            prof = profdao.validar(email, senha);
            if (prof.getEmail() != null) {
                request.setAttribute("professor", prof);
                request.getRequestDispatcher("dashboardprofessor.jsp").forward(request, response);
            } else {
                request.setAttribute("msgErro", "Email ou Senha inválidos!");
                request.getRequestDispatcher("loginprofessor.jsp").forward(request, response);
            }
        }
        if(acao.equalsIgnoreCase("sair")){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
