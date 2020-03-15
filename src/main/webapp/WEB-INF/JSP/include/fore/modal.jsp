<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/13
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<div class="modal" id="loginModal" tabindex="-1" role="dialog">
    <div class="modal-dialog loginDivInProductPageModalDiv">
        <div class="modal-content">
            <div class="loginDivInProductPage">
                <div class="loginErrorMessageDiv">
                    <div class="alert alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                        <span class="errorMessage"></span>
                    </div>
                </div>
                <div class="login_acount_text">账户登录</div>
                <div class="loginInput">
                    <span class="loginInputIcon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                    <input name="name" id="name" type="text" placeholder="手机/邮箱">
                </div>
                <div class="loginInput">
                    <span class="loginInputIcon">
                        <span class="glyphicon glyphicon-lock"></span>
                    </span>
                    <input name="password" id="password" type="password">
                </div>
                <div>
                    <a href="#nowwhere">忘记登录密码</a>
                    <a href="registerPage" class="pull-right">免费注册</a>
                </div>
                <div style="margin-top: 20px">
                    <button class="btn btn-block redButton loginSubmitButton" type="submit">登录</button>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="modal" id="deleteConfirmModal" tabindex="-1" role="dialog">
    <div class="modal-dialog deleteConfirmModalDiv">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">*</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">确认删除</h4>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
                <button class="btn btn-primary deleteConfirmButton" id="submit" type="button">确认</button>
            </div>
        </div>
    </div>
</div>