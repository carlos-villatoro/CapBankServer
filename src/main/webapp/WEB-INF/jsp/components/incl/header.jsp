<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- header -->
<header class="main-page-header mb-3 ">
    <div class="container d-flex align-items-center">

        <div class="app-name">
            <span class="app-half">Cap</span>Bank
        </div>

        <!-- nav -->
        <nav class="navigation">
            <li><a href="/app/dashboard">Dashboard</a></li>
            <li><a href="/app/payment_history">Payment History</a></li>
            <li><a href="/app/transact_history">Transaction History</a></li>
        </nav>

        <!-- current user -->
        <div class="display-name ms-auto text-white">
            <i class="fa fa-circle text-success "></i>
            <span>${user.first_name}  ${user.last_name}</span>
        </div>

        <!-- log out -->
        <a href="/logout" class="btn btn-sm text-white ms-2">
            <i class="fas fa-sign-out-alt "></i>Sign Out
        </a>

    </div>
</header>