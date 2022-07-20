<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

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
                <select name="account_id" class="form-control mb-3" id="">
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
                <button id="new-account-btn">
                    Send Payment
                </button>
            </div>

        </form>
    </div>
</div>