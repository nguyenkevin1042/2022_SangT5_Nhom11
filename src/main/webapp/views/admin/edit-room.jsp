<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/taglib.jsp"></jsp:include>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>EditCategory</title>
    <link rel="stylesheet" href="path/to/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
</head>
<body>
<div class="form_wrapper">
    <div class="form_container">
        <div class="title_container">
            <h2>CHỈNH SỬA PHÒNG</h2>
                    </div>
        <div class="row clearfix">
            <div class="">
                <form:form action="/EditRoom" method="POST" modelAttribute="room">
                <div class="input_field">
                   <span><i aria-hidden="true" class="fa fa-id-card-o" style="font-size:20px"></i></span>
                        Id <form:input path="id" readonly="true"/>
                        
                    </div>
                 <div class="input_field"><span><i aria-hidden="true" class="fa fa-home" style="font-size:20px"></i></span>
                        Category_id <form:input path="category"/>
                        
                    </div>
                     <div class="input_field"><span><i aria-hidden="true" class="fa fa-user" style="font-size:20px"></i></span>
                        Capacity <form:input path="capacity"/>
                        
                    </div>
                    <div class="input_field"><span><i aria-hidden="true" class="fa fa-file-text" style="font-size:15px"></i></span>
                       KindOfBed <form:input path="kindOfBed"/>
                         
                    </div>    
                     <div class="input_field"><span><i aria-hidden="true" class="fa fa-bed" style="font-size:15px"></i></span>
                       NumberOfBed <form:input path="numberOfBed"/>
                         
                    </div>
                     <div class="input_field"><span><i aria-hidden="true" class="fa fa-dollar" style="font-size:15px"></i></span>
                       PricePerNight <form:input path="pricePerNight"/>
                         
                    </div> 
                     <div class="input_field"><span><i aria-hidden="true" class="fa fa-window-restore" style="font-size:15px"></i></span>
                       Quantity <form:input path="quantity"/>
                         
                    </div>    
                    <form:button>Save</form:button>
                    </form:form>
                    <a href="/admin/home/manage-room"><input class="button" type="button" value="Cancel"/></a>
            </div>
        </div>
    </div>
</div>
</body>
<style>
    body {
        font-family: Verdana, Geneva, sans-serif;
        font-size: 14px;
        background: #f2f2f2;
    }

    .clearfix:after {
        content: "";
        display: block;
        clear: both;
        visibility: hidden;
        height: 0;
    }

    .form_wrapper {
        padding-top: 0.5cm;
        background: #fff;
        width: 400px;
        max-width: 100%;
        box-sizing: border-box;
        padding: 25px;
        margin: 0% auto 0;
        position: relative;
        z-index: 1;
        border-top: 5px solid #f5ba1a;
        -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
        -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
        box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
        -webkit-transform-origin: 50% 0%;
        transform-origin: 50% 0%;
        -webkit-transform: scale3d(1, 1, 1);
        transform: scale3d(1, 1, 1);
        -webkit-transition: none;
        transition: none;
        -webkit-animation: expand 0.8s 0.6s ease-out forwards;
        animation: expand 0.8s 0.6s ease-out forwards;
        opacity: 0;
    }

    .form_wrapper h2 {
        font-size: 1.5em;
        line-height: 1.5em;
        margin: 0;
    }

    .form_wrapper .title_container {
        text-align: center;
        padding-bottom: 15px;
    }

    .form_wrapper h3 {
        font-size: 1.1em;
        font-weight: normal;
        line-height: 1.5em;
        margin: 0;
    }

    .form_wrapper label {
        font-size: 12px;
    }

    .form_wrapper .row {
        margin: 10px -15px;
    }

    .form_wrapper .row > div {
        padding: 0 15px;
        box-sizing: border-box;
    }

    .form_wrapper .col_half {
        width: 50%;
        float: left;
    }

    .form_wrapper .input_field {
        position: relative;
        margin-bottom: 20px;
        -webkit-animation: bounce 0.6s ease-out;
        animation: bounce 0.6s ease-out;
    }

    .form_wrapper .input_field > span {
        position: absolute;
        left: 0;
        top: 0;
        color: #333;
        height: 100%;
        border-right: 1px solid #ccc;
        text-align: center;
        width: 30px;
        
    }

    .form_wrapper .input_field > span > i {
        padding-top: 30px;
    }

    .form_wrapper .textarea_field > span > i {
        padding-top: 10px;
    }

    .form_wrapper input[type="text"]{
        width: 100%;
        padding: 8px 10px 9px 35px;
        height: 35px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        outline: none;
        -webkit-transition: all 0.3s ease-in-out;
        -moz-transition: all 0.3s ease-in-out;
        -ms-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

     .form_wrapper input[type="text"]:hover{
        background: #1ac2f5;
    }

    .form_wrapper input[type="text"]:focus{
        -webkit-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
        -moz-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
        box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
        border: 1px solid #f5ba1a;
        background: #1ac2f5;
    }

    .form_wrapper button[type="submit"] {
        background: #1ac2f5;
        height: 35px;
        line-height: 35px;
        width: 100%;
        border: none;
        outline: none;
        cursor: pointer;
        color: #fff;
        font-size: 1.1em;
        margin-bottom: 10px;
        -webkit-transition: all 0.3s ease-in-out;
        -moz-transition: all 0.3s ease-in-out;
        -ms-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

    .form_wrapper button[type="submit"]:hover {
        background: #e1a70a;
    }

    .form_wrapper button[type="submit"]:focus {
        background: #e1a70a;
    }

    .form_wrapper input[type="button"] {
        background: rgba(24, 17, 12, 0.51);
        height: 35px;
        line-height: 35px;
        width: 100%;
        border: none;
        outline: none;
        cursor: pointer;
        color: #fff;
        font-size: 1.1em;
        margin-bottom: 10px;
        -webkit-transition: all 0.3s ease-in-out;
        -moz-transition: all 0.3s ease-in-out;
        -ms-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

    .form_wrapper input[type="button"]:hover {
        background: #e1a70a;
    }

    .form_wrapper input[type="button"]:focus {
        background: #e1a70a;
    }

     .form_container .row .col_half.last {
        border-left: 1px solid #ccc;
    }

     .credit {
        position: relative;
        z-index: 1;
        text-align: center;
        padding: 15px;
        color: #f5ba1a;
    }

    .credit a {
        color: #e1a70a;
    }

    @-webkit-keyframes check {
        0% {
            height: 0;
            width: 0;
        }
        25% {
            height: 0;
            width: 7px;
        }
        50% {
            height: 20px;
            width: 7px;
        }
    }

    @keyframes check {
        0% {
            height: 0;
            width: 0;
        }
        25% {
            height: 0;
            width: 7px;
        }
        50% {
            height: 20px;
            width: 7px;
        }
    }

    @-webkit-keyframes expand {
        0% {
            -webkit-transform: scale3d(1, 0, 1);
            opacity: 0;
        }
        25% {
            -webkit-transform: scale3d(1, 1.2, 1);
        }
        50% {
            -webkit-transform: scale3d(1, 0.85, 1);
        }
        75% {
            -webkit-transform: scale3d(1, 1.05, 1);
        }
        100% {
            -webkit-transform: scale3d(1, 1, 1);
            opacity: 1;
        }
    }

    @keyframes expand {
        0% {
            -webkit-transform: scale3d(1, 0, 1);
            transform: scale3d(1, 0, 1);
            opacity: 0;
        }
        25% {
            -webkit-transform: scale3d(1, 1.2, 1);
            transform: scale3d(1, 1.2, 1);
        }
        50% {
            -webkit-transform: scale3d(1, 0.85, 1);
            transform: scale3d(1, 0.85, 1);
        }
        75% {
            -webkit-transform: scale3d(1, 1.05, 1);
            transform: scale3d(1, 1.05, 1);
        }
        100% {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
            opacity: 1;
        }
    }

    @-webkit-keyframes bounce {
        0% {
            -webkit-transform: translate3d(0, -25px, 0);
            opacity: 0;
        }
        25% {
            -webkit-transform: translate3d(0, 10px, 0);
        }
        50% {
            -webkit-transform: translate3d(0, -6px, 0);
        }
        75% {
            -webkit-transform: translate3d(0, 2px, 0);
        }
        100% {
            -webkit-transform: translate3d(0, 0, 0);
            opacity: 1;
        }
    }

    @keyframes bounce {
        0% {
            -webkit-transform: translate3d(0, -25px, 0);
            transform: translate3d(0, -25px, 0);
            opacity: 0;
        }
        25% {
            -webkit-transform: translate3d(0, 10px, 0);
            transform: translate3d(0, 10px, 0);
        }
        50% {
            -webkit-transform: translate3d(0, -6px, 0);
            transform: translate3d(0, -6px, 0);
        }
        75% {
            -webkit-transform: translate3d(0, 2px, 0);
            transform: translate3d(0, 2px, 0);
        }
        100% {
            -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            opacity: 1;
        }
    }

    @media (max-width: 600px) {
        .form_wrapper .col_half {
            width: 100%;
            float: none;
        }

        .bottom_row .col_half {
            width: 50%;
            float: left;
        }

        .form_container .row .col_half.last {
            border-left: none;
        }

        .remember_me {
            padding-bottom: 20px;
        }
    }
</style>
</html>