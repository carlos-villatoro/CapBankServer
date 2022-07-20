<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <link rel="stylesheet" href="/css/bootstrap/bootstrap.css">--%>
<%--    <link rel="stylesheet" href="/css/fontawesome/css/all.css">--%>
<%--    <link rel="stylesheet" href="/css/main.css">--%>
    <script src="/js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>

<!-- Header -->
<c:import url="components/incl/header.jsp"/>


<!-- Transact Offcanvas: pulls from the left -->
<%--<c:import url="components/transact_offcanvas.jsp"/>--%>
<div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasLeft"
     aria-labelledby="offcanvasLeftLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasLeftLabel">New Transaction</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
    </div>
    <!-- transactions -->
    <div class="offcanvas-body">

        <select name="transaction-type" class="form-control mb-3" id="transaction-type">
            <option value="">Select Transaction Type</option>
            <option value="payment">Payment</option>
            <option value="transfer">Transfer</option>
            <option value="deposit">Deposit</option>
            <option value="withdraw">Withdraw</option>
        </select>


        <!-- Payments Form Card -->
        <%--        <c:import url="./components/transact_forms/payment_form.jsp"/>--%>
        <!-- payment card -->
        <div class="card payment-card text-bg-dark border-white ">
            <div class="card-body">
                <form action="/transact/payment" method="POST">

                    <div class="form-group mb-2">
                        <label for="">Account Holder:</label>
                        <input type="text" name="holder" class="form-control" placeholder="Enter account holder's name">
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Account Number:</label>
                        <input type="text" name="account_number" class="form-control"
                               placeholder="Enter account number">
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Select Your Account to Pay From:</label>
                        <select name="account_id" class="form-control mb-3" >
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Payment Amount:</label>
                        <input type="text" name="payment_amount" class="form-control"
                               placeholder="Enter payment amount">
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Memo:</label>
                        <input type="text" name="memo" class="form-control" placeholder="What is this payment for?">
                    </div>

                    <div class="form-group mb-2">
                        <button class="new-account-btn">
                            Send Payment
                        </button>
                    </div>

                </form>
            </div>
        </div>
        <!-- Transfer Form Card -->
        <%--        <c:import url="./components/transact_forms/transfer_form.jsp"/>--%>
        <!-- transfer card -->
        <div class="card transfer-card text-bg-dark border-white ">
            <div class="card-body">
                <form action="/transact/transfer" method="POST">

                    <div class="form-group mb-2">
                        <label for="">Select Your Account to Transfer From:</label>
                        <select name="account_id" class="form-control mb-3" >
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Select Your Account to Transfer To:</label>
                        <select name="account_id" class="form-control mb-3" >
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Transfer Amount:</label>
                        <input type="text" name="transfer_amount" class="form-control"
                               placeholder="Enter transfer amount">
                    </div>


                    <div class="form-group mb-2">
                        <button class="new-account-btn">
                            Complete Transfer
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Deposit Form Card -->
        <%--        <c:import url="./components/transact_forms/deposit_form.jsp"/>--%>
        <!-- deposit card -->
        <div class="card deposit-card text-bg-dark border-white ">
            <div class="card-body">

                <form action="/transact/deposit" method="POST" class="deposit-form">
                    <div class="form-group mb-2">
                        <label for="">Select Your Account to Deposit To:</label>
                        <select name="account_id" class="form-control mb-3" >
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Deposit Amount:</label>
                        <input type="text" name="deposit_amount" class="form-control"
                               placeholder="Enter deposit amount">
                    </div>


                    <div class="form-group mb-2">
                        <button class="new-account-btn">
                            Complete Deposit
                        </button>
                    </div>
                </form>

            </div>
        </div>
        <!-- Withdraw Form Card -->
        <%--        <c:import url="./components/transact_forms/withdraw_form.jsp"/>--%>
        <!-- withdraw card -->
        <div class="card withdraw-card text-bg-dark border-white ">
            <div class="card-body">
                <form action="/transact/withdraw" method="POST" class="deposit-form">

                    <div class="form-group mb-2">
                        <label for="">Select Your Account to Withdraw From:</label>
                        <select name="account_id" class="form-control mb-3" id="">
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="">Withdraw Amount:</label>
                        <input type="text" name="withdraw_amount" class="form-control"
                               placeholder="Enter withdraw amount">
                    </div>


                    <div class="form-group mb-2">
                        <button id="new-account-btn">
                            Complete Withdraw
                        </button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<!-- Add Accounts Offcanvas: pulls from the right -->
<%--<c:import url="components/add_account_offcanvas.jsp"/>--%>
<!-- new account form canvas body -->
<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasRight"
     aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <h5 id="offcanvasRightLabel" class="">Add an Account</h5>
        <button type="button" class="btn-close text-reset btn-close-white" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
    </div>
    <!-- create account -->
    <div class="offcanvas-body">
        <div class="card text-bg-dark border-white">
            <form action="/account/create_account"  method="POST" class="add-account-form">
                <div class="card-body">

                    <div class="form-group mb-3">
                        <label for="">Account Name</label>
                        <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name...">
                    </div>

                    <div class="form-group mb-3">
                        <select name="account_type" id="" class="form-control">
                            <option value="">Select Account Type</option>
                            <option value="checking">Checking</option>
                            <option value="savings">Savings</option>
                            <option value="business">Business</option>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <button id="new-account-btn">
                            Add Account
                        </button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
<!-- offcanvas bodies -->

<!-- Container -->
<div class="container">

    <!-- Display Message -->
    <c:if test="${success != null}">
        <div class="alert alert-info text-center border border-info">
            <b>${success}</b>
        </div>
    </c:if>
    <!-- End Of Display Message -->

    <!-- Display Message -->
    <c:if test="${error!= null}">
        <div class="alert alert-danger text-center border border-danger">
            <b>${error}</b>
        </div>
    </c:if>
    <!-- End Of Display Message -->
</div>
<!-- End Of Container-->

<c:choose>
<c:when test="${fn:length(userAccounts) > 0 }">
<!-- Display Accounts --->
    <c:import url="components/accounts_display.jsp"/>
</c:when>
<c:otherwise>
<!-- Dont Display Accounts -->
    <c:import url="components/no_accounts_display.jsp"/>
</c:otherwise>
</c:choose>


<!-- Footer -->
<c:import url="components/incl/footer.jsp"/>