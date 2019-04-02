<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/3/31
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/back/style.css" rel="stylesheet">
    <script>
        function checkEmpty(id,name) {
            var value = $("#"+id).val();
            if(value.length==0){
                $("#"+id)[0].focus();
                return false;
            }
            return true;
        }
        function checkNumber(id,name) {
            var value = $("#"+id).val();
            if(value.length==0){
                $("#"+id)[0].focus();
                return false;
            }
            if(isNaN(value)){
                $("#"+id)[0].focus();
                return false;
            }
            return true;
        }
        function checkInt(id,name) {
            var value= $("#"+id).val();
            if(value.length==0){
                $("#"+id)[0].focus();
                return false;
            }
            if(parseInt(value)!=value){
                $("#"+id)[0].focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

