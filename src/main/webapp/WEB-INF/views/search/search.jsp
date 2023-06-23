<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle"/>
</jsp:include>
<div class="container col-md-6 col-xs-9"> 
    <form action="" method="get" class="mb-4 text-center">
    	<h1 class="color">Search</h1>
    	<input type="text" class="form-control" name="s" placeholder="Press Enter to search" value="<%= request.getParameter("s") != null ? request.getParameter("s") : "" %>"> 
    </form>

    <div>
    	<h1 class="text-center">${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
		       <div class="col-2 border-none text-center fs-1 d-flex align-items-center justify-content-center me-2">
		       	<img class="border border-2"src="${pageContext.request.contextPath}/images/avatar.png" alt="avatar" style="height:120px;">  
	       	   </div>
	           <div>
	           	<h2>${s.getFirstName()} ${s.getLastName()}</h2>
	           	<p>${s.getTitle()}</p>
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="button px-3 p-2 small ms-auto">View Profile</button> 
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>