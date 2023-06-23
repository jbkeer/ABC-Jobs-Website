<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>
<div class="container text-center col-4 dark-cyan mt-5 mb-5 h-100">
    <h2 class="dark-cyan">Forgot Password?</h2>
    <p class="small">Please enter and check your email for confirmation</p>
    <div class="alert alert-danger ${message == null ? 'd-none' : 'd-block'}" role="alert">
  		${message}
	</div>
    <form action="forgot-password" method="post">
	    <div class="form-floating mb-3">
	        <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required>
	        <label for="floatingInput">Email address</label>
			<div class="invalid-feedback"> Email address should be have @ and .</div>
	     </div>
	    <button type="submit" class="button px-4 p-2 small">Reset your password</button>
    </form>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>

