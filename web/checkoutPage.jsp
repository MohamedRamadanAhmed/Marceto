<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
?<!doctype html>
<html class="no-js " lang="en">

<!-- Mirrored from www.wrraptheme.com/templates/compass/html/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 13:16:18 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Compass Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/color_skins.css">
</head>
<body class="theme-cyan">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="assets/images/logo.svg" width="48" height="48" alt="Compass"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<!-- Top Bar -->
<nav class="navbar">
    <div class="col-12">        
        <div class="navbar-header">
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="index.html"><img src="assets/images/logo.svg" width="30" alt="Compass"><span class="m-l-10">Compass</span></a>
        </div>
        
    
    </div>
</nav>





<section class="content">
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Check Out
                    <small>Taken from <a href="https://jqueryvalidation.org/" target="_blank">jqueryvalidation.org</a></small>
                </h2>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
                <ul class="breadcrumb float-md-right">
                    <li class="breadcrumb-item"><a href="index.html"><i class="zmdi zmdi-home"></i> Compass</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
                    <li class="breadcrumb-item active">Check Out</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid">
       
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <div class="header">
                        <h2><strong>Total Price </strong>${param.total}  L.E</h2>
                    </div>
                        <c:if test="${requestScope.statues==0}">
                            <h1>balanc no enought</h1>
                        </c:if>
                            <c:if test="${requestScope.statues==-1}">
                            <h1>card not found</h1>
                        </c:if>
                    <div class="body">
                        <form id="form_advanced_validation" action="${pageContext.request.contextPath}/PaymentController?total=${param.total}" method="POST">
                            <div class="form-group form-float">
                                 <div class="help-info"><h5>Name</h5></div>
                                <input type="text" class="form-control" name="name" required>                                
                               
                            </div>
                            <div class="form-group form-float">
                             <div class="help-info"><h5>Address</h5></div>

                                <input type="text" class="form-control" name="address" required>                                
                            </div>
                            <div class="form-group form-float">
                                <div class="help-info"><h5>Card Number</h5></div>
                                <input type="text" class="form-control" name="cardNumber" required>                                
                                
                            </div>
                            
                            <button class="btn btn-raised btn-primary btn-round waves-effect" type="submit">SUBMIT</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</section>

<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="assets/plugins/jquery-validation/jquery.validate.js"></script> <!-- Jquery Validation Plugin Css --> 
<script src="assets/plugins/jquery-steps/jquery.steps.js"></script> <!-- JQuery Steps Plugin Js --> 

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="assets/js/pages/forms/form-validation.js"></script> 
</body>

<!-- Mirrored from www.wrraptheme.com/templates/compass/html/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 13:16:41 GMT -->
</html>