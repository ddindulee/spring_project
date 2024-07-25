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
    <title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap');
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/fragments/header.jsp"/>
<div class="container">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <h3 class="mb-0">최신글</h3>
                    <div class="mb-1 text-body-secondary">날짜 들어갈 자리</div>
                    <p class="card-text mb-auto">블로그 제목 들어갈 자리</p>
                    <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                        전체 보기
                        <svg class="bi">
                            <use xlink:href="#chevron-right"></use>
                        </svg>
                    </a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                         focusable="false"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c"></rect>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
                    </svg>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <h3 class="mb-0">내가 쓴 최신 글</h3>
                    <div class="mb-1 text-body-secondary">날짜 들어갈 자리</div>
                    <p class="card-text mb-auto">블로그 제목 들어갈 자리</p>
                    <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                        전체 보기
                        <svg class="bi">
                            <use xlink:href="#chevron-right"></use>
                        </svg>
                    </a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                         focusable="false"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c"></rect>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
                    </svg>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="">
                <article class="blog-post">
                    <h2 class="display-5 link-body-emphasis mb-1">Another blog post</h2>

                    <%-- 블로그 글 올리는 표 부분 --%>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>글제목</th>
                            <th>작성자</th>
                            <th>작성일자</th>
                        </tr>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Alice</td>
                            <td>10</td>
                            <td>11</td>
                            <td>11</td>
                        </tr>
                        <tr>
                            <td>Bob</td>
                            <td>4</td>
                            <td>3</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>Charlie</td>
                            <td>7</td>
                            <td>9</td>
                            <td>9</td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td>Totals</td>
                            <td>21</td>
                            <td>23</td>
                            <td>23</td>
                        </tr>
                        </tfoot>
                    </table>
                </article>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/fragments/footer.jsp"/>

</body>
</html>
