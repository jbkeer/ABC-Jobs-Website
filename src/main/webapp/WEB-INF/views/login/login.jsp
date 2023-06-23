<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>

<div class="d-flex justify-content-center mt-5"> 
<div class="col-4 px-5 py-2 d-flex flex-column justify-content-center mt-5"> 

<!--   Prompt Message -->
  <div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? 'd-none' : 'd-block' }" role="alert">
    ${ message }
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  <div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? 'd-none' : 'd-block' }" role="alert">
    ${ scMessage }
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
<!--   Log In Form -->
  <form:form action="login" method="post">
    <div class="mb-3">
      <label for="emailAddress" class="form-label">Email address</label>
      <input type="email" class="form-control" id="emailAddress" name="email" required>
    </div>
    <div class="mb-3">
      <label for="password" class="form-label">Password</label>
      <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <div class="d-flex flex-column text-center">
    <div class="d-flex">
      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
        <label class="form-check-label" for="rememberMe">Remember Me</label>
      </div>       
    </div>
    <button type="submit" class="button w-100 p-2 small">Log in</button> <br>
    <a href="forgot-password" class="d-block mb-3 text-deco-none color">Forgot password?</a>
	<hr>
	<p>Don't have an account yet? <a href="registration" class="color">Register Now</a></p>
    </div>
  </form:form>
</div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>