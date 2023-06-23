<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Registration" name="HTMLtitle" />
</jsp:include>
<div class="container-fluid row"> 
	<!-- HERO BANNER ↓↓ -->
	<div class="col-5 offset-1 courier-new text-center mt-3">
		<div><br> <h2 class="color mb-0 fw-bold">Be part of our community.</h2> <br> <img class="img-fluid" title="herobanner"src="images/herobanner.png"/></div>
	</div>
	<!-- Error Message -->
  	<div class="col-5 offset-1 col-lg-4 mt-3">
    <div class="alert alert-danger ${errMsg != null ? 'd-block' : 'd-none' }" role="alert">
      ${errMsg}
    </div>
	<!-- Registration Form -->
	<div class="form-width margin-auto">
    <form:form action="registration" method="post" modelAttribute="registration">
      <div class="mb-3">
        <label for="firstName" class="form-label">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" required>
        <div class="invalid-feedback">First Name is required</div>
      </div>
      <div class="mb-3">
        <label for="lastName" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" required>
        <div class="invalid-feedback">Last Name is required</div>
      </div>
      <div class="mb-3">
        <label for="emailAddresss" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailAddress" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>" required>
        <div class="invalid-feedback">Email address should be have @ and .</div>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
        <div class="invalid-feedback">Password required and must be match</div>
      </div>
      <div class="mb-3">
        <label for="passwordConfirmation" class="form-label">Password Confirmation</label>
        <input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" required>
        <div class="invalid-feedback">Password required and must be match</div>
      </div>
      <button type="submit" class="w-100 button p-2 small">Register</button>
      <div class="text-center"> <br>
		<hr>
		<p>Already have an account? <a href="login" class="color">Login</a></p>
	  </div>
    </form:form>
    </div>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>

