<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 1:19 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Chỉnh sửa thông tin sản phẩm</h4>
                <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <form action="EProduct" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">
<%--                    <div name = "id" style="display: none"><input value="${}"></div>--%>
                    <div class="form-group">
                        <label for="namep">Tên Sản Phẩm:</label>
                        <input type="text" name="namep" id="namep" class="form-control" placeholder="Nhập tên sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="typep">Loại Sản Phẩm:</label>
                        <input type="text" name="typep" id="typep" class="form-control" placeholder="Nhập loại sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="pricep">Giá Sản Phẩm:</label>
                        <input type="text" name="pricep" id="pricep" class="form-control" placeholder="Nhập loại sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="photo">Thêm Ảnh:</label>
                        <input type="file" name="photo" id="photo" placeholder="Tải ảnh lên">
                    </div>
                    <div class="form-group">
                        <label for="detailp">Mô Tả Sản Phẩm:</label>
                        <textarea name="detailp" id="detailp" cols="70" rows="10" class="form-control" placeholder="Nhập mô tả"></textarea>
                        <!-- <input type="text" id="detailp" class="form-control" placeholder="Nhập mô tả"> -->
                    </div>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="submit" class="btn btn-success">Cập nhật</button>
<%--                <a href="EProduct" type="submit" class="btn btn-success">Cập nhật</a>--%>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Huỷ</button>
            </div>

        </div>
    </div>
</div>
