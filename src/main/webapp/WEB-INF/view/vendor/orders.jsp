<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Order Management</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #f4f4f4;
        }

        form select {
            padding: 5px;
            margin-right: 5px;
        }

        form button {
            padding: 5px 10px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        form button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h1>Order Management</h1>
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Order Date</th>
                <th>Total Price</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${orders}" var="order">
                <tr>
                    <td>${order.orderId}</td>
                    <td>${order.userId}</td>
                    <td>${order.orderDate}</td>
                    <td>${order.totalPrice}</td>
                    <td>${order.status}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/order/updateOrderStatus" method="post">

                            <input type="hidden" name="orderId" value="${order.orderId}">
                            <select name="status">
                                <option value="Processing" ${order.status == 'Processing' ? 'selected' : ''}>Processing</option>
                                <option value="Shipped" ${order.status == 'Shipped' ? 'selected' : ''}>Shipped</option>
                                <option value="Delivered" ${order.status == 'Delivered' ? 'selected' : ''}>Delivered</option>
                            </select>
                            <button type="submit">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
