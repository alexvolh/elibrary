<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li class="menu"><a href="<spring:url value="/books/all"/>">All books</a></li>
<li class="menu"><a href="<spring:url value="/books/search"/>">Search</a></li>
<li class="menu"><a href="<spring:url value="/newuser"/>">Create account</a></li>
<li class="menu"><a href="<spring:url value="/login"/>">
    <c:choose>
        <c:when test="${empty pageContext.request.userPrincipal}">
            Sign-in
        </c:when>
        <c:otherwise>
            Sign-out
        </c:otherwise>
    </c:choose>
</a></li>
