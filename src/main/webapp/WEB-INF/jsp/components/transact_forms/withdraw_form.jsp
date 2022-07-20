<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

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