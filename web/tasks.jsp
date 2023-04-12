<%@ page import="java.util.ArrayList" %>
<%@ page import="spring1.bitlab.javaee.db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <div class="container mt-5">
            <div class="row mt-3">
                <div class="col-12">
                    <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                        + Add Task
                    </button>

                    <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">New task</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <%@include file="addform.jsp"%>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
<%--                            <th>DESCRIPTION</th>--%>
                            <th>DEADLINE</th>
                            <th>DONE</th>
                            <th style="width: 10%">DETAILS</th>
                        </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasksi");
                                if (tasks!=null){
                                    for (Task t : tasks){
                            %>
                                <tr>
                                    <td><%=t.getId()%></td>
                                    <td><%=t.getName()%></td>
<%--                                    <td><%=t.getDescription()%></td>--%>
                                    <td><%=t.getDeadlineDate()%></td>
                                    <td><%=t.getTaskDo()%></td>
                                    <td>
                                        <a class="btn btn-success btn-sm" href="/details?task_id=<%=t.getId()%>">DETAILS</a>
                                    </td>
                                </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
