<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Orders</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4">All Orders with Product Details</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>User ID</th>
                    <th>Address</th>
                    <th>Payment Method</th>
                    <th>Total Price</th>
                    <th>Status</th>
                    <th>Estimated Delivery</th>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.orderId}</td>
                        <td>${order.userId}</td>
                        <td>${order.address}</td>
                        <td>${order.paymentMethod}</td>
                        <td>${order.totalPrice}</td>
                        <td>${order.status}</td>
                        <td>${order.estimatedDelivery}</td>
                        <td>${order.product.productId}</td>
                        <td>${order.product.productName}</td>
                        <td>${order.product.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/admin/dashboard" class="btn btn-primary">Back to Dashboard</a>
    </div>
</body>
</html>
