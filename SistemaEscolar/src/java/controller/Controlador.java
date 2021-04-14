package controller;

import dao.ProfessorDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Professor;

/**
 *
 * @author jonas
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {
    
    ProfessorDao profdao = new ProfessorDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if (acao.equalsIgnoreCase("areadoprofessor")) {
            request.getRequestDispatcher("areadoprofessor.jsp").forward(request, response);
        }
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST Chamado");
        
        Professor prof = new Professor();
        prof.setNome(request.getParameter("txtnome"));
        prof.setEmail(request.getParameter("txtemail"));
        prof.setTelefone(request.getParameter("txttelefone"));
        prof.setDisciplina(request.getParameter("txtdisciplina"));
        prof.setSenha(request.getParameter("txtsenha"));
        
        if(profdao != null){
           profdao.adicionar(prof);
        }
        request.getRequestDispatcher("loginprofessor.jsp").forward(request, response);
    }
    

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
