<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation" style="background-color:#fff">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="reader_main.html"><p class="text-primary" style="font-family: 华文行楷; font-size: 200%; ">我的图书馆</p></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active">
                    <a href="reader_books.html">
                        Search Book
                    </a>
                </li>
                <li>
                    <a href="reader_info.html" >
                        Personla Info
                    </a>
                </li>
                <li >
                    <a href="mylend.html" >
                        My Lend Record
                    </a>
                </li>
                <li >
                    <a href="reader_repasswd.html" >
                        Change Password
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="reader_info.html">${readercard.name}, Login</a></li>
                <li><a href="login.html">Sign Out</a></li>
            </ul>
        </div>
    </div>
</nav>
