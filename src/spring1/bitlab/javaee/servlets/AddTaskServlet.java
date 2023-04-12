package spring1.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import spring1.bitlab.javaee.db.DBManager;
import spring1.bitlab.javaee.db.Task;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_desc");
        String deadlineDate = request.getParameter("task_deadline");
        String taskDo = request.getParameter("task_do");

        Task task = new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadlineDate);
        task.setTaskDo(taskDo);

        DBManager.addTask(task);
        response.sendRedirect("/");
    }
}
