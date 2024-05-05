<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
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
    <!-- NavrBar -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><b>RD-Thought's</b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
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
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
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
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    <button type="button" class="btn btn-danger mx-2" data-bs-toggle="modal"
                        data-bs-target="#loginModal">
                        Login
                    </button>
                    <button type="button" class="btn btn-danger " data-bs-toggle="modal" data-bs-target="#signupModal">
                        SignUp
                    </button>
                </form>
            </div>
        </div>
    </nav>

    <% if(request.getAttribute("errMsg")==null && request.getAttribute("status")==null){ %>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Hey!</strong>
            Welcome to RD-Thoughts
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%}else if(request.getAttribute("errMsg")!=null && request.getAttribute("status")==null){%>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Hey! <%= request.getAttribute("errMsg") %> </strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%}else {%>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Hey! <%= request.getAttribute("errMsg") %> </strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%} %>

                    <!-- Slider -->
                    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="image1.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h1 style="color:black; font-size: 75px;">RD-Thought's World!</h1>
                                    <p style="color:red;"">Some representative placeholder content for the first slide.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="image2.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Second slide label</h5>
                                    <p>Some representative placeholder content for the second slide.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="image3.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Third slide label</h5>
                                    <p>Some representative placeholder content for the third slide.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>


                    <%-- <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Hey!</strong>
                        <%= (request.getAttribute("errMsg")==null) ? "Welcome to RD-Thoughts" :
                            request.getAttribute("errMsg") %>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div> --%>




                            <!-- Modal -->
                            <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-fullscreen-sm-down">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="loginModalLabel">Sign In Page</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="login" method="post">
                                                <div class="row mb-3">
                                                    <label for="inputEmail3"
                                                        class="col-sm-2 col-form-label">Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="inputEmail3"
                                                            name="email" required>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label for="inputPassword3"
                                                        class="col-sm-2 col-form-label">Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="inputPassword3"
                                                            name="password" required>
                                                    </div>
                                                </div>
                                                <input type="submit" class="btn btn-success" value="Sign in">
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-fullscreen">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="SignupModalLabel">Sign Up Form</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <!-- Form -->
                                            <div class="cotainer mx-5 my-5">
                                                <form class="row g-3" action="signup" method="POST">
                                                    <div class="col-md-6">
                                                        <label for="inputEmail4" class="form-label">Email</label>
                                                        <input type="email" class="form-control" id="inputEmail4"
                                                            name="em" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputPassword4" class="form-label">Password</label>
                                                        <input type="password" class="form-control" id="inputPassword4"
                                                            name="pass" required>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="inputAddress" class="form-label">Name</label>
                                                        <input type="text" class="form-control" id="inputAddress"
                                                            placeholder="enter your name" name="name" required>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="inputAddress2" class="form-label">Date of
                                                            Birth</label>
                                                        <input type="date" class="form-control" id="inputAddress2"
                                                            name="dob">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputCity" class="form-label">Semester</label>
                                                        <input type="text" class="form-control" id="inputCity"
                                                            name="sem">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputCity" class="form-label">Phone No.</label>
                                                        <input type="phone" class="form-control" id="inputCity"
                                                            name="phone" required>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="inputState" class="form-label">User Type</label>
                                                        <select id="inputState" class="form-select" name="user"
                                                            required>
                                                            <option selected>Choose...</option>
                                                            <option name="user">Student</option>
                                                            <option name="user">Teacher</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-12">
                                                        <input type="submit" class="btn btn-success" value="Sign Up">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- card -->
                            <div class="container my-4">
                                <div class="container py-3">
                                    <header>
                                      <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
                                        <a href="/" class="d-flex align-items-center link-body-emphasis text-decoration-none">
                                          <img src="icon1.png" alt="" style="height: 50px;width:50px;">&nbsp
                                          <span class="fs-4">Pricing example</span>
                                        </a>
                                  
                                        <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
                                          <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="#">Features</a>
                                          <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="#">Enterprise</a>
                                          <a class="me-3 py-2 link-body-emphasis text-decoration-none" href="#">Support</a>
                                          <a class="py-2 link-body-emphasis text-decoration-none" href="#">Pricing</a>
                                        </nav>
                                      </div>
                                  
                                      <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
                                        <h1 class="display-4 fw-normal text-body-emphasis">Pricing</h1>
                                        <p class="fs-5 text-body-secondary">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p>
                                      </div>
                                    </header>
                                  
                                    <main>
                                      <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                                        <div class="col">
                                          <div class="card mb-4 rounded-3 shadow-sm">
                                            <div class="card-header py-3">
                                              <h4 class="my-0 fw-normal">Free</h4>
                                            </div>
                                            <div class="card-body">
                                              <h1 class="card-title pricing-card-title">$0<small class="text-body-secondary fw-light">/mo</small></h1>
                                              <ul class="list-unstyled mt-3 mb-4">
                                                <li>10 users included</li>
                                                <li>2 GB of storage</li>
                                                <li>Email support</li>
                                                <li>Help center access</li>
                                              </ul>
                                              <button type="button" class="w-100 btn btn-lg btn-outline-primary">Sign up for free</button>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="col">
                                          <div class="card mb-4 rounded-3 shadow-sm">
                                            <div class="card-header py-3">
                                              <h4 class="my-0 fw-normal">Pro</h4>
                                            </div>
                                            <div class="card-body">
                                              <h1 class="card-title pricing-card-title">$15<small class="text-body-secondary fw-light">/mo</small></h1>
                                              <ul class="list-unstyled mt-3 mb-4">
                                                <li>20 users included</li>
                                                <li>10 GB of storage</li>
                                                <li>Priority email support</li>
                                                <li>Help center access</li>
                                              </ul>
                                              <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="col">
                                          <div class="card mb-4 rounded-3 shadow-sm border-primary">
                                            <div class="card-header py-3 text-bg-primary border-primary">
                                              <h4 class="my-0 fw-normal">Enterprise</h4>
                                            </div>
                                            <div class="card-body">
                                              <h1 class="card-title pricing-card-title">$29<small class="text-body-secondary fw-light">/mo</small></h1>
                                              <ul class="list-unstyled mt-3 mb-4">
                                                <li>30 users included</li>
                                                <li>15 GB of storage</li>
                                                <li>Phone and email support</li>
                                                <li>Help center access</li>
                                              </ul>
                                              <button type="button" class="w-100 btn btn-lg btn-primary">Contact us</button>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                  
                                      <h2 class="display-6 text-center mb-4">Compare plans</h2>
                                  
                                      <div class="table-responsive">
                                        <table class="table text-center">
                                          <thead>
                                            <tr>
                                              <th style="width: 34%;"></th>
                                              <th style="width: 22%;">Free</th>
                                              <th style="width: 22%;">Pro</th>
                                              <th style="width: 22%;">Enterprise</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            <tr>
                                              <th scope="row" class="text-start">Public</th>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                            <tr>
                                              <th scope="row" class="text-start">Private</th>
                                              <td></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                          </tbody>
                                  
                                          <tbody>
                                            <tr>
                                              <th scope="row" class="text-start">Permissions</th>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                            <tr>
                                              <th scope="row" class="text-start">Sharing</th>
                                              <td></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                            <tr>
                                              <th scope="row" class="text-start">Unlimited members</th>
                                              <td></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                            <tr>
                                              <th scope="row" class="text-start">Extra security</th>
                                              <td></td>
                                              <td></td>
                                              <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </main>
                                  
                                    <footer class="pt-4 my-md-5 pt-md-5 border-top">
                                      <div class="row">
                                        <div class="col-12 col-md">
                                          <img class="mb-2" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="24" height="19">
                                          <small class="d-block mb-3 text-body-secondary">© 2017–2023</small>
                                        </div>
                                        <div class="col-6 col-md">
                                          <h5>Features</h5>
                                          <ul class="list-unstyled text-small">
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Cool stuff</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Random feature</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Team feature</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Stuff for developers</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Another one</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Last time</a></li>
                                          </ul>
                                        </div>
                                        <div class="col-6 col-md">
                                          <h5>Resources</h5>
                                          <ul class="list-unstyled text-small">
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Resource</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Resource name</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Another resource</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Final resource</a></li>
                                          </ul>
                                        </div>
                                        <div class="col-6 col-md">
                                          <h5>About</h5>
                                          <ul class="list-unstyled text-small">
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Team</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Locations</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Privacy</a></li>
                                            <li class="mb-1"><a class="link-secondary text-decoration-none" href="#">Terms</a></li>
                                          </ul>
                                        </div>
                                      </div>
                                    </footer>
                                  </div>
                            </div>




                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                                crossorigin="anonymous"></script>
</body>

</html>