<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<<!-- no accounts card -->
<div class="container">
    <div class="card no-accounts-card">
        <div class="card-body">

            <h1 class="card-title">
                <i class="fas fa-ban text-danger"></i>No Accounts
            </h1>

            <hr>

            <div class="card-text">
                You currently have no accounts to show.
                <br>
                Click below to add your first account.


            </div>

            <br>

            <button id="new-account-btn" class="btn" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                <i class="fa fa-wallet"></i> Add New Account
            </button>

        </div>
    </div>
</div>