<%-- 
    Document   : index
    Created on : Jul 5, 2020, 5:41:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="About"/>
        </jsp:include>
    </head>
    <body>
		<jsp:include page='views/layout/navbar.jsp'></jsp:include>
        <div class='container pt-4'>
        <h1>Hello!! You are in About page</h1>
        <a href="${pageContext.request.contextPath}/home">Index</a>
        <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        
    </body>
</html>
