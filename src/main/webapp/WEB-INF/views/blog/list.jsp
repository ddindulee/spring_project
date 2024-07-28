<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2024-07-24
  Time: AM 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>게시판</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap');
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/fragments/header.jsp"/>
<div class="container">
    <div class="row mb-2">
        <div class="row">
            <div class="">
                <article class="blog-post">
                    <h2 class="display-5 link-body-emphasis mb-1">내가 작성한 글 목록</h2>

                    <%-- 블로그 글 올리는 표 부분 --%>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>글제목</th>
                            <th>작성자</th>
                            <th>작성일자</th>
                        </tr>
                        <c:forEach items="${list}" var="board">
                            <tr>
                                <td><c:out value="${board.no}"/></td>
                                <td><c:out value="${board.title}"/></td>
                                <td><c:out value="${board.writer}"/></td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                            </tr>
                        </c:forEach>
                        </thead>


                    </table>
                </article>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/fragments/footer.jsp"/>

</body>
</html>
