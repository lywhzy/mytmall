<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/23
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<script>
    $(function () {
        $("#registername").keyup(function () {
            var name = $(this).val();
            var va = "1";
            $.ajax({
                url : "judge",
                type : "POST",
                data : {"name": name},
                success : function (value) {
                    if (value=="success"){
                        va = "用户名可以注册";
                    }else{
                        va = "用户名已被注册";
                    }
                    $("#error").html(va);
                }
            }) ;
        });

        $(".registerForm").submit(function () {
            if(0==$("#registername").val().length){
                $("span.errorMessage").html("请输入用户名");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if(0==$("#repeatpassword").val().length){
                $("span.errorMessage").html("请输入密码");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if(0==$("#repeatpassword").val().length){
                $("span.errorMessage").html("请输入重复密码");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if($("#registerpassword").val()!=$("#repeatpassword").val()){
                $("span.errorMessage").html("两次输入密码不一致");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            return true;
        })
    })

</script>

<form method="post" action="foreregister" class="registerForm">
    <div class="registerDiv">
        <div class="registerErrorMessageDiv">
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" datadismiss="alert" aria-label="Close"></button>
                <span class="errorMessage"></span>
            </div>
        </div>
        <table class="registerTable" align="center">
            <tr>
                <td class="registerTip registerTableLeftTD">
                    设置会员名
                </td>
                <td></td>
            </tr>
            <tr>
               <td class="registerTableLeftTD">登录名</td>
                <td class="registerTableRightTD">
                    <input type="text" id="registername" name="name" placeholder="会员名一旦设置成功 无法修改">
                    <span  id="error"></span>
                </td>

            </tr>
            <tr>
                <td class="registerTip registerTableLeftTD">设置登陆密码</td>
                <td class="registerTableRightTD">登录时验证 保护账号信息</td>
            </tr>
            <tr>
                <td class="registerTableLeftTD">登录密码</td>
                <td class="registerTableRightTD">
                    <input type="password" name="password" id="registerpassword" placeholder="设置你的登录密码">
                </td>
            </tr>
            <tr>
                <td class="registerTableLeftTD">密码确认</td>
                <td class="registerTableRightTD">
                    <input type="password" id="repeatpassword" placeholder="再次输入密码">
                </td>
            </tr>
            <tr>
                <td colspan="2" class="registerButtonTD">
                    <a href="registerSuccess"><button>提交</button></a>
                </td>
            </tr>
        </table>
    </div>
</form>

