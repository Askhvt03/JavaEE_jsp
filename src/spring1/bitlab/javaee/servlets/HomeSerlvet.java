package spring1.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import spring1.bitlab.javaee.db.DBManager;
import spring1.bitlab.javaee.db.Task;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeSerlvet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Task> tasks = DBManager.getTasks();
        request.setAttribute("tasksi", tasks);
        request.getRequestDispatcher("/tasks.jsp").forward(request, response);
    }
}
