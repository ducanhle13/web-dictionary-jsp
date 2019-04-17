<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: leducanh
  Date: 17/04/2019
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin Chào");
    dic.put("how", "Như nào");
    dic.put("book", "Sách");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("txtSearch");

    String result = dic.get(search);
    if (result != null) {%>
        <%--//out.println("Word: " + search);--%>
        <%="Word: " + search%>
        <%--out.println("Result: " + result); --%>
        <%="Result: " + result%>
   <% } else {
        out.println("Not found");
    }

%>
</body>
</html>
