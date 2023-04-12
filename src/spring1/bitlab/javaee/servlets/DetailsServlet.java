package spring1.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import spring1.bitlab.javaee.db.DBManager;
import spring1.bitlab.javaee.db.Task;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = -1L;
        try {
            id = Long.valueOf(request.getParameter("task_id"));
        }catch (Exception e){
            e.printStackTrace();
        }
        Task task = DBManager.getTask(id);
        request.setAttribute("task", task);
        request.getRequestDispatcher("/details.jsp").forward(request, response);

    }
}
