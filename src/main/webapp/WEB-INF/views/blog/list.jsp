<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap');
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/fragments/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="">
            <article class="blog-post">
                <h2 class="display-5 link-body-emphasis mb-1">Blog post</h2>


                <table class="table">
                    <thead>
                    <tr>
                        <th>글번호</th>
                        <th>글제목</th>
                        <th>작성자</th>
                        <th>작성일자</th>
                    </tr>

                    </thead>
                    <tbody>
                    <c:forEach items="${blogs}" var="blog">
                    <tr>
                        <td>${blog.no}</td>
                        <td><a href='${pageContext.request.contextPath}/blog/view?no=${blog.no}'>${blog.title}</a></td>
                        <td>${blog.writer}</td>
                        <td>${blog.registerDate}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </article>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/fragments/footer.jsp"/>
</body>
</html>
