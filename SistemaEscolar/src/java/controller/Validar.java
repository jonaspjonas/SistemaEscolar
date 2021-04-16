package controller;

import dao.AtividadeDao;
import dao.ProfessorDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Atividade;
import model.Professor;

@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    Professor prof = new Professor();
    ProfessorDao profdao = new ProfessorDao();
    AtividadeDao atvdao = new AtividadeDao();

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
        if(acao.equalsIgnoreCase("cadastrar")){
            System.out.println("chamou cadastrar atividade!!!!!!!");
            
            Atividade atv = new Atividade();
            atv.setTitulo(request.getParameter("txttitulo"));
            atv.setAutor(request.getParameter("txtautor"));
            atv.setDescricao(request.getParameter("txtdescricao"));  
            atv.setDatainicio(request.getParameter("txtdataini"));
            atv.setDatafim(request.getParameter("txtdatafim"));
            atv.setComando(request.getParameter("txtcomando"));
            
            if(atvdao != null){
                atvdao.adicionar(atv);
            }
            System.out.println("atividdae cadastrada!!!!!!!");
            request.getRequestDispatcher("dashboardprofessor.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
