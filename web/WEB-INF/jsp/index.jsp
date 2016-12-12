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
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="content">
    <div class="container">

        <div class="content-mid">
            <div class="col-md-4 content-top1">
                <div class=" content-top2">
                    <h4>An toàn thông tin </h4>
                    <h6> Mentor : Dr. Phạm Văn Hải</h6>
                    <h6> Nguồn : HUST</h6>
                    <h6> Thời gian : 120 giờ</h6>
                    <p>Chương trình đào tạo trang bị cho sinh viên kiến thức chuyên sâu về An toàn thông tin như: các kỹ thuật mật mã,
                        an toàn mạng máy tính, an toàn hệ điều hành, an toàn cơ sở dữ liệu, an toàn các ứng dụng Web và Internet, an toàn
                        trong giao dịch và thương mại điện tử.</p>
                </div>
            </div>
            <div class="col-md-4 content-top1">
                <div class=" content-top2">
                    <h4>Trí tuệ nhân tạo </h4>
                    <h6> Mentor : Mark Zuckerberg</h6>
                    <h6> Nguồn : Facebook</h6>
                    <h6> Thời gian : 200 giờ</h6>
                    <p>Trí tuệ nhân tạo hay trí thông minh nhân tạo là trí tuệ được biểu diễn bởi bất cứ một hệ thống nhân tạo nào.
                        Trí thông minh nhân tạo liên quan đến cách cư xử, sự học hỏi và khả năng thích ứng thông minh của máy móc.</p>
                </div>
            </div>
            <div class="col-md-4 content-mid-1">
                <div class="port effect-1">
                    <div class="image-box">
                        <img src="<c:url value="/resources/images/a1.jpg"/>"  alt="" class="img-responsive">
                    </div>
                    <div class="text-desc text-ed">
                        <h6>Code hacking tutorial</h6>
                        <p>Tham gia hệ thống Development Kit Online với môi trường đa nền tảng cho các ngôn ngữ khác
                            nhau ngay trên nền web.</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!---->
<div class="services">
    <div class="container">
        <div class="service-head">
            <h3>Dịch vụ của chúng tôi </h3>
            <p> Hệ thống bài giảng phong phú với sự tham gia của rất nhiều của các chuyên gia và các nguồn uy tín như
                MIT, STANFORD, HARVARD, HUST.</p>
        </div>
        <div class="servies-top">
            <div class="col-md-7 us-ser">
                <div class=" why-choose">
                    <div class=" hi-icon-effect-2 hi-icon-effect-2a">
                        <a href="${pageContext.request.contextPath}/index" class="hi-icon  glyphicon glyphicon-book"></a>
                    </div>
                    <div class="ser-top ">
                        <h5>Hệ thống khóa học</h5>
                        <p>Được thiết kế chi tiết bởi các chuyên gia công nghệ với sự tư vấn của các lập trình viên
                            làm việc tại các công ty hàng đầu trên thế giới.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class=" why-choose">
                    <div class=" hi-icon-effect-2 hi-icon-effect-2a">
                        <a href="${pageContext.request.contextPath}/index" class="hi-icon  glyphicon glyphicon-leaf"></a>
                    </div>
                    <div class="ser-top">
                        <h5>Chí Phí</h5>
                        <p>Bao gồm cả các khóa học miễn phí cũng như các khóa học tính phí. Sẽ có các chính sách hỗ trợ
                            học theo nhóm hoặc theo công ty cũng như các chương trình giảm giá.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class=" why-choose">
                    <div class=" hi-icon-effect-2 hi-icon-effect-2a">
                        <a href="${pageContext.request.contextPath}/index" class="hi-icon  glyphicon glyphicon-pencil"></a>
                    </div>
                    <div class="ser-top">
                        <h5>Hệ thống đánh giá</h5>
                        <p>CodeAcademy có hệ thống đánh giá trực tuyến và cung cấp các chứng chỉ đánh giá năng lực theo
                            tiêu chuẩn của các công ty công nghệ hàng đầu hiện nay.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
            <div class="col-md-5 service-mid">
                <img src="<c:url value="/resources/images/4.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<div class="test">
    <div class="container">
        <h3>Đánh giá của người dùng </h3>
        <div class=" test-grid-1">
            <div class="col-md-6 test-wrapper">
                <img src="<c:url value="/resources/images/elon-musk2.jpg"/>" alt="" class="img-responsive">
                <div class="test-grid">
                    <div class="test-gr">
                        <h4>Elon Musk</h4>
                        <span>CEO SpaceX</span>
                    </div>
                    <p>Chúng tôi đánh giá cao các dich vụ và hệ thống học tập của CodeAcademy.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 test-wrapper">
                <img src="<c:url value="/resources/images/mentor1.jpg"/>" alt="" class="img-responsive">
                <div class="test-grid">
                    <div class="test-gr">
                        <h4>Phạm Văn Hải</h4>
                        <span>Giảng viên Đại học Bách Khoa Hà Nội </span>
                    </div>
                    <p>Bài giảng khá phong phú và cung cấp cách tiếp cận học online dễ dàng cho sinh viên
                        để phù hợp với các dự án trong thực tế.</p>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class=" test-grid-2">
            <div class="col-md-6 test-wrapper">
                <img src="<c:url value="/resources/images/ibra.jpg"/>" alt="" class="img-responsive">
                <div class="test-grid">
                    <div class="test-gr">
                        <h4>Bùi Đức Hưng</h4>
                        <span>Dev Freelance</span>
                    </div>
                    <p>CodeAcademy cung cấp cho tôi hiểu được sâu sắc rất nhiều chủ đề khó và cách làm việc
                        của một lập trình viên hiện đại.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 test-wrapper">
                <img src="<c:url value="/resources/images/larry-ellyson2.jpg"/>" alt="" class="img-responsive">
                <div class="test-grid">
                    <div class="test-gr">
                        <h4>Larry Ellison</h4>
                        <span>Oracle Founder</span>
                    </div>
                    <p>Hệ thống chứng chỉ khá tốt và cung cấp tham chiếu hiệu quả cho các công ty công
                        nghệ đánh giá năng lực của developer.</p>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!---->
<div class="content-bottom">
    <h1>Các khóa học phổ biến </h1>
    <div class="content-in">
        <div class="port effect-1">
            <div class="image-box">
                <img src="<c:url value="/resources/images/data.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="text-desc">
                <h6>An ninh mạng</h6>
                <p>Các chủ đề chuyên sâu về an ninh mạng DDOS, SET, IP spoof .</p>
            </div>
        </div>
    </div>
    <div class="content-in">
        <div class="port effect-1">
            <div class="image-box">
                <img src="<c:url value="/resources/images/data-structure2.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="text-desc">
                <h6>Cấu trúc dữ liệu và thuật toán</h6>
                <p>Hiểu các cấu trúc dữ liệu và triển khai vào các thuật toán .</p>
            </div>
        </div>
    </div>
    <div class="content-in">
        <div class="port effect-1">
            <div class="image-box">
                <img src="<c:url value="/resources/images/an-ninh-mang2.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="text-desc">
                <h6>Mã hóa</h6>
                <p>Cung cấp cơ sở toán học của các thuật toán mã hóa RSA, AES, Diffie-Hellman .</p>
            </div>
        </div>
    </div>
    <div class="content-in">
        <div class="port effect-1">
            <div class="image-box">
                <img src="<c:url value="/resources/images/math.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="text-desc">
                <h6>Toán rời rạc</h6>
                <p>Cơ sở toán học cho lập trình viên .</p>
            </div>
        </div>
    </div>
    <div class="content-in">
        <div class="port effect-1">
            <div class="image-box">
                <img src="<c:url value="/resources/images/ai3.jpg"/>" alt="" class="img-responsive">
            </div>
            <div class="text-desc">
                <h6>Trí tuệ nhân tạo</h6>
                <p>Kiến thức nền tảng của machine learning, các chủ đề như mạng neuron, SVM .</p>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
