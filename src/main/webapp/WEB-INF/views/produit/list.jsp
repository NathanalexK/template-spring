<%@ page import="components.table.DataTable" %><%
    DataTable dataTable = new DataTable<>(request);
//    dataTable.sho
%>

<div class="d-flex justify-content-center">
    <%=dataTable.getHtml()%>
</div>