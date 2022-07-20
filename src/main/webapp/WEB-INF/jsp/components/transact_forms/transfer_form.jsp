<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- transfer card -->
<div class="card transfer-card text-bg-dark border-white ">
    <div class="card-body">
        <form action="/transact/transfer" method="POST">

            <div class="form-group mb-2">
                <label for="">Select Your Account to Transfer From:</label>
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
                <label for="">Select Your Account to Transfer To:</label>
                <select name="account_id" class="form-control mb-3" id="">
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
                <button id="new-account-btn">
                    Complete Transfer
                </button>
            </div>
        </form>
    </div>
</div>