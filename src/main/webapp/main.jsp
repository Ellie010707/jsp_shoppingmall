<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Kuromi Shop</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="css/main_styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder"><span style="color: #FF69B4;">Kuromi</span> Shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">For all cute Kuromi items,</p>
                </div>
            </div>
        </header>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi1.png" alt="kuromi1" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Doll</h5>
                                    $30.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=1">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge text-white position-absolute" style="top: 0.5rem; right: 0.5rem; background-color: #FF69B4">Sale</div>
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi2.png" alt="kuromi2" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Pajamas</h5>
                                    <span class="text-muted text-decoration-line-through">$40.00</span>
                                    $38.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=2">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge text-white position-absolute" style="top: 0.5rem; right: 0.5rem; background-color: #FF69B4">Sale</div>
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi3.png" alt="kuromi3" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Fan</h5>
                                    <span class="text-muted text-decoration-line-through">$12.00</span>
                                    $10.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=3">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi4.png" alt="kuromi4" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Keyring</h5>
                                    $5.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=4">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        <div class="badge text-white position-absolute" style="top: 0.5rem; right: 0.5rem; background-color: #FF69B4">Sale</div>
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi5.png" alt="kuromi5" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                	
                                    <h5 class="fw-bolder">Kuromi Diary</h5>
                                    <span class="text-muted text-decoration-line-through">$16.00</span>
                                    $14.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=5">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi6.png" alt="kuromi6" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Phone Case</h5>
                                    $11.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=6">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        <div class="badge text-white position-absolute" style="top: 0.5rem; right: 0.5rem; background-color: #FF69B4">Sale</div>
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi7.png" alt="kuromi7" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Bag</h5>
                                    <span class="text-muted text-decoration-line-through">$58.00</span>
                                    $56.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=7">Show details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" style="width:100%; height:70%;" src="resources/kuromi8.png" alt="kuromi8" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Kuromi Sticker</h5>
                                    $5.00
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/ProductServlet?cmd=detail&no=8">Show details</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; <a href="https://github.com/Ellie010707">Ellie010707</a></p></div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
