<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
<body>
<jsp:include page="headerweb.jsp"></jsp:include>
  <!-- Start Categories of The Month -->
      <div class="container">
        <div class="main-body">
          <nav aria-label="breadcrumb" class="main-breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                          <li class="breadcrumb-item"><a href="showuseradmin?email=${sessionScope.acc.email}&pass=${sessionScope.acc.password}">User</a></li>
                  <li class="breadcrumb-item active" aria-current=""><a href="showeditproflieadmin?email=${user.email}&pass=${user.password}">edit User</a></li>
                </ol>
              </nav>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body" style="border: 1px solid black;">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img src="${user.image}" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
                                <div class="mt-3">
                                    <h4>${user.userName}</h4>
                                    <p class="text-secondary mb-1">Full Stack Developer</p>
                                    <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                                    <button class="btn btn-primary">Follow</button>
                                    <button class="btn btn-outline-primary">Message</button>
                                </div>
                            </div>
                            <hr class="my-4">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe me-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                                    <span class="text-secondary">https://bootdey.com</span>
                                </li>
                              
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="card">
                    <form action="savechangemyprofile" method="post" enctype="multipart/form-data">
                    
                   
                        <div class="card-body" style="border: 1px solid black;">
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0"  style="color: black;">Full Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                  <input name="iduser" hidden value="${user.iduser}" type="text" class="form-control" value="John Doe">
                                    <input name="username" value="${user.userName}" type="text" class="form-control" value="John Doe">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0"  style="color: black;">Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input name="email" value="${user.email}" type="text" class="form-control" value="john@example.com">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0"  style="color: black;">Phone</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input name="phone" value="${user.phone}" type="text" class="form-control" value="(239) 816-9029">
                                </div>
                            </div>
                           
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0"  style="color: black;">Address</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input name="address" value="${user.address}" type="text" class="form-control" value="Bay Area, San Francisco, CA">
                                </div>
                            </div>
                              <div class="row mb-3">
                               <fieldset id="fs1">
                  <input id="gender" name="gender" type="radio" value="nam"  placeholder="gender" required autofocus=""><label>Nam</label>
                  <input name="gender" type="radio" value="Nu"  placeholder="gender" required autofocus=""><label>Nữ</label>
                 </fieldset>
                              </div>
                             
                                <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0"  style="color: black;">image</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input name="image"  type="file" class="form-control" value="Bay Area, San Francisco, CA">
                                    <input name="imageold" value="${user.image}" hidden type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="submit" class="btn btn-primary px-4" value="Save Changes">
                                </div>
                            </div>
                        </div>
                         </form>
                    </div>
                  
                </div>
            </div>
        </div>
    </div>
    <!-- End Featured Product -->
    <jsp:include page="footerweb.jsp"></jsp:include>
        <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>
 
</html>