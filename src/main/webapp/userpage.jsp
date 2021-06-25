
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style-userpage.css">
    <link rel="stylesheet" href="css/style-uploadproduct.css">
    <link rel="stylesheet" href="css/style-blog.css">
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Welcome Admin</title>
</head>

<body>
<jsp:include page="elementpage/header.jsp"/>

<jsp:include page="elementpage/navbar.jsp"/>
<div class="container" style="margin-top: 10px;">

    <div class="row">
        <div class="col-xl-4 col-lg-4 col-sm-12" style="height: 1000px; box-shadow: 5px 7px 20px black;border-radius: 5px;">
            <h2>Quản lý tài khoản</h2>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a href="Infouser" class="nav-link bg-h">Chỉnh sửa thông tin cá nhân</a>
                </li>
                <li class="nav-item">
                    <a href="Uploadproduct" class="nav-link">Đăng bán sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a href="ManaControl" class="nav-link">Quản lý bài đăng</a>
                </li>
                <li class="nav-item">
                    <a href="ManagerOrder" class="nav-link">Quản lý đơn hàng</a>
                </li>
                <c:set var="sessionaccount" value="${sessionScope.akou}"/>
                <c:if test="${sessionaccount == 0}">
                    <li class="nav-item">
                        <a href="ManagerAccount" class="nav-link">Tài khoản đã đăng kí vào hệ thống</a>
                    </li>
                </c:if>
            </ul>
        </div>
        <div class="col-xl-8 col-lg-8 col-sm-12">
            <h2>Chỉnh sửa thông tin cá nhân</h2>
            <form action="Infouserd" method="post" class="needs-validation" novalidate acceptcharset="UTF-8">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input class="form-control" type="text" name="firstname" value="${requestScope.firstname}" id="firstname"
                                       placeholder="Nhập họ" required>
                                <label for="firstname">Họ</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input class="form-control" type="text" name="lastname" value="${requestScope.lastname}" id="lastname"
                                       placeholder="Nhập tên" required>
                                <label for="lastname">Tên</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input class="form-control" type="text" name="dob" value="${requestScope.dob}" id="DoB" placeholder="Ngày sinh"
                               required>
                        <label for="DoB">Ngày sinh</label>
                        <div class="valid-feedback">Có hiệu lực</div>
                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input class="form-control" type="text" name="address" value="${requestScope.address}" id="address" placeholder="Địa chỉ"
                               required>
                        <label for="address">Địa chỉ</label>
                        <div class="valid-feedback">Có hiệu lực</div>
                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                    </div>
                </div>

<%--                <div>--%>
<%--                    <p><c:out value="${sessionScope.email}"/></p>--%>
<%--                </div>--%>

                <div class="form-group">
                    <div class="form-label-group">
                        <input class="form-control" type="text" name="email" value="${requestScope.email}" id="email" placeholder="Email"
                               required>
                        <label for="email">Email</label>
                        <div class="valid-feedback">Có hiệu lực</div>
                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label-group">
                        <input class="form-control" type="text" name="number" value="${requestScope.number}" id="number" placeholder="Số điện thoại" required>
                        <label for="number">Số điện thoại</label>
                        <div class="valid-feedback">Có hiệu lực</div>
                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                    </div>
                </div>
<%--                <div class="form-group form-check">--%>
<%--                    <div class="form-row">--%>
<%--                        <div class="col-3">--%>
<%--                            <label>Giới tính:</label>--%>
<%--                        </div>--%>
<%--                        <div class="col-3">--%>
<%--                            <label class="form-check-label">--%>
<%--                                <input class="form-check-input" type="radio" name="msex" value="Nam" required> Nam--%>
<%--                                <div class="valid-feedback">Valid.</div>--%>
<%--                                <div class="invalid-feedback">Vui lòng nhập vào để tiếp tục.</div>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="col-3">--%>
<%--                            <label class="form-check-label">--%>
<%--                                <input class="form-check-input" type="radio" name="fmsex" value="Nữ" required> Nữ--%>
<%--                                <div class="valid-feedback">Valid.</div>--%>
<%--                                <div class="invalid-feedback">Vui lòng nhập vào để tiếp tục.</div>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="col-3">--%>
<%--                            <label class="form-check-label">--%>
<%--                                <input class="form-check-input" type="radio" name="othersex" value="LGBT" required> Khác--%>
<%--                                <div class="valid-feedback">Valid.</div>--%>
<%--                                <div class="invalid-feedback">Vui lòng nhập vào để tiếp tục.</div>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary mb-2">Cập nhật thay đổi</button>
                </div>
            </form>
        </div>
    </div>
</div>


<jsp:include page="elementpage/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>

</html>
