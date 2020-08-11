<%-- 
    Document   : index
    Created on : Jul 5, 2020, 5:39:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="Title" value="Edit"/>
        </jsp:include>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    </head>
	
    <body>
		<jsp:include page='views/layout/navbar.jsp'></jsp:include>
        <div class='container pt-4'>
            <div class="row">
                <div class="col-4">
                    <form action="edit" method="POST">
                        <div class="form-group">
                            <input type="hidden" name="id" value="${product.id}">
                            <label>Product Name</label>
                            <input class="form-control" type="text" name="name"
                                   value="${product.name}">
                        </div>
                        <div class="form-group">
                            <label>Product Category</label>
                            <select class="form-control" type="text" name="category">
                                <option ${product.category == 'Alat Mandi' ? 'selected' : ''} value="Alat Mandi">Alat Mandi</option>
                                <option ${product.category == 'Food & Beverages' ? 'selected' : ''} value="Food & Beverages">Food & Beverages</option>
                                <option ${product.category == 'Pakaian' ? 'selected' : ''} value="Pakaian">Pakaian</option>
                                <option ${product.category == 'Elektronik' ? 'selected' : ''} value="Elektronik">Elektronik</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Quantity</label>
                            <input class="form-control" type="number" min="0" 
                                   name="quantity" value="${product.quantity}">
                        </div>
                        <div class="form-group">
                            <label>Product Expired</label>
                            <input class="form-control" type="text" name="expired_at" 
                                   id="datepicker" value="${product.expired_at}">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
            $('#datepicker').datepicker({
                weekStart: 1,
                autoclose: true,
                todayHighlight: true,
                format: 'yyyy-mm-dd'
            });
            $('#datepicker').datepicker("setDate", new Date());
        </script>
    </body>
</html>
