<%@ page language="java" contentType="text/html" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Teacher Page</title>
    </head>

    <body>

        <%-- <%=(session.getAttribute("Student")==null) ? request.getRequestDispatcher("/home.jsp").forward(request,
            response)%> --%>

            <% if(session.getAttribute("Teacher")==null){ %>
                <h1>ERROR!</h1>
                Hi There, you try to voilate the rule... <br>
                Please go to <a href="/CMS/home.jsp">home page</a>
                <%}else {%>
                    <!-- NavrBar -->
                    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"><b>RD-Thought's</b></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" role="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Check Out
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">School</a></li>
                                            <li><a class="dropdown-item" href="#">College</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">University</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact Us</a>
                                    </li>
                                </ul>
                                <form class="d-flex" role="search">
                                    <input class="form-control me-2" type="search" placeholder="Search"
                                        aria-label="Search">
                                    <button class="btn btn-outline-success" type="submit">Search</button>
                                    <button type="button" class="btn btn-danger mx-2" data-bs-toggle="modal"
                                        data-bs-target="#loginModal">
                                        Login
                                    </button>
                                    <button type="button" class="btn btn-danger " data-bs-toggle="modal"
                                        data-bs-target="#signupModal">
                                        SignUp
                                    </button>
                                </form>
                            </div>
                        </div>
                    </nav>
                    <center>
                        <h2>Teacher Home</h2>
                    </center>
                    Welcome <%= request.getAttribute("email") %>

                        <div>
                            <form action="logout">
                                Rayan: <input type="text">
                                Btn: <input type="submit" class="btn btn-danger" value="Log out">
                            </form>
                        </div>

                        <%} %>

    </body>

    </html>