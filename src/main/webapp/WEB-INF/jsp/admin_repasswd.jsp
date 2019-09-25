<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Change Password</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="img/book2.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header" style="padding-bottom: 100px"></div>
<div style="position: relative">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>
<div class="col-xs-6 col-md-offset-3" style="position: relative;">
    <div class="panel panel-primary ">
        <div class="panel-heading">
            <h3 class="panel-title">Change Password</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="admin_repasswd_do" class="form-inline" id="repasswd">
                <div class="input-group">
                    <input type="password" id="oldPasswd" name="oldPasswd" placeholder="Old Password" class="form-control"
                           class="form-control">
                    <input type="password" id="newPasswd" name="newPasswd" placeholder="New Password" class="form-control"
                           class="form-control">
                    <input type="password" id="reNewPasswd" name="reNewPasswd" placeholder="Enter New Password"
                           class="form-control" class="form-control">
                    <em id="tishi" style="color: red"></em>
                    <br/>
                    <span>
                            <input type="submit" value="Submit" class="btn btn-default">
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $(document).keyup(function () {
        if ($("#newPasswd").val() != $("#reNewPasswd").val() && $("#newPasswd").val() != "" && $("#reNewPasswd").val() != "" && $("#newPasswd").val().length == $("#reNewPasswd").val().length) {
            $("#tishi").text("Make sure enter the same new password");
        } else {
            $("#tishi").text("");
        }
    })

    $("#repasswd").submit(function () {
        if ($("#oldPasswd").val() == '' || $("#newPasswd").val() == '' || $("#reNewPasswd").val() == '') {
            $("#tishi").text("Please submit after completion");
            return false;
        } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
            $("#tishi").text("Make sure enter the same new password");
            return false;
        }
    })
</script>
</body>
</html>
