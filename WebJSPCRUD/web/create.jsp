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
            <jsp:param name ="Title" value="Create"/>
        </jsp:include>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    </head>
    <body>
		<jsp:include page='views/layout/navbar.jsp'></jsp:include>
        <div class='container pt-4'>
            <div class="row">
                <div class="col-4">
                    <form action="create" method="POST">
                        <div class="form-group">
                            <label>Product Name</label>
                            <input class="form-control" type="text" name="name">
                        </div>
                        <div class="form-group">
                            <label>Product Category</label>
                            <select class="form-control" type="text" name="category">
                                <option value="Alat Mandi">Alat Mandi</option>
                                <option value="Food & Beverages">Food & Beverages</option>
                                <option value="Pakaian">Pakaian</option>
                                <option value="Elektronik">Elektronik</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Quantity</label>
                            <input class="form-control" type="number" min="0" 
                                   name="quantity">
                        </div>
                        <div class="form-group">
                            <label>Product Expired</label>
                            <input class="form-control" type="text" name="expired_at" 
                                   id="datepicker">
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
