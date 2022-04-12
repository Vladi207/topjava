<%--
  Created by IntelliJ IDEA.
  User: Владимир
  Date: 12.04.2022
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
  let i18n = [];
  <%-- user.add/user.edit or meal.add/meal.edit --%>
  i18n["addTitle"] = '<spring:message code="${param.page}.add"/>';
  i18n["editTitle"] = '<spring:message code="${param.page}.edit"/>';
  <c:forEach var='key' items='<%=new String[]{"common.deleted", "common.saved", "common.enabled", "common.disabled", "common.errorStatus", "common.confirm"}%>'>
  i18n['${key}'] = '<spring:message code="${key}"/>';
  </c:forEach>
</script>
