<nav class="navbar navbar-expand-lg d-flex flex-column align-items-center w-100 pb-0 
<%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "position-absolute" : "mb-5 shadow-sm border" %>" style="z-index: 1000;">

<!-- Top Navigation -->
<div class="container">
<!--   ABC Jobs Logo -->
    <a class="navbar-brand fs-3 fw-bold text-white
    	<%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-white" %>" href="">
    	<img class="img-fluid pe-2 " src="${pageContext.request.contextPath}/images/logo.png" alt="ABC Jobs Logo" style="height:55px;">
    	<span>ABC</span> Jobs
    </a>
<!--   Search Bar -->
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbar">
       <form action="<%= request.getContextPath() %>/search" method="get" class="w-75">  
       		<input type="text" class="form-control" placeholder="Press Enter to search" name="s" autocomplete="off" data-bs-toggle="popover" data-bs-trigger="focus">
       </form>
    </div>
<!--   Log In & Log Out -->
    <div class="ms-auto d-flex gap-3">
	    <% if( (Boolean) session.getAttribute("isLogin") != null) { %>
	      <a href="<%= request.getContextPath() %>/logout" class="button2 small px-5 p-2 ms-auto">Logout</a>
	    <% } else { %>
	      <a href="<%= request.getContextPath() %>/login" class="button2 px-5 p-2 small ms-auto <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "d-none" : "" %>">Login</a>
	      <a href="<%= request.getContextPath() %>/registration" class="button2 px-5 p-2 small ms-auto <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "d-none" : "" %>">Register</a>
	    <% } %>
    </div>
</div>

<!-- Bottom Navigation -->
<div class="container pt-2 px-0 mt-2 mb-0"> 
	<ul class="navbar-nav d-flex justify-content-center gap-1">
<!--  	Home  	-->
	<li class="nav-item" >
	  <% if( (Boolean) session.getAttribute("isLogin") != null) { %>
		<a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/dashboard/index.jsp") ? "text-dark border-start border-end border-2 border-dark" : "text-white" %>" 
			href="<%= request.getContextPath() %>/dashboard"><i class='bx bxs-home'></i> Home</a>
	  <% } else { %>
		<a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-dark border-start border-end border-2 border-dark" : "text-white" %>" 
			href="<%= request.getContextPath() %>/home"><i class='bx bxs-home'></i> Home</a> 
	  <% } %> 
	</li>
<!--     Search    -->
    <li class="nav-item">
      <a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/search/search.jsp") ? "text-dark border-start border-end border-2 border-dark" : 
      	request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-white" %>" href="<%= request.getContextPath() %>/search">
      	<i class='bx bx-search'></i> Search</a>
    </li>
<!--     Notifications  -->
    <% if((Boolean) session.getAttribute("isLogin") != null) { %>
      <li class="nav-item">
        <a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/dashboard/profile.jsp") ? "text-white" : 
      	  request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-white" %>" href="<%= request.getContextPath() %>/dashboard">
      	  <i class='bx bxs-bell'></i> Notifications</a>
      </li>
    <% } %> 
<!--     Profile  -->
	<% if((Boolean) session.getAttribute("isLogin") != null) { %>
       <li class="nav-item">
         <a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/dashboard/profile.jsp") ? "text-dark border-start border-end border-2 border-dark" : 
       	  request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-white" %>" href="<%= request.getContextPath() %>/profile">
       	  <i class='bx bxs-user'></i> Profile</a>
       </li>
    <% } %>    
<!--      Administrator -->
    <% if((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) { %>
       <li class="nav-item">
         <a class="nav-link fw-semibold <%= request.getServletPath().equals("/WEB-INF/views/administrator/index.jsp") || 
         request.getServletPath().equals("/WEB-INF/views/administrator/all-users.jsp") || request.getServletPath().equals("/WEB-INF/views/administrator/send-bulk.jsp")
         ? "text-dark border-start border-end border-2 border-dark" : request.getServletPath().equals("/WEB-INF/views/index.jsp") 
       		  ? "text-white" : "text-white" %>" href="<%= request.getContextPath() %>/admin"><i class='bx bxs-cog' ></i> Administrator</a>
       </li> 
    <% } %>
    </ul>
</div>
</nav>
