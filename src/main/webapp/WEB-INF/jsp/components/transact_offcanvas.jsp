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
        <c:import url="components/transact_forms/payment_form.jsp"/>
        <!-- Transfer Form Card -->
        <c:import url="components/transact_forms/transfer_form.jsp"/>
        <!-- Deposit Form Card -->
        <c:import url="components/transact_forms/deposit_form.jsp"/>
        <!-- Withdraw Form Card -->
        <c:import url="components/transact_forms/withdraw_form.jsp"/>


    </div>
</div>