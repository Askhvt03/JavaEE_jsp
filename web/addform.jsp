<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>NAME:</label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-12">
            <label>DESCRIPTION:</label>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-12">
            <textarea name="task_desc" class="form-control"  rows="5"></textarea>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-12">
            <label>DEADLINE:</label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <input type="date" class="form-control" name="task_deadline">
        </div>
    </div>
<%--    <div class="row mt-4">--%>
<%--        <div class="col-12">--%>
<%--            <label>DONE:</label>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row mt-3">--%>
<%--        <div class="col-12">--%>
<%--            <select class="form-select" name="task_do">--%>
<%--                <option>YES</option>--%>
<%--                <option>NO</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="row mt-4">
        <div class="col-12">
            <button class="btn btn-success">ADD TASK</button>
        </div>
    </div>
</form>