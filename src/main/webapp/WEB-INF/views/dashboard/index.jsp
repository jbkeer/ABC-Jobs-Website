<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Dashboard" name="HTMLtitle" />
</jsp:include>
 
<div class="container">
<div class="row">
	<div class="col-3">
	<div class="d-flex flex-column border rounded-3 pb-4">
	   <a href="profile" class="text-decoration-none">
		   <div class="border p-0 rounded-top border-1">
	       <div class="fs-1 d-flex align-items-center justify-content-center bg-color text-white" style="height: 20vh;">
	       <span>${f}${l}</span>
	       </div>
		   </div>
	   </a>
	   <div class="px-4 py-3 text-center">
		   <h2>${fullName}</h2>
		   <p>${title}</p>
	   </div>
	</div>
	</div>

  <!-- Create a Post -->
	<div class="col-6">
	<div class="border rounded-3 mb-3 px-3" id="post1">
	    <div class="d-flex align-items-center gap-2 py-3">
	    <span class="px-3 py-2 rounded-circle border bg-color text-white">
     	<span>${f}</span>
	    </span>
	    <input class="rounded border-0 w-100" placeholder="Create a post"></input>
	    </div>
	
	    <!-- Content -->
	    <div class="d-flex align-items-center gap-2 py-3 ms-5">
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-image dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-video dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-briefcase dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-news dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 button p-1 px-5 small ms-auto">Post</a>
	    </div>
	</div>
	  
	<div class="border rounded-3 mb-3 px-3" id="post1">
		<div class="d-flex align-items-center gap-2 py-3">
	    <span class="px-3 py-2 rounded-circle border bg-color text-white">M</span>
	    <a href="" class="text-decoration-none fs-5 text-black">Momo</a>
	    <small class="ms-auto">3 minutes ago</small>
		</div>
	
		<!-- Content -->
		<div class="ms-5">
	    <p class="fs-6">ABC Jobs Welcoming! Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
	    Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo 
	    commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient 
	    montes, nascetur</p>
		</div>
	
		<div class="d-flex align-items-center gap-2 py-3 ms-5">
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bxs-like dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bx-message-square-dots dark-cyan'></i></a>
	    <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary"><i class='bx bx-share-alt dark-cyan'></i></a>
		</div>
	</div>
	</div>

  <!-- Notification & Email-->
  	<div class="col-3">
    <div class="py-3 px-4 rounded-3 border">
		<p class="color text-center">Check your email</p>
      <div class="border-bottom mb-3"><h4 class="fs-4">${nf1.getEmailSubject()}</h4></div>
      <div class="border-bottom mb-3"><h4 class="fs-4">${nf2.getEmailSubject()}</h4></div>
      <div class="border-bottom mb-3"><h4 class="fs-4">${nf3.getEmailSubject()}</h4></div>
      <div class="text-center"><a href="" class="button p-2 px-5 small">See all notifications</a></div>
    </div>
    <div class="py-3 px-4 rounded-3 border mt-2">
    	<p class="color text-center fw-bold">Recommended</p>
   		<div class="row">
   			<div class="col-4"><img class="border border-2 img-fluid"src="${pageContext.request.contextPath}/images/avatar.png" alt="avatar"></div>
			<div class="col-8 ps-2"><b>Jon Snow</b><br><a href="" class="button p-1 px-4 small mt-1 ">Follow</a></div> 
   		</div>
   		<br>
   		<div class="row">
   			<div class="col-4"><img class="border border-2 img-fluid"src="${pageContext.request.contextPath}/images/avatar.png" alt="avatar"></div>
			<div class="col-8 ps-2"><b>Kim Dahyun</b><br><a href="" class="button p-1 px-4 small mt-1">Follow</a></div> 
   		</div> 
    </div>   
  	</div>
</div>
</div>


<jsp:include page="../../footer.jsp"></jsp:include>