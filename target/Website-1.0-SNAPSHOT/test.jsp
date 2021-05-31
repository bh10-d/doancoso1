<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/05/2021
  Time: 9:21 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    <h1>session<%=session.getAttribute()%></h1>--%>
<%--    <h1>session<%=session.getAttribute("pricee")%></h1>--%>
    <h1><%=request.getAttribute("productlist")%></h1>


<h1><%=request.getAttribute("namep")%></h1>
<h1><%=request.getAttribute("price")%></h1>
<h1><%=request.getAttribute("detail")%></h1>
<%--    <h1><%=request.getAttribute("pricee")%></h1>--%>
</body>
</html>
