<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Deep Pocket - Community</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/bootstrap/css/list.css" rel="stylesheet" />
<script>

</script>
</head>
<body>
<%--<c:if test="${sessionScope.id != writer.id }">--%>
<%--    <c:set var="readAttr">readonly</c:set> <!-- 변수 선언 태그 -->--%>
<%--</c:if>--%>








<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-lg-5">
        <a class="navbar-brand" href="/">Deep Pocket</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="/board/add">글작성</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content-->

<section class="pt-4">
    <div class="container px-lg-5">
        <!-- Page Features-->
        <div class="row gx-lg-5">
            <c:forEach var="b" items="${list}">
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card bg-light border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                        <p class="mb-0">${b.writer.id}</p>
                        <p class="mb-0">${b.content}</p>
                        <p class="mb-0">${b.hash}</p>
                        <c:if test="${b.img1!=null}">
                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                        </c:if>

                    </div>
                </div>
            </div>
            </c:forEach>
<%--            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                <div class="card bg-light border-0 h-100">--%>
<%--                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-cloud-download"></i></div>--%>
<%--                        <h2 class="fs-4 fw-bold">Free to download</h2>--%>
<%--                        <p class="mb-0">As always, Start Bootstrap has a powerful collectin of free templates.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                <div class="card bg-light border-0 h-100">--%>
<%--                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-card-heading"></i></div>--%>
<%--                        <h2 class="fs-4 fw-bold">Jumbotron hero header</h2>--%>
<%--                        <p class="mb-0">The heroic part of this template is the jumbotron hero header!</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                <div class="card bg-light border-0 h-100">--%>
<%--                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-bootstrap"></i></div>--%>
<%--                        <h2 class="fs-4 fw-bold">Feature boxes</h2>--%>
<%--                        <p class="mb-0">We've created some custom feature boxes using Bootstrap icons!</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                <div class="card bg-light border-0 h-100">--%>
<%--                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-code"></i></div>--%>
<%--                        <h2 class="fs-4 fw-bold">Simple clean code</h2>--%>
<%--                        <p class="mb-0">We keep our dependencies up to date and squash bugs as they come!</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                <div class="card bg-light border-0 h-100">--%>
<%--                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>--%>
<%--                        <h2 class="fs-4 fw-bold">A name you trust</h2>--%>
<%--                        <p class="mb-0">Start Bootstrap has been the leader in free Bootstrap templates since 2013!</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

</body>
</html>