<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="All users" name="HTMLtitle" />
    <jsp:param value="../css/zephyr.css" name="isNested" />
</jsp:include>

<div class="container">
<table class="table table-hover my-3">
    <thead>
      <tr class="bg-table">
        <th scope="col">#</th>
        <th scope="col">Full Name</th>
        <th scope="col">Email Address</th>
        <th scope="col">Occupation</th>
        <th scope="col">-</th>
      </tr>
    </thead>
    <tbody>
    	<% int i = 1; %>
  	<c:forEach var="user" items="${users}">
 	<tr>
       <th scope="row"><%= i++ %></th>
       <td>${user.getFirstName()} ${user.getLastName()}</td> 
       <td>${user.getUser().getEmail()}</td>
       <td>${user.getTitle() == null ? "-" : user.getTitle()}</td>
       <td class="gap-2">
         <a class="text-deco-none button px-2 p-1 small me-2" href="profile/${user.getUserId()}">Edit</a>
         <a class="text-deco-none button px-2 p-1 small me-2" href="" data-bs-toggle="modal" data-bs-target="#deleteModal${user.getUserId()}">Delete</a>
         <a class="text-deco-none button px-2 p-1 small" href="" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}">Detail</a> 
       </td>
     </tr> 
     
     <!-- Delete Confirmation -->
	<div class="modal fade" id="deleteModal${user.getUserId()}" style="z-index: 2000;">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        Are you sure you want to delete this user?
	      </div>
	      <div class="modal-footer">
	        <a href="delete/${user.getUserId()}" class="button px-3 p-2 small">Delete</a>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- User Details -->
	 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5 text-center color" id="exampleModalLabel">Details</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <ul class="list-group list-group-flush">
	          <li class="list-group-item">
	            <h4>First Name</h4>
	            <p>${user.getFirstName()}</p>
	          </li>
	          <li class="list-group-item">
	            <h4>Last Name</h4>
	            <p>${user.getLastName()}</p>
	          </li>
	          <li class="list-group-item">
	            <h4>Title</h4>
	            <p>${user.getTitle()}</p>
	          </li>
	          <li class="list-group-item">
	            <h4>About</h4>
	            <p>${user.getAbout()}</p>
	          </li>
	          <li class="list-group-item">
	            <h4>Company Name</h4>
	            <p>${user.getCompanyName()}</p>
	          </li>
	          <li class="list-group-item">
	            <h4>Website</h4>
	            <a href="">${user.getWebsite()}</a>
	          </li>
	        </ul>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="button px-3 p-2 small" data-bs-dismiss="modal">Close</button>
	      </div>
	    </div>
  	</div>
   </div>
  </c:forEach>
  </tbody>
</table>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>