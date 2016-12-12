<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 12/11/16
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="format" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Code Academic Security</title>
    <%--CSS Lib--%>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type='text/css' media="all"/>
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type='text/css' media="all"/>
    <link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet" type='text/css' media="all"/>
    <link href="<c:url value="/resources/css/swipebox.css"/>" rel="stylesheet" type='text/css' media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="/resources/js/jquery.min.js"/>" type="text/javascript"></script>
    <%--Another JS Lib--%>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/controls.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/jquery.filterizr.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/jquery.swipebox.min.js"/>" type="text/javascript"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!---->
</head>
<body>

<div class="header">
    <div class="container">
        <div class="head-top">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/index">
                    <img src="<c:url value="/resources/images/icon8.png" />" width="200" height="100" alt="" title="Code Academic">
                </a>
            </div>
            <div class="login">
                <ul class="nav-login">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><h4>Xin chào ${pageContext.request.userPrincipal.name} trở lại với <img src="<c:url value="/resources/images/close_tag.png"/>" width="25" height="25">Code Academic</h4></li>
                        <li><a href="${pageContext.request.contextPath}/logout" data-toggle="modal">Đăng xuất</a></li>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="#" data-toggle="modal" data-target="#myModal1">Đăng nhập</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#myModal2">Đăng ký</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- login -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">

                        <div class="login-right">
                            <form action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
                                <h3>Đăng nhập với tài khoản của bạn </h3>
                                <input type="text" value="Tên đăng nhập" name="username"
                                       onfocus="this.value = '';"
                                       onblur="if (this.value == '') {this.value = 'Tên đăng nhập';}"
                                       required="">
                                <input type="password" value="Mật khẩu" name="password"
                                       onfocus="this.value = '';"
                                       onblur="if (this.value == '') {this.value = 'Mật khẩu';}"
                                       required="">
                                <h4><a href="${pageContext.request.contextPath}/intro">Quên mật khẩu</a> / <a href="${pageContext.request.contextPath}/index">Tạo tài khoản mới</a></h4>
                                <div class="single-bottom">
                                    <input type="checkbox" id="brand" value="">
                                    <label for="brand"><span></span>Ghi nhớ</label>
                                </div>
                                <input type="submit" value="Đăng nhập">
                            </form>
                        </div>

                        <p>Bằng việc đăng nhập, bạn đã đồng ý với <span>Các điều khoản</span> và
                            <span>chính sách riêng tư</span> của chúng tôi</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //login -->
    <!-- signup -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">

                        <div class="login-right">
                            <form:form action="${pageContext.request.contextPath}/signup" method="post" modelAttribute="accountForm">
                                <h3>Tạo tài khoản </h3>
                                <form:input path="username" type="text" value="Tên đăng nhập" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Tên đăng nhập';}" required=""/>
                                <%--<form:errors path="username"/>--%>
                                <form:input path="name" type="text" value="Họ và tên" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Họ và tên';}" required=""/>
                                <%--<form:errors path="name"/>--%>
                                <form:input path="address" type="text" value="Địa chỉ cơ quan" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Địa chỉ cơ quan';}" required=""/>
                                <%--<form:errors path="address"/>--%>
                                <form:input path="phone" type="text" value="Số điện thoại" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Số điện thoại';}" required=""/>
                                <%--<form:errors path="phone"/>--%>
                                <form:input path="email" type="text" value="Địa chỉ email" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Địa chỉ email';}" required=""/>
                                <%--<form:errors path="email"/>--%>
                                <form:input path="password" type="password" value="Mật khẩu" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Mật khẩu';}" required=""/>
                                <%--<form:errors path="password"/>--%>
                                <input type="submit" value="TẠO TÀI KHOẢN">
                            </form:form>
                        </div>

                        <p>Bằng việc đăng ký, bạn đã đồng ý với <span>Các điều khoản</span> và
                            <span>chính sách riêng tư</span> của chúng tôi</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //signup -->
    <div class="banner">
        <div class="container">
            <div class="banner-text">
                <h2><img src="<c:url value="/resources/images/close_tag.png"/>" width="180" height="180">Code Academy</h2>
                <p>Rèn luyện khả năng lập trình của bạn </p>
            </div>
            <p class="banner-text1">Cùng chúng tôi luyện tập thông qua các khóa học lập trình online và chia sẻ kiến thức lập trình với mọi người
            để CodeAcademic trở thành một kênh chia sẻ kiến thức thú vị nhất cho cộng đồng lập trình viên Việt Nam</p>
        </div>
    </div>
    <div class="nav-top">
        <div class="container">
            <div class="nav1">
                <div class="navbar1">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav cl-effect-8">
                            <li><a class="active" href="${pageContext.request.contextPath}/index">Trang chủ </a></li>
                            <li><a href="${pageContext.request.contextPath}/about">Về chúng tôi</a></li>
                            <li><a href="${pageContext.request.contextPath}/gallery">Các khóa học</a></li>
                            <li><a href="${pageContext.request.contextPath}/typo">Open Sources</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
                <!-- start search-->
                <ul class="social-ic">
                    <li><a href="https://www.facebook.com"><i></i></a></li>
                    <li><a href="https://plus.google.com"><i class="ic"></i></a></li>
                    <li><a href="https://www.instagram.com"><i class="ic1"></i></a></li>
                    <li><a href="https://www.youtube.com"><i class="ic2"></i></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
