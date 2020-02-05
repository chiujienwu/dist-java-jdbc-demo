<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Attributes</title>
</head>
<body>
<p>
    <%= request.getAttribute("myCity") %>
    <%
        String[] zipCodes = (String[])request.getAttribute("zips");
        for(int i = 0; i < zipCodes.length; i++)
        {
            String zipCode = zipCodes[i];
            out.println(zipCode);
        }

        for(String zipCode : zipCodes) {
            out.println(zipCode);
        }
    %>

    <c:forEach var="zipCode" items="${zips}">
        <p>${zipCode}</p>

    </c:forEach>
</p>
</body>
</html>
