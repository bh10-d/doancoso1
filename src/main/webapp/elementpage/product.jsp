<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 10:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
    <div class="form-3">
        <a href="">
            <img style="width: 200px;height: 200px;"
                 src="Image/anh-dai-dien-thanh-long-trăng.jpg" alt="">
            <div class="BG-1">
                <c:set var="store" value="${sessionScope.mstore}"></c:set>
                <span style="display:block;" class="name-label"><%=request.getAttribute("namep")%></span>
                <span class="price"><span>Giá:&nbsp;</span><%=request.getAttribute("price")%>&nbsp;<span>₫</span></span>
            </div>
            <button type="button" name="" id=""
                    class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
        </a>
    </div>
</div>