<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding Info</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .form-group {
            margin-bottom: 0;
        }
    </style>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="img/sky.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>
<div style="position: relative;padding-top: 60px; width: 80%;margin-left: 10%">
    <form action="book_add_do.html" method="post" id="addbook">
        <div class="form-group">
            <label for="name">Title</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter Title">
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <input type="text" class="form-control" name="author" id="author" placeholder="Enter Author">
        </div>
        <div class="form-group">
            <label for="publish">Publisher</label>
            <input type="text" class="form-control" name="publish" id="publish" placeholder="Enter Publisher">
        </div>
        <div class="form-group">
            <label for="isbn">ISBN</label>
            <input type="text" class="form-control" name="isbn" id="isbn" placeholder="ISBN">
        </div>
        <div class="form-group">
            <label for="introduction">Introduction</label>
            <textarea class="form-control" rows="3" name="introduction" id="introduction"
                      placeholder="Enter Introduction"></textarea>
        </div>
        <div class="form-group">
            <label for="language">Language</label>
            <input type="text" class="form-control" name="language" id="language" placeholder="Enter Language">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="Enter Price">
        </div>
        <div class="form-group">
            <label for="pubstr">Publishing Date</label>
            <input type="date" class="form-control" name="pubstr" id="pubstr" placeholder="Enter Publishing Date">
        </div>
        <div class="form-group">
            <label for="classId">Category ID</label>
            <input type="text" class="form-control" name="classId" id="classId" placeholder="Category ID">
        </div>
        <div class="form-group">
            <label for="number">Amount</label>
            <input type="text" class="form-control" name="number" id="number" placeholder="Enter Amount">
        </div>

        <input type="submit" value="Add" class="btn btn-success btn-sm" class="text-left">
        <script>
            $("#addbook").submit(function () {
                if ($("#name").val() == '' || $("#author").val() == '' || $("#publish").val() == '' || $("#isbn").val() == '' || $("#introduction").val() == '' || $("#language").val() == '' || $("#price").val() == '' || $("#pubstr").val() == '' || $("#classId").val() == '' || $("#pressmark").val() == '' || $("#number").val() == '') {
                    alert("Please Fill in Correct Information！");
                    return false;
                }
            })
        </script>
    </form>
</div>
</body>
</html>
