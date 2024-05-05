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

        <%-- <%=(session.getAttribute("Admin")==null) ? request.getRequestDispatcher("/home.jsp").forward(request,
            response)%> --%>

            <% if(session.getAttribute("Admin")==null){ %>
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
                    <main style="background-color: black;">
                        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-body-dark">
                            <div class="col-md-6 p-lg-5 mx-auto my-5">
                                <h1 class="display-3 fw-bold" style="color:white">Welcome to Admin World!</h1>
                                <h3 class="fw-normal" style="color:red">Build anything you want with Aperture</h3>
                                <div class="d-flex gap-3 justify-content-center lead fw-normal">
                                    <a class="icon-link" href="#">
                                        Learn more
                                        <!-- <img src="image1.jpg" alt=""> -->
                                    </a>
                                    <a class="icon-link" href="#">
                                        Buy
                                        <svg class="bi">
                                            <use xlink:href="#chevron-right"></use>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="product-device shadow-sm d-none d-md-block"></div>
                            <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
                        </div>

                        <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                            <div class="text-bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 py-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body-tertiary shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 p-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-dark shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                        </div>

                        <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 p-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-dark shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                            <div class="text-bg-primary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 py-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body-tertiary shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                        </div>

                        <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 p-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 py-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                        </div>

                        <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 p-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                            <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                                <div class="my-3 py-3">
                                    <h2 class="display-5">Another headline</h2>
                                    <p class="lead">And an even wittier subheading.</p>
                                </div>
                                <div class="bg-body shadow-sm mx-auto"
                                    style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                            </div>
                        </div>
                    </main>
                    <hr>
                    <!-- Admin Form -->
                    <h1 style="text-align: center; color:red;">Welcome Sir!<br></h1>
                    <h4 style="text-align:center">Your Email is: <%= request.getAttribute("email") %>
                    </h4>
                    <hr>
                    <hr>
                    <div class="container">
                        <form action="course" method="post">
                            <h2>Add Teacher to course</h2>
                            <h6 style="color:blue"><%= (request.getAttribute("msg")==null) ? "" :
                            request.getAttribute("msg") %></h6>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Course ID:</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="course_id">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" name="email_id">
                                <div id="emailHelp" class="form-text">We'll never share this email with anyone else.
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Add">
                        </form>
                    </div>

                    <center>
                        <h2>Admin Home End!</h2>
                    </center>



                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                        crossorigin="anonymous"></script>

                    <%} %>

    </body>

    </html>