<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Right Side Offcanvas: Accounts Form Container -->
<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasRight"
     aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <h5 id="offcanvasRightLabel" class="">Add an Account</h5>
        <button type="button" class="btn-close text-reset btn-close-white" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
    </div>
    <!-- Offcanvas Body: Accounts Form Wrapper -->
    <div class="offcanvas-body">
        <div class="card text-bg-dark border-white">
            <!-- Card Body -->

            <div class="card-body">
                <form action="/account/create_account"  method="POST" class="add-account-form">
                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for=""> Enter Account Name</label>
                        <input type="text" name="account_name" class="form-control" placeholder="Enter Account name...">
                    </div>
                    <!-- End Of Form Group -->
                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for=""> Select Account Type</label>
                        <select name="account_type" class="form-control" id="">
                            <option value="">-- Select Account Type --</option>
                            <option value="check">Check</option>
                            <option value="savings">Savings</option>
                            <option value="business">Business</option>
                        </select>
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group my-2">
                        <button id="" class="btn btn-md transact-btn">Add Account</button>
                    </div>
                    <!-- End Of Form Group -->

                </form>
            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Card: Accounts Form Card  -->
    </div>
    <!-- End Of Offcanvas Body: Accounts Form Wrapper -->
</div>
<!-- End Of Right Side Offcanvas: Accounts Form Container -->