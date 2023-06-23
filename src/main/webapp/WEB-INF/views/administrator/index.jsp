<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin Dashboard" name="HTMLtitle" />
</jsp:include>

<div class="container text-center mt-5">
  <h1 class="color">You are logged in as Administrator, ${adminName}.</h1> <br> <br> <br>
  <a href="admin/send-bulk" class="button px-3 p-2 small">Send bulk email</a>
  <a href="admin/all-users" class="button px-3 p-2 small">Show all users</a>
</div>

<jsp:include page="../../footer.jsp"></jsp:include> 