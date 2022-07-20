<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

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