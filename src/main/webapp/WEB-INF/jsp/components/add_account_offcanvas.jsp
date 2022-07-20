<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasRight"
     aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <h5 id="offcanvasRight" class="">Add an Account</h5>
        <button type="button" class="btn-close text-reset btn-close-white" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
    </div>
    <!-- create account -->
    <div class="offcanvas-body">
        <div class="card text-bg-dark border-white">

                <div class="card-body">
                    <form action="/account/create_account"  method="POST" class="add-account-form">

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
                    </form>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- offcanvas bodies -->