<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Reset" name="HTMLtitle" />
</jsp:include>
<div class="container text-center col-4 dark-cyan mt-5 mb-5 h-100">
	<br> <br>
	<h2 class="dark-cyan">Reset your password</h2>
	<form:form action="reset" method="post">
	  <div class="mb-3">
	    <label for="password" class="form-label">New Password</label>
	    <input type="password" class="form-control" id="password" name="password" required>
	    <div class="invalid-feedback">Password required and must be a match</div>
	  </div>
	  <div class="mb-3">
	    <label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
	    <input type="password" class="form-control" id="passwordConfirmation" required>
	    <div class="invalid-feedback">Password required and must be a match</div>
	  </div>
	  <button type="submit" class="button px-4 p-2 small">Update Password</button> 
	</form:form>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>

