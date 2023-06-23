<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>
<div class="container text-center mt-3 pt-5 fw-bold">
    <h2 class="fw-bold courier-new mt-3"style="color: #02bbbb;" >Please check your email for confirmation.</h2>
    <img class="img-fluid mt-3 mb-3" alt="Thank You" src="images/thankyou.png"> 
    <button type="button" class="button small p-2" data-bs-toggle="modal" data-bs-target="#ver">
	  Get Confirmation Link
	</button>
</div>
<!-- Modal -->
<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<i class='bx bxs-envelope fs-2 dark-cyan'></i>
      	<h2>Successful</h2>
      	<p>Please check your email for confirmation.</p>
       	<a href="verified" class="button small p-2">Continue</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>