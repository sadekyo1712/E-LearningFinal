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
    <%--<link href='${pageContext.request.contextPath}fonts.googleapis.com/css?family=Catamaran:400,100,300,500,700,600,800,900'--%>
          <%--rel='stylesheet'--%>
          <%--type='text/css'/>--%>
    <%--<link href='${pageContext.request.contextPath}fonts.googleapis.com/css?family=Montserrat:400,700'--%>
          <%--rel='stylesheet'--%>
          <%--type='text/css'/>--%>
</head>
<body>

<div class="footer">
    <div class="container">
        <div class="col-md-6 footer-left">
            <h3>Thông tin </h3>
            <p class="para">Hãy liên hệ với chúng tôi để biết thêm thông tin và các chính sách
                hỗ trợ cho việc cung cấp các khóa học và chi phí tư vấn công nghệ cho doanh nghiệp.</p>
            <h3>Các tin tức mới nhất <label></label></h3>
            <form action="#" method="post">
                <input type="text" value="Tên của bạn" name="username"
                       onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Tên của bạn';}"
                       required="">
                <input type="email" value="Email" name="Email"
                       onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Email';}"
                       required="">
                <input type="submit" value="Subscribe">
            </form>
        </div>
        <div class="col-md-6 footer-right">
            <h3>Liên hệ </h3>
            <ul class="con-icons">
                <li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+84 167 753 3388</li>
                <li><a href="https://www.google.com/gmail/"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@CodeAcademy.com</a></li>
            </ul>
            <p class="copy-right">© 2016 Code Academy. All rights reserved</p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

</body>
</html>
