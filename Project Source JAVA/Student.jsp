<%@ page language="java" contentType="text/html" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Page</title>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
            integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
            crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>

    <body>

        <%-- <%=(session.getAttribute("Student")==null) ? request.getRequestDispatcher("/home.jsp").forward(request,
            response)%> --%>

            <% if(session.getAttribute("Student")==null){ %>
                <h1>ERROR!</h1>
                Hi There, you try to voilate the rule... <br>
                Please go to <a href="/CMS/home.jsp">home page</a>
                <%}else {%>
                    <!-- NavrBar -->
                    <nav class="navbar navbar-expand-md bg-dark sticky-top border-bottom" data-bs-theme="dark">
                        <div class="container">
                            <a class="navbar-brand d-md-none" href="#">
                                <svg class="bi" width="24" height="24">
                                    <use xlink:href="#aperture"></use>
                                </svg>
                                Aperture
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                                data-bs-target="#offcanvas" aria-controls="#offcanvas" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="offcanvas offcanvas-end" tabindex="-1" id="#offcanvas"
                                aria-labelledby="#offcanvasLabel">
                                <div class="offcanvas-header">
                                    <h5 class="offcanvas-title" id="#offcanvasLabel">Aperture</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                        aria-label="Close"></button>
                                </div>
                                <div class="offcanvas-body">
                                    <ul class="navbar-nav flex-grow-1 justify-content-between">
                                        <li class="nav-item"><a class="nav-link" href="#">
                                                <svg class="bi" width="24" height="24">
                                                    <use xlink:href="#aperture"></use>
                                                </svg>
                                            </a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Tour</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Product</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Features</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Enterprise</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Support</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">
                                                <svg class="bi" width="24" height="24">
                                                    <use xlink:href="#cart"></use>
                                                </svg>
                                            </a></li>
                                        <div class="my-1">
                                            <form action="logout">
                                                <!-- Rayan: <input type="text"> -->
                                                <input type="submit" class="btn btn-danger" value="Log out">
                                            </form>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>

                    <!-- body -->
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <h1 style="text-align: center;">Welcome Student</h1>
                            <div class="carousel-item active">
                                <img src="student1.jpg" class="d-block w-100" alt="...">
                            </div>
                        </div>
                    </div>


                    <div class="container my-2">
                        <div class="card-group">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course1")%></h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This content is a little bit longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course2")%></h5>
                                    <p class="card-text">This card has supporting text below as a natural lead-in to
                                        additional content.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course3")%></h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This card has even longer content than the first
                                        to show that equal height action.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container my-2">
                        <div class="card-group">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course4")%></h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This content is a little bit longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course5")%></h5>
                                    <p class="card-text">This card has supporting text below as a natural lead-in to
                                        additional content.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%= request.getAttribute("course6")%></h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural
                                        lead-in to additional content. This card has even longer content than the first
                                        to show that equal height action.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <center>
                        <h2>Student Home END!</h2>
                    </center>
                    Welcome <%= request.getAttribute("email") %> AND <%= request.getAttribute("sem") %> ITER AND 
                    <%= request.getAttribute("iter") %> 


                            <div>
                                <form action="logout">
                                    Rayan: <input type="text">
                                    Btn: <input type="submit" class="btn btn-danger" value="Log out">
                                </form>
                            </div>

                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                                crossorigin="anonymous"></script>

                            <%} %>

    </body>

    </html>