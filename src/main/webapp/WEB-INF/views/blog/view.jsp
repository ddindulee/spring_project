
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
<div class="container py-4">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Offcanvas navbar large">
        <div class="container-fluid">
            <a class="ps-3 navbar-brand">Title: ${blog.title}</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Offcanvas</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" >Writer: ${blog.name}</a>
                        </li>

                    </ul>
                    <form class="d-flex mt-3 mt-lg-0" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>

    <div class="p-5 mb-4 bg-body-tertiary rounded-3 h-50">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">제목 들어갈 자리: ${blog.title}</h1>
            <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in
                previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to
                your liking.</p>
            <button class="btn btn-primary btn-lg" type="button">Example button</button>
        </div>
    </div>


    <jsp:include page="/WEB-INF/views/fragments/footer.jsp"/>
</div>
</body>
</html>
