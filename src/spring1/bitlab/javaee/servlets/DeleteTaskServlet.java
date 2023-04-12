package spring1.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import spring1.bitlab.javaee.db.DBManager;

import java.io.IOException;

@WebServlet(value = "/delete-task")
public class DeleteTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));

        DBManager.deleteTask(id);

        response.sendRedirect("/");
    }
}
