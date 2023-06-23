<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Result" name="HTMLtitle" />
</jsp:include>

<div class="container">
    <div class="alert alert-success alert-dismissible fade show ${message == null ? 'd-none' : 'd-flex' }"
        role="alert">
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <div class="row border rounded-3 mb-4">
    	<div class="img-fluid rounded-top" style=" background-image: linear-gradient(150deg, rgba(63, 174, 255, .3)15%, rgba(63, 174, 255, .3)70%, rgba(63, 174, 255, .3)94%), 
    		url(images/coverphoto.png); height: 350px; background-size: cover;">
       	</div>
        <div class="col-2 border-none text-center fs-1 d-flex align-items-center justify-content-center" style="position: relative; top: -100px;">
            <img class="rounded-circle bg-color" style="height: 180px; width: 200px; border: 5px solid white;">
        </div>
        <div class="col-8 p-2">
            <h2>${fullName}</h2>
            <p>${title}</p>
        </div>
        <div class="col-2 align-self-center">
            <button class="button px-3 p-2 small" id="follow">Follow</button>
        </div>
    </div>

    <div class="row">
        <div class="col-4 border rounded">
            <div class="mb-1 d-flex">
     	 	<i class='bx bxs-user fs-2 dark-cyan pt-2'></i> 
     	 	<div class="mb-2 mt-1">
                 <h4 class="p-1 ps-2">About Me</h4>
                 <p class="p-1 ps-2">${about}</p>
             </div>
            </div>
            <hr>
            <div class="mb-3 d-flex">
        	<i class='bx bxs-certification fs-2 dark-cyan'></i>
        	<div>
	            <h4 class="p-1 ps-2">Experience</h4>
	            <c:forEach var="e" items="${ex}">
                <div class="d-flex align-items-center">
                <div class="p-3">
                <h5>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h5>
                <small>${e.getCompanyName()}</small>
                </div>
                </div>
	            </c:forEach>
            </div>
            </div>
            <hr>
            <div class="d-flex">
               <i class='bx bxs-book-content fs-2 dark-cyan'></i>
               <div>
               <h4 class="p-1 ps-2">Education</h4>
               <c:forEach var="e" items="${ed}">
               <div class="d-flex align-items-center">
               <div class="p-3">
               <h5>${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h5>
               <small>${e.getIntitutionName()}</small>
               </div>
               </div>
               </c:forEach>
               </div>
            </div>
            <hr>
            <div>
            <div class="d-flex">
               <i class='bx bxs-briefcase fs-2 dark-cyan pt-1'></i>
               <div class="p-1 ps-2">
               <h4>Company</h4>
               <small>${company}</small>
               </div>
            </div>
            <div class="d-flex">
               <i class='bx bxs-envelope fs-2 dark-cyan pt-1'></i>
               <div class="p-1 ps-2">
               <h4>Email</h4>
               <small>${email}</small>
               </div>
            </div>
            <div class="d-flex">
               <i class='bx bx-globe fs-2 dark-cyan pt-1'></i>
               <div class="p-1 ps-2">
               <h4>Website</h4>
               <small>${website}</small>
               </div>
            </div>
            </div>
        </div>
        <div class="col-8 pe-0">
		      <div class="border rounded-3 mb-3 px-3" id="post1">
		        <div class="d-flex align-items-center gap-2 py-3">
		          <span class="px-3 py-2 rounded-circle border bg-color text-white">${f}</span>
		          <a href="" class="text-decoration-none fs-5 text-black">${fullName}</a>
		          <small class="ms-auto">3 minutes ago</small>
		        </div>
		
		        <!-- Content -->
		        <div class="ms-5">
		          <p class="fs-6">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. 
		          Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. 
		          Sociis natoque penatibus et magnis dis parturient montes, nascetur	</p>
		        </div>
		
		        <div class="d-flex align-items-center gap-2 py-3 ms-5">
		          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-like dark-cyan'></i></a>
		          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bx-message-square-dots dark-cyan'></i></a>
		          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bx-share-alt dark-cyan'></i></a>
		        </div>
		     </div>
        </div>
    </div>

</div>
<script>
const followBtn = document.querySelector("#follow");
followBtn.addEventListener("click", () => {
	if(followBtn.innerHTML == "Follow") {
		followBtn.classList.remove("btn-success");
		followBtn.classList.add("btn-outline-success");
		followBtn.innerHTML = "Unfollow";
	} else {
		followBtn.classList.add("btn-success");
		followBtn.classList.remove("btn-outline-success");
		followBtn.innerHTML = "Follow";
	}
});
</script>
<jsp:include page="../../footer.jsp"></jsp:include>