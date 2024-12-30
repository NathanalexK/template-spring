<%@ page import="java.lang.reflect.Field" %>
<%@ page import="java.lang.reflect.Method" %>
<%@ page import="util.StringUtils" %>
<%
    Object model = request.getAttribute("model");
    String id = String.valueOf(model.getClass().getDeclaredMethod("getId").invoke(model));
%>

<div class="d-flex justify-content-center">
    <div class="card w-50">
        <div class="card-header">
            <h4>Details</h4>
        </div>

        <div class="card-body">
            <table class="table table-bordered">
                <tbody>
                    <% for(Field field: model.getClass().getDeclaredFields()) {
                        Method method = model.getClass().getDeclaredMethod("get" + StringUtils.capitalize(field.getName()));
                        Object value = method.invoke(model);
                    %>
                        <tr>
                            <td><b><%=field.getName()%></b></td>
                            <td><%=String.valueOf(value)%></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>

        </div>

        <div class="card-footer d-flex justify-content-end gap-3">
            <a href="form?id=<%=id%>"><button class="btn btn-warning">Modifier</button></a>

        </div>
    </div>
</div>