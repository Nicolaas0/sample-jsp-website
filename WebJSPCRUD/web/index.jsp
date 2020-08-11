<%-- 
    Document   : index
    Created on : Jul 5, 2020, 5:39:40 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="Title" value="Home"/>
        </jsp:include>
    </head>
    <body>
		<jsp:include page='views/layout/navbar.jsp'></jsp:include>
        <div class='container pt-4'>
            <div class="row">
                <div class="col-4 pb-4">
                    <a class="btn btn-sm btn-primary" href="create">Create</a>
                </div>
                <div class="col-12">
                    <table class="table table-responsive table-hover">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>Name</td>
                                <td>Category</td>
                                <td>Qty</td>
                                <td>Expired At</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${data}" var="item">
                                <tr>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.category}</p></td>
                                    <td><p>${item.quantity}</p></td>
                                    <td><p>${item.expired_at}</p></td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" 
                                           href="${pageContext.request.contextPath}/edit?id=${item.id}">
                                            Edit
                                        </a>
                                        <a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/delete?id=${item.id}">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        
    </body>
</html>
