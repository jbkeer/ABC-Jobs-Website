<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="../../header.jsp">
        <jsp:param value="Update Profile" name="HTMLtitle" />
    </jsp:include>

<div class="container">
    <form:form modelAttribute="profile" action="update-profile" method="post">
	    <div class="row border rounded-3 mb-4">
	 	<div class="img-fluid rounded-top" style=" background-image: linear-gradient(150deg, rgba(63, 174, 255, .3)15%, rgba(63, 174, 255, .3)70%, rgba(63, 174, 255, .3)94%), 
	 	 url(images/coverphoto.png); height: 350px; background-size: cover;">
	  	</div>
		<div class="col-2 border-none text-center fs-1 d-flex align-items-center justify-content-center" style="position: relative; top: -100px;">
		<img class="rounded-circle bg-color" style="height: 180px; width: 200px; border: 5px solid white;">
		</div>
        <div class="col-8 p-2">
	        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="firstName" name="firstName" value="${firstName}" required>
            <label for="firstName">First Name</label>
	        </div>
            <div class="form-floating mb-3">
            <input type="text" class="form-control" id="lastName" name="lastName" value="${lastName}" required>
            <label for="lastName">Last Name</label>
            </div>
            <input type="text" class="form-control" value="${title}" name="title" placeholder="Your title">
        </div>
        <div class="col-2 align-self-center">
            <button type="submit" class="button px-3 p-2 small">Save Changes</button>
        </div>
      </div>
	  <div class="row">
	  <div class="col-3">
	  <div>
          <div class="d-flex align-items-center mb-3">
            <i class='bx bxs-briefcase fs-2 dark-cyan'></i>
            <div class="form-floating ml-3">
            <input type="text" class="form-control" id="company" name="companyName" value="${company}">
            <label for="company">Company</label>
            </div>
          </div>
          <div class="d-flex align-items-center mb-3">
            <i class='bx bxs-envelope fs-2 dark-cyan'></i>
            <div class="form-floating ml-3">
            <input type="text" class="form-control" id="email" name="email" value="${email}" disabled>
            <label for="email">Email</label>
            </div>
          </div>
          <div class="d-flex align-items-center mb-3">
            <i class='bx bx-globe fs-2 dark-cyan'></i>
            <div class="form-floating ml-3">
            <input type="text" class="form-control" id="website" name="website" value="${website}">
            <label for="website">Website</label>
            </div>
          </div>
      </div>
	  </div>
		<div class="col-9">
            <div class="mb-3 row mt-2">
           	<div class="col-1">
           	<i class='bx bxs-user fs-2 dark-cyan'></i>
           	</div> 
           	<div class="p-0 col-11" style="margin-left: -25px;">
            <h3>About Me</h3>
            <textarea class="form-control" name="about" id="about" cols="6">${about}</textarea>
           	</div>
           	</div>
            <hr>
            <div class="mb-3">
				<div class="d-flex">
                	<i class='bx bxs-certification fs-2 dark-cyan'></i>
                    <h3 class="ps-2">Experience</h3>
                    <button type="button" class="button px-3 p-1 small ms-auto" data-bs-toggle="modal" data-bs-target="#experiences">
                        Add Experience
                    </button>

                    <div class="modal fade" id="experiences" tabindex="-1">
                    <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="experiencesLabel">Add Experience</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="position" name="position">
                            <label for="position">Position</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="startDateEX" name="startDateEX">
                            <label for="startDateEX">Start Date</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="endDateEX" name="endDateEX">
                            <label for="endDateEX">End Date</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="companyName" name="companyNameEX">
                            <label for="companyName">Company Name</label>
                        </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="button small px-3 p-1" data-bs-dismiss="modal" id="exBtn">Add</button>
                        </div>
                    </div>
                    </div>
                    </div>
				</div>
                <div id="experiencesMD"></div>
                
                <% int i = 0; %>
                <c:forEach var="e" items="${ex}">
	               	<% i = i + 1; %>
					<div class="c-ibc d-flex align-items-center position-relative mb-3 rounded-3 px-2"><i class='bx bx- fs-2'></i>
		                <div class="p-3"><h4>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
		                <small>${e.getCompanyName()}</small>
		                </div>
		                <div class="interactive-bc">
					  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#ex<%= i %>"><i class='bx bx-pencil'></i></button>
					  	<button type="button" class="button-card-hover text-danger"><i class='bx bx-trash'></i></button>
						</div>
	               	</div>
	                   <!-- Edit -->
					<div class="modal fade" id="ex<%= i %>" tabindex="-1">
					<div class="modal-dialog">
					<div class="modal-content">
				      <div class="modal-header">
				      <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
				      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				       ...
				      </div>
				      <div class="modal-footer">
			          <button type="button" class="button small px-3 p-1" data-bs-dismiss="modal">Close</button>
			          <button type="button" class="button small px-3 p-1">Save changes</button>
				      </div>
					</div>
					</div>
					</div> 
                </c:forEach>
            </div>
                <hr>
            <div>
                <div class="d-flex">
                    <i class='bx bxs-book-content fs-2 dark-cyan'></i>
                    <h3 class="ps-2">Education</h3>
                    <button type="button" class="button px-3 p-1 small ms-auto" data-bs-toggle="modal" data-bs-target="#educations">
                        Add Education
                    </button>
                    <div class="modal fade" id="educations" tabindex="-1" aria-labelledby="educationsLabel" aria-hidden="true">
                    <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="educationsLabel">Add Education</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="intitutionName" name="intitutionName">
                            <label for="intitutionName">Intitution Name</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="startDateED" name="startDateED">
                            <label for="startDateED">Start Date</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="endDateED" name="endDateED">
                            <label for="endDateED">End Date</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="educationName" name="educationName">
                            <label for="educationName">Education Name</label>
                        </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="button small px-3 p-1" data-bs-dismiss="modal" id="edBtn">Add</button>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
                <div id="educationsMD"></div>
                <c:forEach var="e" items="${ed}">
                    <div class="d-flex align-items-center">
                    <i class='bx bxs- fs-2 dark-cyan'></i>
                    <div class="p-3">
                        <h4>${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                        <small>${e.getIntitutionName()}</small>
                    </div>
                    </div>
                </c:forEach>
            </div>
           <hr>
		</div>
        </div>
	</form:form>
</div>
    
<script src="../js/profile.js">
</script>

<jsp:include page="../../footer.jsp"></jsp:include>