<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/06/2021
  Time: 9:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giỏ hàng</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style-blog.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style-login-signup.css">
  <script src="js/vadi-login-signup.js"></script>
  <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
</head>
<body>
<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>
<div class="shopping-cart">
  <div class="px-4 px-lg-0">

    <div class="pb-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

            <!-- Shopping cart table -->
            <div class="table-responsive">
              <table class="table">
                <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Đơn Giá</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Số Lượng</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Xóa</div>
                  </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.listproorder}" var="listproorder">
                  <tr>
                    <th scope="row">
                      <div class="p-2">
                        <img src="${listproorder.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                        <div class="ml-3 d-inline-block align-middle">
                          <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${listproorder.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                        </div>
                      </div>
                    </th>
                    <td class="align-middle"><strong>${listproorder.price}</strong></td>
                    <td class="align-middle">
<%--                      <a href="sub?id=${o.id}"><button class="btnSub">-</button></a> --%>
                      <strong class="text-center">${listproorder.amount}</strong>
<%--                      <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>--%>
                    </td>
                    <td class="align-middle"><a href="<%--remove--%>?id=${o.id}" class="text-dark">
                      <button type="button" class="btn btn-danger">Delete</button>
                    </a>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- End -->
          </div>
        </div>

        <div class="row py-5 p-4 bg-white rounded shadow-sm">
          <div class="col-lg-6">
          <c:set var="akou" value="${sessionScope.akou}"/>
          <c:if test="${akou == 0}">
              <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Cập nhật trạng thái đơn hàng</div>
              <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Vui lòng nhập <strong>Đã xác nhận</strong> nếu đơn hàng được duyệt</div>
              <div class="p-4">
<%--                <div &lt;%&ndash;class="input-group mb-4 border rounded-pill p-2"&ndash;%&gt;>--%>
                  <form action="EStatus?id=${idproductfordel}" method="post" class="input-group mb-4 border rounded-pill p-2" acceptcharset="UTF-8">
                    <input type="text" name="statusorder" placeholder="Nhập trạng thái" aria-describedby="button-addon3" class="form-control border-0">
                    <div class="input-group-append border-0">
                            <button id="button-addon3" type="submit" class="btn btn-dark px-4 rounded-pill">Cập nhật</button>
<%--                      <a href="EStatus?id=${idproductfordel}" id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill">Cập nhật</a>--%>
                    </div>
                  </form>
<%--                </div>--%>
              </div>
          </c:if>
        </div>
          <div class="col-lg-6">
            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
            <div class="p-4">
              <ul class="list-unstyled mb-4">
                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${total}</strong></li>
                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                <%--                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>--%>
                <%--                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>--%>
                <%--                                    <h5 class="font-weight-bold">${sum} ₫</h5>--%>
                </li>
              </ul><a href="DelOrder?id=${idproductfordel}" class="btn btn-dark rounded-pill py-2 btn-block">Huỷ đơn hàng</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<jsp:include page="elementpage/footer.jsp"/>
</body>
</html>
