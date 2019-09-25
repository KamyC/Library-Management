<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${readercard.name} Home Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="img/lizhi.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header" style="padding-bottom: 80px"></div>
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
<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                Personal Info
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="20%">Reader ID</th>
                    <td>${readerinfo.readerId}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>${readerinfo.name}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${readerinfo.sex}</td>
                </tr>
                <tr>
                    <th>Birth Date</th>
                    <td>${readerinfo.birth}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${readerinfo.address}</td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td>${readerinfo.phone}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <a class="btn btn-success btn-sm" href="reader_info_edit.html" role="button">Edit</a>
    </div>
</div>


</body>
</html>
