<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:43 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- login register.... -->

<%
    Cookie[]cookies = request.getCookies();

    String user = "";
    String password = "";
    String remem = "";
    if (cookies != null){
        for (Cookie c: cookies
        ) {
            if (c.getName().equals("usercookie")){
                user = c.getValue();
            }
//            else if (c.getName().equals("remem")){
//            remem = c.getValue();
//            }
            if (c.getName().equals("passcookie")){
                password = c.getValue();
            }


        }
    }



%>

<div class="SignIn-LogIn">
    <a href="register.html" class="btn bg-btn" data-toggle="modal"
       data-target="#myRegister">Đăng kí</a>
    <div class="modal fade" id="myRegister">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title">Đăng kí</div>
                </div>
                <div class="modal-body">
                    <form action="Register" method="post" class="needs-validation" novalidate>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input class="form-control" type="text" name="firstname"
                                               id="firstname" placeholder="Nhập họ" required>
                                        <label for="firstname">Họ</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input class="form-control" type="text" name="lastname"
                                               id="lastname" placeholder="Nhập tên" required>
                                        <label for="lastname">Tên</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input class="form-control" type="text" name="uname" id="uname"
                                       placeholder="Nhập tên tài khoản" required>
                                <label for="uname">Nhập tên tài khoản</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input class="form-control" type="email" name="email" id="email"
                                       placeholder="Nhập email" required>
                                <label for="email">Nhập email</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input class="form-control" type="password" name="pwd" id="pwd"
                                               placeholder="Nhập mật khẩu" required>
                                        <label for="pwd">Nhập mật khẩu</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input class="form-control" type="password" name="rpwd"
                                               id="rpwd" placeholder="Nhập lại mật khẩu" required>
                                        <label for="rpwd">Nhập lại mật khẩu</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group form-check">
                            <label class="form-check-label" >
                                <input class="form-check-input" type="checkbox" name="remember"
                                       required>Tôi đồng ý tất cả
                                các điều khoản
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                            </label>
                        </div>
                        <div class="text-center">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="loginv2.html" class="btn text-primary">Đăng nhập</a>
                                </div>
                                <div class="col-md-9">
                                    <button type="submit" class="btn btn-primary register">Đăng
                                        kí</button>
                                </div>
                            </div>

                        </div>
                    </form>
                    <div class="text-center">
                        <a class="small" href="#">Quên mật khẩu?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="loginv2.html" class="btn bg-btn" data-toggle="modal"
       data-target="#myLogin">Đăng nhập</a>
    <div class="modal fade" id="myLogin">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header justify-content-center">
                    <h4 class="modal-title">Đăng Nhập</h4>
                </div>
                <div class="modal-body text-left">
                    <form action="Login" method="post" class="needs-validation" novalidate>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="text" class="form-control" id="username"
                                       placeholder="Nhập tài khoản" name="yourusername" required value="<%=user%>">
                                <label for="username">Tài Khoản</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="password" class="form-control" id="pwdd"
                                       placeholder="Nhập mật khẩu" name="yourpassword" required value="<%=password%>">
                                <label for="pwdd">Mật khẩu</label>
                                <div class="valid-feedback">Có hiệu lực</div>
                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                            </div>
                        </div>
                        <div class="form-group form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" name="remember" value="ON" <%--<%="1".equals(remem)?"checked='/checked'":""%>--%> > Ghi nhớ
                                đăng nhập
                            </label>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <button type="submit" class="btn btn-primary">Đăng nhập</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end login register -->
