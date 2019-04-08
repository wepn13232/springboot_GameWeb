<%--
  Created by IntelliJ IDEA.
  User: linqiyuan
  Date: 2019-03-29
  Time: 08:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>充值页面</title>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contentType}/statics/css/chargeCss.css">
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="banner-1"></div>

<%--充值页面--%>
<div class="container-fluid">
    <div class="clearfix" style="padding: 1em"></div>
    <%--充值说明--%>
    <div class="alert alert-info charge_info">
        <div class="info_title">
            <span class="glyphicon glyphicon-qrcode" aria-hidden="true"></span> 充值中心
        </div>
        <div class="clearfix" style="padding: 1em;"></div>
        <div class="info_content">
            <h4 style="padding-bottom: 1em">1. 请选择合适的充值方式</h4>

            <h4>2. 请选择你需要充值的数额</h4>
        </div>
    </div>

    <div class="clearfix" style="padding: 1em;"></div>

    <%--充值人--%>
    <div class="panel charge_user">
        <div class="panel-body">
            <div class="user col-md-5 col-sm-5">
                <span class="glyphicon glyphicon-user col-md-2 col-sm-2" style="width: 130px"
                      aria-hidden="true">充值人：</span>
                <h4
                        class="username col-md-2 col-sm-2" style="width: 200px;margin-top: 5px" name="username"
                        id="username">${usersession.username}</h4>
            </div>
            <%--剩余余额--%>
            <div class="cashLeft col-md-3 col-sm-3 col-md-offset-3 col-sm-offset-3">
                <span class="glyphicon glyphicon-yen" aria-hidden="true">剩余余额：${cashleft}</span>
            </div>
        </div>
    </div>

    <%--充值金额选择--%>
    <div class="charge_method">
        <form class="form-horizontal">
            <div class="radio">
                <input type="button" class="btn btn-default btn-lg charge_btn1 col-md-2" name="charge_btn" value="20">
                <input type="button" class="btn btn-default btn-lg charge_btn2 col-md-2" name="charge_btn" value="50">
                <input type="button" class="btn btn-default btn-lg charge_btn3 col-md-2" name="charge_btn" value="100">
                <input type="number"  name="selfCash" id="selfCash"
                       class="btn btn-default btn-lg charge_btn col-md-2"
                       placeholder="请输入你想充值的金额"  onkeyup="value=value.replace(/[&|.|#|^|/]/g,'')" style="width: 240px"/>
            </div>
        </form>

        <div class="clearfix" style="padding: 1em"></div>

        <%--充值方式--%>
        <div class="method" style="margin-top: 4em">
            <label class="col-sm-2 col-md-2 control-label" style="width: 100px">支付方式</label>
            <label class="radio-inline" style="margin-bottom: 10px">
                <%--微信--%>
                <input type="radio" value="weixin" name="payRadio" id="weixinPay" class="col-md-2 col-sm-2" checked>
                <img class="col-md-3 col-sm-3" style="width: 140px;height: 30px"
                     src="${pageContext.request.contextPath}/statics/images/weixin.png" alt="">
            </label>

            <%--支付宝--%>
            <label class="radio-inline" style="margin-bottom: 10px">
                <input type="radio" value="zhifubao" name="payRadio" id="AliPay" class="col-md-2 col-sm-2">
                <img class="col-md-3 col-sm-3" style="width: 140px;height: 30px"
                     src="${pageContext.request.contextPath}/statics/images/zhifubao.png" alt="">
            </label>
        </div>


        <%--显示应付款--%>
        <div class="payCash" style="margin-top: 3em;height: 50px">
            <p class="col-md-2 col-sm-2" style="height: 100%;width: 130px;margin-top: 15px;">应支付金额:
            <p class="showCashNum" id="showCashNum"  name="cashCharge" style="color: red;font-size: 2em"></p>
        </div>
    </div>
</div>


<%--分割线--%>
<div class="fenge" style="width: 80%;margin: 0 auto;height: 1px;background-color: rgba(0,0,0,0.35)">
</div>

<%--付款按钮--%>
<div class="fukuang" style="padding: 1em">
    <input type="button" class="btn btn-info btn-lg" name="charge_button" id="charge_button" value="确认付款"/>
    <span style="color: red" class="fukuang_error"></span>
</div>


<%--微信模态框--%>
<div class="modal fade" id="wechatModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <img src="${pageContext.request.contextPath}/statics/images/wechatPay.jpeg" alt=""
                 class="center-block text-center">
            <div class=" text-center col-md-offset-4 col-sm-offset-4" style="width: 400px;">
                <a type="button" class="btn btn-success text-center  col-md-3 col-sm-3 wcmodalBtn"
                   data-dismiss="modal" style="margin-top: 1em">完成支付</a>
                <a type="button" class="btn btn-danger col-md-3 col-sm-3 qxmodalBtn"  data-dismiss="modal"
                   style="margin-top: 1em">取消支付</a>
            </div>
        </div>
        <div class="clearfix" style="padding-top: 1em"></div>
    </div>
</div>


<%--支付宝模态框--%>
<div class="modal fade" id="aliModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <%--<h4 class="modal-title alert alert-success" id="myModalLable">恭喜你，注册成功啦！！</h4>--%>
            <img src="${pageContext.request.contextPath}/statics/images/AliPay.jpeg" alt=""
                 class="center-block text-center">
                <div class=" text-center col-md-offset-4 col-sm-offset-4" style="width: 400px;">
                    <a type="button" class="btn btn-success text-center  col-md-3 col-sm-3 wcmodalBtn"
                       data-dismiss="modal" style="margin-top: 1em">完成支付</a>
                    <a type="button" class="btn btn-danger col-md-3 col-sm-3 qxmodalBtn"  data-dismiss="modal"
                       style="margin-top: 1em">取消支付</a>
                </div>        </div>
        <div class="clearfix" style="padding-top: 1em"></div>
    </div>
</div>


<%@include file="common/footer.jsp" %>
<script type="application/javascript" src="${pageContext.request.contextPath}/statics/js/charge.js"></script>
</body>
</html>
