<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container" style="background-color: #add8e6; border-radius: 10px;">
        <a class="navbar-brand" href="index.jsp">Mhindi and Sons Electronics</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                
                <!-- Show Home and Cart if logged in -->
                <c:if test="${not empty sessionScope.auth}">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
                    <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                    <li class="nav-item"><a class="nav-link" href="log-out">Log out</a></li>
                </c:if>

                <!-- Show Login if not logged in -->
                <c:if test="${empty sessionScope.auth}">
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                </c:if>
                
            </ul>
        </div>
    </div>
</nav>
