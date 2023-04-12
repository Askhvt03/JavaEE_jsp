<%@ page import="spring1.bitlab.javaee.db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-5 pb-5">
        <%
            Task task = (Task) request.getAttribute("task");
            if (task!=null){
        %>
        <div class="row">
            <div class="col-6 mx-auto">
                <form action="/save-task" method="post">
                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                    <div class="row">
                        <div class="col-12">
                            <label>NAME:</label>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <label>DESCRIPTION:</label>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <textarea name="task_desc" class="form-control"  rows="10"><%=task.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <label>DEADLINE:</label>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <input type="date" class="form-control" name="task_deadline" value="<%=task.getDeadlineDate()%>">
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <label>DONE:</label>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <select class="form-select" name="task_do" value="<%=task.getTaskDo()%>">
                                <option>...</option>
                                <option>YES</option>
                                <option>NO</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <button class="btn btn-primary">
                                EDIT TASK
                            </button>
                            <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                                DELETE TASK
                            </button>
                        </div>
                    </div>
                </form>
                    <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="delete-task" method="post">
                                    <input type="hidden" name="id" value="<%=task.getId()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" >Confirm Delete</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <h5 class="text-center">Are you sure?</h5>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                        <button class="btn btn-danger ms-2" >YES</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <%
            }else {
        %>
        <h3 class="text-center">Task not found</h3>
        <%
            }
        %>
    </div>
</body>
</html>
