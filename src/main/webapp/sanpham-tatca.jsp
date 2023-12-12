<%@page import="model.Hangxe"%>
<%@page import="controller.Chucnang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Lopxe"%>
<%@page import="dao.Get_data"%>
<%@page import="conect_data.Dbconnect"%>
<%@page import="java.net.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
		content="Công ty Lốp LEAO - ATLAS Việt Nam | Lốp ô tô LEAO ATLAS Thailand nhập khẩu | Vỏ xe hơi LEAO ATLAS | chuyên nhập khẩu và phân phối lốp ô tô made in ThaiLand">
	

<!-- title -->
<title>Lốp ô tô LEAO ATLAS Thailand nhập khẩu | Vỏ xe hơi LEAO ATLAS</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet" href="assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet" href="assets/css/responsive.css">

    <style id="style_ladi" type="text/css">
    
        .ladi-loading {
            z-index: 900000000000;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background-color: rgba(0, 0, 0, .1)
        }

        .ladi-loading .loading {
            width: 80px;
            height: 80px;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            overflow: hidden;
            position: absolute
        }

        .ladi-loading .loading div {
            position: absolute;
            width: 6px;
            height: 6px;
            background: #fff;
            border-radius: 50%;
            animation: ladi-loading 1.2s linear infinite
        }

        .ladi-loading .loading div:nth-child(1) {
            animation-delay: 0s;
            top: 37px;
            left: 66px
        }

        .ladi-loading .loading div:nth-child(2) {
            animation-delay: -.1s;
            top: 22px;
            left: 62px
        }

        .ladi-loading .loading div:nth-child(3) {
            animation-delay: -.2s;
            top: 11px;
            left: 52px
        }

        .ladi-loading .loading div:nth-child(4) {
            animation-delay: -.3s;
            top: 7px;
            left: 37px
        }

        .ladi-loading .loading div:nth-child(5) {
            animation-delay: -.4s;
            top: 11px;
            left: 22px
        }

        .ladi-loading .loading div:nth-child(6) {
            animation-delay: -.5s;
            top: 22px;
            left: 11px
        }

        .ladi-loading .loading div:nth-child(7) {
            animation-delay: -.6s;
            top: 37px;
            left: 7px
        }

        .ladi-loading .loading div:nth-child(8) {
            animation-delay: -.7s;
            top: 52px;
            left: 11px
        }

        .ladi-loading .loading div:nth-child(9) {
            animation-delay: -.8s;
            top: 62px;
            left: 22px
        }

        .ladi-loading .loading div:nth-child(10) {
            animation-delay: -.9s;
            top: 66px;
            left: 37px
        }

        .ladi-loading .loading div:nth-child(11) {
            animation-delay: -1s;
            top: 62px;
            left: 52px
        }

        .ladi-loading .loading div:nth-child(12) {
            animation-delay: -1.1s;
            top: 52px;
            left: 62px
        }

        @keyframes ladi-loading {

            0%,
            100%,
            20%,
            80% {
                transform: scale(1)
            }

            50% {
                transform: scale(1.5)
            }
        }

        .ladipage-message {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 10000000000;
            background: rgba(0, 0, 0, .3)
        }

        .ladipage-message .ladipage-message-box {
            width: 400px;
            max-width: calc(100% - 50px);
            height: 160px;
            border: 1px solid rgba(0, 0, 0, .3);
            background-color: #fff;
            position: fixed;
            top: calc(50% - 155px);
            left: 0;
            right: 0;
            margin: auto;
            border-radius: 10px
        }

        .ladipage-message .ladipage-message-box span {
            display: block;
            background-color: rgba(6, 21, 40, .05);
            color: #000;
            padding: 12px 15px;
            font-weight: 600;
            font-size: 16px;
            line-height: 16px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px
        }

        .ladipage-message .ladipage-message-box .ladipage-message-text {
            display: -webkit-box;
            font-size: 14px;
            padding: 0 20px;
            margin-top: 10px;
            line-height: 18px;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis
        }

        .ladipage-message .ladipage-message-box .ladipage-message-close {
            display: block;
            position: absolute;
            right: 15px;
            bottom: 10px;
            margin: 0 auto;
            padding: 10px 0;
            border: none;
            width: 80px;
            text-transform: uppercase;
            text-align: center;
            color: #000;
            background-color: #e6e6e6;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            line-height: 14px;
            font-weight: 600;
            cursor: pointer
        }

        .lightbox-screen {
            display: none;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            z-index: 9000000080;
            background: rgba(0, 0, 0, .5)
        }

        .lightbox-screen .lightbox-close {
            position: absolute;
            z-index: 9000000090;
            cursor: pointer
        }

        .lightbox-screen .lightbox-hidden {
            display: none
        }

        .lightbox-screen .lightbox-close {
            width: 16px;
            height: 16px;
            margin: 10px;
            background-repeat: no-repeat;
            background-position: center center;
            background-image: url("data:image/svg+xml;utf8, %3Csvg%20width%3D%2224%22%20height%3D%2224%22%20viewBox%3D%220%200%2024%2024%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20fill%3D%22%23fff%22%3E%3Cpath%20fill-rule%3D%22evenodd%22%20clip-rule%3D%22evenodd%22%20d%3D%22M23.4144%202.00015L2.00015%2023.4144L0.585938%2022.0002L22.0002%200.585938L23.4144%202.00015Z%22%3E%3C%2Fpath%3E%3Cpath%20fill-rule%3D%22evenodd%22%20clip-rule%3D%22evenodd%22%20d%3D%22M2.00015%200.585938L23.4144%2022.0002L22.0002%2023.4144L0.585938%202.00015L2.00015%200.585938Z%22%3E%3C%2Fpath%3E%3C%2Fsvg%3E")
        }

        .overflow-hidden {
            overflow: hidden;
        }

        .ladi-transition {
            transition: all 150ms linear 0s;
        }

        .opacity-0 {
            opacity: 0;
        }

        .height-0 {
            height: 0 !important;
        }

        .pointer-events-none {
            pointer-events: none;
        }

        .transition-parent-collapse-height {
            transition: height 150ms linear 0s;
        }

        .transition-parent-collapse-top {
            transition: top 150ms linear 0s;
        }

        .transition-readmore {
            transition: height 350ms linear 0s;
        }

        .transition-collapse {
            transition: height 150ms linear 0s;
        }

        body.grab {
            cursor: grab;
        }

        .ladi-wraper {
            width: 100%;
            min-height: 100%;
            overflow: hidden;
        }

        .ladi-container {
            position: relative;
            margin: 0 auto;
            height: 100%;
        }

        .ladi-element {
            position: absolute;
        }

        .ladi-overlay {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            pointer-events: none;
        }

        @media (hover: hover) {
            .ladi-check-hover {
                opacity: 0;
            }
        }

        .ladi-section {
            margin: 0 auto;
            position: relative;
        }

        .ladi-section[data-tab-id] {
            display: none;
        }

        .ladi-section.selected[data-tab-id] {
            display: block;
        }

        .ladi-section .ladi-section-background {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
            overflow: hidden;
        }

        .ladi-frame {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .ladi-frame .ladi-frame-background {
            height: 100%;
            width: 100%;
            pointer-events: none;
            transition: inherit;
        }

        .ladi-group {
            position: absolute;
            width: 100%;
            height: 100%;
        }

        .ladi-shape {
            position: absolute;
            width: 100%;
            height: 100%;
            pointer-events: none;
        }

        .ladi-cart-number {
            position: absolute;
            top: -2px;
            right: -7px;
            background: #f36e36;
            text-align: center;
            width: 18px;
            height: 18px;
            line-height: 18px;
            font-size: 12px;
            font-weight: bold;
            color: #fff;
            border-radius: 100%;
        }

        .ladi-html-code {
            position: absolute;
            width: 100%;
            height: 100%;
        }

        .ladi-image {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .ladi-image .ladi-image-background {
            background-repeat: no-repeat;
            background-position: left top;
            background-size: cover;
            background-attachment: scroll;
            background-origin: content-box;
            position: absolute;
            margin: 0 auto;
            width: 100%;
            height: 100%;
            pointer-events: none;
        }

        .ladi-headline {
            width: 100%;
            display: inline-block;
            word-break: break-word;
            background-size: cover;
            background-position: center center;
        }

        .ladi-headline a {
            text-decoration: underline;
        }

        .ladi-paragraph {
            width: 100%;
            display: inline-block;
            word-break: break-word;
        }

        .ladi-paragraph a {
            text-decoration: underline;
        }

        .ladi-line {
            position: relative;
        }

        .ladi-line .ladi-line-container {
            border-bottom: 0 !important;
            border-right: 0 !important;
            width: 100%;
            height: 100%;
        }

        .ladi-hidden {
            display: none
        }

        .ladi-animation-hidden {
            visibility: hidden !important;
            opacity: 0 !important
        }

        .element-click-selected {
            cursor: pointer
        }

        .is-2nd-click {
            cursor: pointer
        }

        .ladi-button-shape.is-2nd-click,
        .ladi-accordion-shape.is-2nd-click {
            z-index: 1
        }

        .backdrop-popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 90000060
        }

        .backdrop-dropbox {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 90000040
        }

        .ladi-lazyload {
            background-image: none !important;
        }

        .ladi-list-paragraph ul li.ladi-lazyload:before {
            background-image: none !important;
        }

        @media (min-width: 768px) {
            .ladi-fullwidth {
                width: 100vw !important;
                left: calc(-50vw + 50%) !important;
                box-sizing: border-box !important;
                transform: none !important;
            }
        }

        @media (max-width: 767px) {
            .ladi-element.ladi-auto-scroll {
                overflow-x: auto;
                overflow-y: hidden;
                width: 100% !important;
                left: 0 !important;
                -webkit-overflow-scrolling: touch;
            }

            [data-hint]:not([data-timeout-id-copied]):before,
            [data-hint]:not([data-timeout-id-copied]):after {
                display: none !important;
            }

            .ladi-section.ladi-auto-scroll {
                overflow-x: auto;
                overflow-y: hidden;
                -webkit-overflow-scrolling: touch;
            }
        }
    </style>
    <style id="style_page" type="text/css">
        body {
            direction: ltr;
        }

        @media (min-width: 768px) {
            .ladi-section .ladi-container {
                width: 960px;
            }
        }

        @media (max-width: 767px) {
            .ladi-section .ladi-container {
                width: 420px;
            }
        }

        body {
            font-family: "Open Sans", sans-serif
        }
    </style>
    <style id="style_element" type="text/css">
        #SECTION1>.ladi-overlay {
            background-color: rgba(0, 0, 0, 0.51);
        }

        #SECTION1>.ladi-section-background {
            background-image: radial-gradient(circle, rgb(255, 237, 0), rgb(255, 0, 0));
            background-color: initial;
            background-size: initial;
            background-origin: initial;
            background-position: initial;
            background-repeat: initial;
            background-attachment: initial;
            -webkit-background-clip: initial;
        }

        #IMAGE1>.ladi-image>.ladi-image-background,
        #IMAGE2>.ladi-image>.ladi-image-background,
        #IMAGE4>.ladi-image>.ladi-image-background,
        #IMAGE5>.ladi-image>.ladi-image-background,
        #SHAPE4,
        #SHAPE5,
        #SHAPE6,
        #SHAPE7,
        #IMAGE6>.ladi-image>.ladi-image-background,
        #IMAGE7>.ladi-image>.ladi-image-background,
        #IMAGE8>.ladi-image>.ladi-image-background {
            top: 0px;
            left: 0px;
        }

        #IMAGE1:hover>.ladi-image,
        #PARAGRAPH1>.ladi-paragraph:hover,
        #HEADLINE3>.ladi-headline:hover,
        #SHAPE1:hover>.ladi-shape,
        #PARAGRAPH2>.ladi-paragraph:hover,
        #SHAPE2:hover>.ladi-shape,
        #PARAGRAPH3>.ladi-paragraph:hover,
        #SHAPE3:hover>.ladi-shape,
        #IMAGE5:hover>.ladi-image,
        #FRAME1>.ladi-frame:hover,
        #HEADLINE5>.ladi-headline:hover,
        #HEADLINE6>.ladi-headline:hover,
        #SHAPE4:hover>.ladi-shape,
        #HEADLINE7>.ladi-headline:hover,
        #SHAPE5:hover>.ladi-shape,
        #HEADLINE8>.ladi-headline:hover,
        #SHAPE6:hover>.ladi-shape,
        #HEADLINE9>.ladi-headline:hover,
        #SHAPE7:hover>.ladi-shape,
        #HEADLINE10>.ladi-headline:hover {
            opacity: 1;
        }

        #PARAGRAPH1>.ladi-paragraph,
        #PARAGRAPH2>.ladi-paragraph,
        #PARAGRAPH3>.ladi-paragraph {
            font-family: Itim, cursive;
            font-size: 18px;
            line-height: 1.2;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #HEADLINE3>.ladi-headline {
            font-family: Itim, cursive;
            color: rgb(255, 255, 255);
        }

        #SHAPE1,
        #SHAPE2,
        #SHAPE3 {
            width: 24px;
            height: 24px;
        }

        #SHAPE1 svg:last-child,
        #SHAPE2 svg:last-child,
        #SHAPE3 svg:last-child {
            fill: rgb(255, 214, 0);
        }

        #IMAGE2>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s750x450/5c9ca0f6d8a4d128f5929f41/z4425468434344_53a5ca6374196a72b82e929a28bda58b-20230613033951-lecif.jpg");
        }

        #IMAGE2>.ladi-image,
        #IMAGE4>.ladi-image {
            border-radius: 6px;
        }

        #IMAGE4>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s750x450/5c9ca0f6d8a4d128f5929f41/z4425472665713_10d4c5d2b00465006bfcc415f15a4cb7-20230613040835--bho8.jpg");
        }

        #SECTION2>.ladi-overlay {
            background-color: rgba(1, 1, 1, 0.8);
        }

        #SECTION2>.ladi-section-background {
            background-size: cover;
            background-origin: content-box;
            background-position: 0% 0%;
            background-repeat: no-repeat;
            background-attachment: scroll;
        }

        #IMAGE5,
        #IMAGE5>.ladi-image>.ladi-image-background {
            width: 79.4545px;
            height: 30.4573px;
        }

        #IMAGE5 {
            top: 5.42435px;
        }

        #IMAGE5>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c7362c6c417ab07e5196b05/bo-cong-thuong-20200311062345-20200312040731.svg");
        }

        #FRAME1 {
            height: 41.306px;
        }

        #FRAME1>.ladi-frame>.ladi-frame-background {
            background-color: rgb(255, 255, 255);
        }

        #HEADLINE5 {
            width: 390px;
        }

        #HEADLINE5>.ladi-headline {
            font-size: 12px;
            line-height: 1.2;
            color: rgba(255, 255, 255, 0.9);
        }

        #HEADLINE6>.ladi-headline {
            font-weight: bold;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #SHAPE4 {
            height: 22.5469px;
        }

        #SHAPE4 svg:last-child,
        #SHAPE5 svg:last-child,
        #SHAPE6 svg:last-child,
        #SHAPE7 svg:last-child {
            fill: rgb(255, 255, 255);
        }

        #HEADLINE7 {
            top: 4px;
        }

        #HEADLINE7>.ladi-headline,
        #HEADLINE8>.ladi-headline,
        #HEADLINE9>.ladi-headline,
        #HEADLINE10>.ladi-headline {
            font-size: 14px;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #GROUP1 {
            height: 24px;
        }

        #SHAPE5,
        #SHAPE6 {
            width: 22.5469px;
            height: 22.5469px;
        }

        #HEADLINE8,
        #HEADLINE9,
        #HEADLINE10 {
            width: 292px;
        }

        #HEADLINE8,
        #HEADLINE9 {
            top: 2px;
            left: 33px;
        }

        #GROUP2,
        #GROUP3 {
            width: 325px;
            height: 22.5469px;
        }

        #SHAPE7 {
            width: 28.7993px;
            height: 22.5469px;
        }

        #HEADLINE10 {
            top: 3px;
            left: 35px;
        }

        #GROUP4 {
            width: 327px;
        }

        #IMAGE6,
        #IMAGE6>.ladi-image>.ladi-image-background {
            width: 87.8084px;
            height: 65.9222px;
        }

        #IMAGE6>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/leao-tires-20230525075241-hbmaq.png");
        }

        #IMAGE7,
        #IMAGE7>.ladi-image>.ladi-image-background {
            width: 223.722px;
            height: 50.561px;
        }

        #IMAGE7>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c9ca0f6d8a4d128f5929f41/cdnlogocom_michelin-20230617041157-br8ci.svg");
        }

        #IMAGE8,
        #IMAGE8>.ladi-image>.ladi-image-background {
            width: 95.338px;
            height: 71.5751px;
        }

        #IMAGE8>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/atlas-20230525075241-2-ar0.png");
        }

        #LINE1>.ladi-line>.ladi-line-container,
        #LINE2>.ladi-line>.ladi-line-container {
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            border-right: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            border-left: 0px !important;
        }

        #LINE1>.ladi-line,
        #LINE2>.ladi-line {
            width: 100%;
            padding: 8px 0px;
        }

        #HTML_CODE1,
        #HTML_CODE2 {
            width: 340px;
            height: 70px;
        }

        @media (min-width: 768px) {
            #SECTION1 {
                height: 578px;
            }

            #IMAGE1,
            #IMAGE1>.ladi-image>.ladi-image-background {
                width: 149.231px;
                height: 109px;
            }

            #IMAGE1 {
                top: 140.667px;
                left: -54px;
            }

            #IMAGE1>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s450x450/5c9ca0f6d8a4d128f5929f41/atlas-20230525075241-2-ar0.png");
            }

            #PARAGRAPH1 {
                width: 478px;
                top: 297px;
                left: 39px;
            }

            #HEADLINE3 {
                width: 688px;
                top: 178px;
                left: 0px;
            }

            #HEADLINE3>.ladi-headline {
                font-size: 40px;
                line-height: 1.2;
                text-align: left;
            }

            #SHAPE1 {
                top: 296px;
                left: 0px;
            }

            #PARAGRAPH2 {
                width: 685px;
                top: 355px;
                left: 39px;
            }

            #SHAPE2 {
                top: 355px;
                left: 0px;
            }

            #PARAGRAPH3 {
                width: 699px;
                top: 423px;
                left: 39px;
            }

            #SHAPE3 {
                top: 423px;
                left: 0px;
            }

            #IMAGE2,
            #IMAGE2>.ladi-image>.ladi-image-background {
                width: 422px;
                height: 140.667px;
            }

            #IMAGE2 {
                top: 0px;
                left: 0px;
            }

            #IMAGE4,
            #IMAGE4>.ladi-image>.ladi-image-background {
                width: 421.437px;
                height: 140.667px;
            }

            #IMAGE4 {
                top: 0px;
                left: 538.563px;
            }

            #SECTION2 {
                height: 330px;
            }

            #SECTION2>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s1440x330/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE5 {
                left: 6.214px;
            }

            #FRAME1 {
                width: 96px;
                top: 277.5px;
                left: 864px;
            }

            #HEADLINE5 {
                top: 291.153px;
                left: 10px;
            }

            #HEADLINE5>.ladi-headline {
                text-align: left;
            }

            #HEADLINE6 {
                width: 379px;
                top: 90.3265px;
                left: 21px;
            }

            #HEADLINE6>.ladi-headline {
                font-size: 22px;
            }

            #SHAPE4 {
                width: 22.5469px;
            }

            #HEADLINE7 {
                width: 421px;
                left: 33px;
            }

            #GROUP1 {
                width: 454px;
                top: 134.545px;
                left: 21px;
            }

            #GROUP2 {
                top: 168.331px;
                left: 21px;
            }

            #GROUP3 {
                top: 201.665px;
                left: 21px;
            }

            #GROUP4 {
                height: 23px;
                top: 234.997px;
                left: 21px;
            }

            #IMAGE6 {
                top: -1.4222px;
                left: 277.139px;
            }

            #IMAGE7 {
                top: 6.2584px;
                left: 550.139px;
            }

            #IMAGE8 {
                top: -4.24865px;
                left: 409.831px;
            }

            #LINE1 {
                width: 752px;
                top: 67.3265px;
                left: 81.5px;
            }

            #LINE2 {
                width: 960px;
                top: 262px;
                left: 0px;
            }

            #HTML_CODE1 {
                top: 190.878px;
                left: 620px;
            }

            #HTML_CODE2 {
                top: 111.545px;
                left: 620px;
            }
        }

        @media (max-width: 767px) {
            #SECTION1 {
                height: 822.845px;
            }

            #IMAGE1,
            #IMAGE1>.ladi-image>.ladi-image-background {
                width: 116.169px;
                height: 83px;
            }

            #IMAGE1 {
                top: 11px;
                left: 8.5px;
            }

            #IMAGE1>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s450x400/5c9ca0f6d8a4d128f5929f41/atlas-20230525075241-2-ar0.png");
            }

            #PARAGRAPH1,
            #HEADLINE3,
            #PARAGRAPH2,
            #PARAGRAPH3 {
                width: 355px;
            }

            #PARAGRAPH1 {
                top: 173px;
                left: 36px;
            }

            #HEADLINE3 {
                top: 51px;
                left: 44px;
            }

            #HEADLINE3>.ladi-headline {
                font-size: 36px;
                line-height: 0.944444;
            }

            #SHAPE1 {
                top: 173px;
                left: 8.5px;
            }

            #PARAGRAPH2 {
                top: 251.5px;
                left: 36px;
            }

            #SHAPE2 {
                top: 251.5px;
                left: 8.5px;
            }

            #PARAGRAPH3 {
                top: 352px;
                left: 44px;
            }

            #SHAPE3 {
                top: 352px;
                left: 8.5px;
            }

            #IMAGE2,
            #IMAGE2>.ladi-image>.ladi-image-background {
                width: 400px;
                height: 133.334px;
            }

            #IMAGE2 {
                top: 518px;
                left: 11.75px;
            }

            #IMAGE4,
            #IMAGE4>.ladi-image>.ladi-image-background {
                width: 400px;
                height: 133.512px;
            }

            #IMAGE4 {
                top: 660.334px;
                left: 11.75px;
            }

            #SECTION2 {
                height: 572.353px;
            }

            #SECTION2>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s768x572/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE5 {
                left: 60.7728px;
            }

            #FRAME1 {
                width: 201px;
                top: 492.657px;
                left: 109.5px;
            }

            #HEADLINE5 {
                top: 546.399px;
                left: 16.3619px;
            }

            #HEADLINE5>.ladi-headline {
                text-align: center;
            }

            #HEADLINE6 {
                width: 309px;
                top: 159.058px;
                left: 56.8619px;
            }

            #HEADLINE6>.ladi-headline {
                font-size: 18px;
            }

            #SHAPE4 {
                width: 23.7247px;
            }

            #HEADLINE7 {
                width: 388px;
                left: 34.7239px;
            }

            #GROUP1 {
                width: 422.724px;
                top: 192.006px;
                left: 5px;
            }

            #GROUP2 {
                top: 226.509px;
                left: 5px;
            }

            #GROUP3 {
                top: 259.56px;
                left: 5px;
            }

            #GROUP4 {
                height: 22.5469px;
                top: 292.61px;
                left: 5px;
            }

            #IMAGE6 {
                top: 2.82645px;
                left: 93.139px;
            }

            #IMAGE7 {
                top: 72.9222px;
                left: 93.139px;
            }

            #IMAGE8 {
                top: 0px;
                left: 221.675px;
            }

            #LINE1,
            #LINE2 {
                width: 400px;
            }

            #LINE1 {
                top: 125.058px;
                left: 5px;
            }

            #LINE2 {
                top: 475.657px;
                left: 10px;
            }

            #HTML_CODE1 {
                top: 405.658px;
                left: 41.3619px;
            }

            #HTML_CODE2 {
                top: 330.836px;
                left: 41.3619px;
            }
        }
    </style>
    <style id="style_lazyload" type="text/css">
        .ladi-overlay,
        .ladi-box,
        .ladi-button-background,
        .ladi-collection-item:before,
        .ladi-countdown-background,
        .ladi-form-item-background,
        .ladi-form-label-container .ladi-form-label-item.image,
        .ladi-frame-background,
        .ladi-gallery-view-item,
        .ladi-gallery-control-item,
        .ladi-headline,
        .ladi-image-background,
        .ladi-image-compare,
        .ladi-list-paragraph ul li:before,
        .ladi-section-background,
        .ladi-survey-option-background,
        .ladi-survey-option-image,
        .ladi-tabs-background,
        .ladi-video-background,
        .ladi-banner,
        .ladi-spin-lucky-screen,
        .ladi-spin-lucky-start {
            background-image: none !important;
        }
    </style>
	<link rel="stylesheet" href="assets/css/btnface.css">
</head>
<body>
	<%
		Dbconnect db = new Dbconnect();
		Get_data gdt = new Get_data();
		Chucnang cn = new Chucnang();
		
		ArrayList<String> list_size = gdt.Get_Size();
		ArrayList<String> list_vanh = gdt.Get_Vanh();
		
		ArrayList<Hangxe> data_hangxe = db.Data_Hang_Xe_Size_Lop();
		
		ArrayList<String> list_hangxe = new ArrayList<>();
		ArrayList<String> list_tenxe = new ArrayList<>();
		
		for(Hangxe h: db.Data_Hang_Xe_Size_Lop()){
			list_hangxe.add(h.getHang());
			list_tenxe.add(h.getTenxe());
		}
	
		list_hangxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_hangxe));
		list_tenxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_tenxe));
		
		ArrayList<Lopxe> lop = (ArrayList<Lopxe>) request.getAttribute("data_lop");
		
		String iPage = (String) request.getAttribute("Page_");
		
		String sapxep = (String) request.getAttribute("sapxep_");
		
		if(sapxep == null){
			sapxep = "md";
		}
		
		int count_lop = lop.size();
		
		String number = (String) session.getAttribute("number_cart");
		if(number == null){
			number = "0";
		}
	%>

	<button id="myBtn2" style="background:white;" onclick="chat_facebook()"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Messenger_logo_2018.svg/2048px-Facebook_Messenger_logo_2018.svg.png" title='Chát Messenger' width='40px'/></button>
    <script>
        function chat_facebook() {
		    var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
		    
		    if (isMobile) {
		        // Đường dẫn URL Scheme của Messenger
		        var messengerURL = "fb-messenger://user-thread/846226765756531";
		        // Thay thế {user-id} bằng ID của người dùng bạn muốn mở cuộc trò chuyện
		
		        // Chuyển hướng đến URL Scheme của Messenger
		        window.location.href = messengerURL;
		    } else {
				// nếu trên máy tính thì mở link url
		    	window.open("https://www.facebook.com/messages/t/846226765756531");
    		}            
        }
    </script>
	
	<!--PreLoader-->
	<div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div>
	<!--PreLoader Ends-->
	
	<!-- header -->
	<div style="padding: 0px;" class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="home"> <img src="assets/img/logo.png" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="home">Trang
										chủ</a></li>
								<li><a href="leao-atlas-michelin">Sản phẩm</a>
									<ul class="sub-menu">
										<li><a href="leao-atlas-michelin?page=1&th=leao">Lốp Leao</a></li>
										<li><a href="leao-atlas-michelin?page=1&th=atlas">Lốp Atlas</a></li>
										<li><a href="leao-atlas-michelin?page=1&th=michelin">Lốp Michelin</a></li>
									</ul></li>
								<li><a href="">Kiến thức lốp</a>
									<ul class="sub-menu">
										<li><a href="chat-luong-lop-leao">Chất lượng lốp Leao</a></li>
										<li><a href="">Chất lượng lốp Atlas</a></li>
									</ul></li>
								<li><a href="baohanh">Bảo hành</a></li>
								<li><a href="lienhe">Liên hệ</a></li>
								<li><a href="vechungtoi">Về chúng tôi</a></li>
								<li>
									<div class="header-icons">
										<a class="shopping-cart" href="Click_Button_Cart?jsp=index"><i
											class="fas fa-shopping-cart"></i>(<%=number %>)</a> <a
											class="mobile-hide search-bar-icon" href="#"><i
											class="fas fa-search"></i></a>
									</div>
								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" ><i
							class="fas fa-search"></i></a>
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Size lốp:</h3>
							<input id="text_timkiem" type="text" placeholder="VD: 215/60R16">
							<button onclick="click_timkiem()" type="submit">
								Tìm kiếm <i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search area -->

	<script type="text/javascript">
		function click_timkiem() {
		  var input = document.getElementById("text_timkiem");
		  var text_search = input.value;	
		  var url = "leao-atlas-michelin-loc-theo-size?sizelop=" + text_search;
	      window.location.href = url;
		}
	</script>

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Công ty lốp LEAO - ATLAS Việt Nam</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	
	<script type="text/javascript">
		function click_Vanhlop(vanh_) {
			// Lấy giá trị từ JSP
		    var list_size_raw = '<%= list_size %>';
			
			// do chuỗi chưa chuẩn nên bỏ kí tự đầu và cuối và tách bằng dấu ,
			var list_size_ = list_size_raw.slice(1, -1).split(',');

			// trỏ tới select sizelop
			var select = document.getElementById('sizelop');

			// clean sạch select
			while (select.options.length > 0) {
				select.remove(0);
			}
			
			//set giá trị đầu tiên cho option
			var option_1 = document.createElement("option");
			option_1.text = "Size lốp";
			select.appendChild(option_1);

			// đổ dữ liệu vào select
		    for (let index = 0; index < list_size_.length; index++) {
				if(list_size_[index].split(vanh_).length > 1){
					var option = document.createElement("option");
					option.text = list_size_[index].trim();
					option.value = list_size_[index].trim();
					select.appendChild(option);
				}				
			}	
		}	

		function click_sizelop(sizelop_){	
		    // Gửi cả hai giá trị lên servlet bằng cách chuyển hướng trang
			var url = "leao-atlas-michelin-loc-theo-size?sizelop=" + sizelop_;
		    window.location.href = url;
		}		
	</script>

	<script type="text/javascript">
		function click_hangxe(hangxe) {
			// Lấy giá trị từ JSP
		    var list_tenxe_raw = '<%= list_tenxe %>';	
			
			// do chuỗi chưa chuẩn nên bỏ kí tự đầu và cuối và tách bằng dấu ,
			var list_tenxe_ = list_tenxe_raw.slice(1, -1).split(',');
			
			// trỏ tới select sizelop
			var select = document.getElementById('tenxe');
	
			// clean sạch select
			while (select.options.length > 0) {
				select.remove(0);
			}
			
			//set giá trị đầu tiên cho option
			var option_1 = document.createElement("option");
			option_1.text = "Tên xe";
			select.appendChild(option_1);
	
			// đổ dữ liệu vào select
		    for (let index = 0; index < list_tenxe_.length; index++) {
				if(list_tenxe_[index].split(hangxe).length > 1){
					var option = document.createElement("option");
					option.text = list_tenxe_[index].trim();
					option.value = list_tenxe_[index].trim();
					select.appendChild(option);
				}
				
			}
		}
		
		function click_tenxe(tenxe) {
		    // Gửi cả hai giá trị lên servlet bằng cách chuyển hướng trang
			var url = "loc_theo_hang_xe?tenxe=" + tenxe;
		    window.location.href = url;
		}
	</script>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<strong style="font-size: 20px;">Lọc theo size lốp</strong>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="select-locsize">
		<select id="vanh" onchange="click_Vanhlop(this.value)">
			<option selected>Vành</option>
			<% for(String vanh_: list_vanh){ %>
				<option value="<%=vanh_ %>">
					<%=vanh_ %>
				</option>
				<%} %>
		
		</select>
	
		<select id="sizelop" onchange="click_sizelop(this.value)">
			<option selected>Size lốp</option>
			<option value=""></option>
		</select>
	</div>

	<div style="margin-left: auto; margin-right: auto; margin-top: 10px; border-top: 1px solid #BBBBBB; width: 70%;" class="line"></div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<strong style="font-size: 20px;">Tìm theo hãng xe</strong>
					</div>
			
				</div>
			</div>
		</div>
	</div>
	
	<div class="select-locsize">			
		<select id="hangxe" onchange="click_hangxe(this.value)">
			<option selected>Hãng</option>
			<% for(String hang_: list_hangxe){ %>
				<option value="<%=hang_ %>">
					<%=hang_ %>
				</option>
				<%} %>				
		</select>

		<select id="tenxe" onchange="click_tenxe(this.value)">
			<option selected>Tên xe</option>
			<option value=""></option>
		</select>
	</div>

	<div style="margin-left: auto; margin-right: auto; margin-top: 10px; border-top: 1px solid #BBBBBB; width: 70%;" class="line"></div>

	<div class="product-filters">
		<ul>
			<li onclick="click_thuonghieu(this)">Lốp Leao</li>
			<li onclick="click_thuonghieu(this)">Lốp Atlas</li>
			<li onclick="click_thuonghieu(this)">Lốp Michelin</li>
			<li class="active" onclick="click_thuonghieu(this)">Tất cả</li>
		</ul>
	</div>	
	
	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="select-sapxep">
				<div style="margin-right: auto;" class="nhan">	
					<p>Đang có <%=count_lop %> mã lốp</p>
				</div>
				<select style="margin-left: auto;" id="sapxep" onchange="click_sapxep(this.value)">
					<option <%=(sapxep.equals("md"))?"selected":"" %> value="md">Sắp xếp mặc định</option>
					<option <%=(sapxep.equals("az"))?"selected":"" %> value="az">A -> Z</option>
					<option <%=(sapxep.equals("za"))?"selected":"" %> value="za">Z -> A</option>
					<option <%=(sapxep.equals("hangaz"))?"selected":"" %> value="hangaz">Hãng: A-Z</option>
					<option <%=(sapxep.equals("hangza"))?"selected":"" %> value="hangza">Hãng: Z-A</option>					
					<option <%=(sapxep.equals("giatang"))?"selected":"" %> value="giatang">Giá: tăng dần</option>
					<option <%=(sapxep.equals("giagiam"))?"selected":"" %> value="giagiam">Giá: giảm dần</option>
				</select>
			</div>

			<div class="row">
				<%
				// đếm sô số lốp
				int countLop = gdt.soluong_lop(lop);

				// 8 sản phẩm 1 page
				int max_numberProduct = 8;

				// chia để tính số lượng page
				int pagenumber = cn.phannguyen(countLop, max_numberProduct);

				//tính page cuối
				if (cn.phandu(countLop, max_numberProduct) != 0) {
					pagenumber++;
				}

				// servlet đổ về index page người chọn

				int index_page = 1;
				if (iPage != null) {
					index_page = Integer.parseInt(iPage);
				}

				// tính chỉ số max của 1 page
				int max_index_page = (index_page * 8);

				// tính index bắt đầu chạy
				int index_start = max_index_page - 8;

				int count_index = 0;

				for (int i = index_start; i < max_index_page; i++) {
					if (i < countLop) {
				%>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
						<% String url_sp = "lop-" + lop.get(i).getThuonghieu() + "-" + cn.url_size_chuan(lop.get(i).getSize()) + "-" + cn.url_tensp_chuan(lop.get(i).getTensanpham()); %>
							<a href="san-pham/<%=cn.url_san_pham(lop.get(i).getThuonghieu(), lop.get(i).getSize(), lop.get(i).getTensanpham()) %>"><img
								src="assets/img/products/anhlop/<%=lop.get(i).getNamefolder() %>/main.jpg" alt=""></a>
						</div>
						<% String ten = lop.get(i).getSize() + " " + lop.get(i).getTensanpham(); %>
						<h6><%=cn.Rut_Gon_Ten_Lop(ten) %> </h6>
						
						<p class="product-price">
							<span> <%=lop.get(i).getThuonghieu() %>
							</span>
							<%=cn.chuan_hoa_gia(lop.get(i).getGiaban())+" VNĐ" %>
						</p>
						<div>
						<a href="CookieCart?masp=<%=lop.get(i).getMasp() %>&num=1&page=<%=index_page %>&jsp=sanpham-tatca&sapxep=<%=sapxep %>" onclick="themvaogio()"
							class="cart-btn"><i class="fas fa-shopping-cart"></i> Thêm
							vào giỏ</a>	
						</div>					
					</div>
				</div>
				<% }} %>

			</div>
			
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="pagination-wrap">
						<ul>
							<li><a href="leao-atlas-michelin?page=<%=(index_page == 1)?index_page:index_page-1 %>&th=all&sapxep=<%=sapxep %>"><<</a></li>	
							<li><a <%=(index_page == 1)?"hidden=''":"" %> href="leao-atlas-michelin?page=1&th=all&sapxep=<%=sapxep %>">1</a></li>							
							<%
								String show = "active";
							
								int tmp_index_page = index_page;
								if(index_page > (pagenumber - 3)){
									index_page = pagenumber - 3;
								}
								
								for(int i = index_page; i < (index_page + 3); i++){
									if(i == tmp_index_page){
										show = "active";
									}else{
										show = "";
									}
							%>							
							<li><a class="<%=show %>" href="leao-atlas-michelin?page=<%=i %>&th=all&sapxep=<%=sapxep %>"><%=i %></a></li>						
							<% } %>
							<li><a >...</a></li>
							<li><a class="<%=(tmp_index_page == pagenumber)?"active":"" %>" href="leao-atlas-michelin?page=<%=pagenumber %>&th=all&sapxep=<%=sapxep %>"><%=pagenumber %></a></li>
							<li><a href="leao-atlas-michelin?page=<%=(tmp_index_page == pagenumber)?tmp_index_page:tmp_index_page+1 %>&th=all&sapxep=<%=sapxep %>">>></a></li>	
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end products -->

	<script>
		function click_thuonghieu(li) {
			var value = li.innerHTML.split(' ')[1];

			if(value.toLowerCase() == 'leao'){
				value = "la";
			}
			
			if(value.toLowerCase() == 'atlas'){
				value = "al";
			}
			
			if(value.toLowerCase() == 'michelin'){
				value = "mc";
			}
			
			var url = "leao-atlas-michelin?page=1&th=" + value;
		    window.location.href = url;
			
			//alert(value.toLowerCase());
		}
		
		function click_sapxep(val) {
			var url = "leao-atlas-michelin?page=1&th=all&sapxep="+val;
		    window.location.href = url;
		}
	</script>

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->

    <svg xmlns="http://www.w3.org/2000/svg"
        style="width: 0px; height: 0px; position: absolute; overflow: hidden; display: none;">
        <symbol id="shape_aRSHwDZRrg" viewBox="0 0 32 32">
            <path
                d="M16 2.672C8.64 2.672 2.672 8.64 2.672 16S8.64 29.328 16 29.328c7.36 0 13.328-5.967 13.328-13.328S23.36 2.672 16 2.672zm0 25.59c-6.76 0-12.262-5.5-12.262-12.262S9.238 3.738 16 3.738c6.76 0 12.262 5.5 12.262 12.262S22.762 28.262 16 28.262z">
            </path>
            <path
                d="M22.667 11.24l-8.56 8.3-2.997-2.998c-.312-.312-.818-.312-1.13 0s-.313.818 0 1.13l3.554 3.556c.156.156.36.234.565.234.2 0 .4-.075.555-.225l9.124-8.848c.316-.31.324-.815.017-1.132-.31-.318-.814-.325-1.13-.018z">
            </path>
        </symbol>
    </svg>
    <div class="ladi-wraper">
        <div id="SECTION1" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-overlay"></div>
            <div class="ladi-container">
                <div id="IMAGE1" class='ladi-element'>
                    <div class='ladi-image ladi-transition'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="PARAGRAPH1" class='ladi-element'>
                    <div class='ladi-paragraph ladi-transition'>Đã chạy trên các con đường của Hoa Kỳ từ năm 1935</div>
                </div>
                <div id="HEADLINE3" class='ladi-element'>
                    <div class='ladi-headline ladi-transition'><span style="font-weight: bold;"><span
                                style="color: rgb(255, 214, 0);">&nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp;&nbsp;</span>&nbsp;</span>là một thương hiệu lốp xe chất lượng hàng đầu của Hoa Kỳ
                    </div>
                </div>
                <div id="SHAPE1" class='ladi-element'>
                    <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                            version="1.0" fit="" height="100%" width="100%" preserveAspectRatio="xMidYMid meet"
                            style="pointer-events: none; display: inline-block;" fill="rgba(255,214,0,1)">
                            <use xlink:href="#shape_aRSHwDZRrg"></use>
                        </svg></div>
                </div>
                <div id="PARAGRAPH2" class='ladi-element'>
                    <div class='ladi-paragraph ladi-transition'>Lốp Atlas được sử dụng trong gần 100 năm qua, nó đồng
                        nghĩa với chất lượng tuyệt vời, độ bền và độ tin cậy cao</div>
                </div>
                <div id="SHAPE2" class='ladi-element'>
                    <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                            version="1.0" fit="" height="100%" width="100%" preserveAspectRatio="xMidYMid meet"
                            style="pointer-events: none; display: inline-block;" fill="rgba(255,214,0,1)">
                            <use xlink:href="#shape_aRSHwDZRrg"></use>
                        </svg></div>
                </div>
                <div id="PARAGRAPH3" class='ladi-element'>
                    <div class='ladi-paragraph ladi-transition'>Lốp Atlas thiết kế tuân thủ nghiêm ngặt các thông số kỹ
                        thuật DOT của Hoa Kỳ, E1 của Germany, E2 của Pháp, E3 của Italia, E4 (ECE) của Châu âu, E9 của
                        Tây Ban Nha, … QCVN 34:2017/BGTVT và được sản xuất theo tiêu chuẩn chất lượng QS9000/ VDA6.1/
                        GB/ T19001/ISO9001 và TS16949.</div>
                </div>
                <div id="SHAPE3" class='ladi-element'>
                    <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                            version="1.0" fit="" height="100%" width="100%" preserveAspectRatio="xMidYMid meet"
                            style="pointer-events: none; display: inline-block;" fill="rgba(255,214,0,1)">
                            <use xlink:href="#shape_aRSHwDZRrg"></use>
                        </svg></div>
                </div>
                <div id="IMAGE2" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE4" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION2" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-overlay"></div>
            <div class="ladi-container">

                <div id="HEADLINE5" class='ladi-element'>
                    <h1 class='ladi-headline ladi-transition'>Copyrights © 2023 - GBM, All Rights Reserved.&nbsp;</h1>
                </div>
                <div id="HEADLINE6" class='ladi-element'>
                    <div class='ladi-headline ladi-transition'>CÔNG TY LEAO - ATLAS VIỆT NAM</div>
                </div>
                <div id="GROUP1" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE4" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z"></path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE7" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Địa chỉ: Số 1 Trần Thủ Độ, Hoàng Liệt, Hoàng Mai,
                                Hà Nội.<br></div>
                        </div>
                    </div>
                </div>
                <div id="GROUP2" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE5" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE8" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Hotline: + 84989131322</div>
                        </div>
                    </div>
                </div>
                <div id="GROUP3" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE6" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M20,4H4A2,2 0 0,0 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6A2,2 0 0,0 20,4M20,18H4V8L12,13L20,8V18M20,6L12,11L4,6V6H20V6Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE9" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Email: alphayvietnam@gmail.com</div>
                        </div>
                    </div>
                </div>
                <div id="GROUP4" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE7" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M16.36,14C16.44,13.34 16.5,12.68 16.5,12C16.5,11.32 16.44,10.66 16.36,10H19.74C19.9,10.64 20,11.31 20,12C20,12.69 19.9,13.36 19.74,14M14.59,19.56C15.19,18.45 15.65,17.25 15.97,16H18.92C17.96,17.65 16.43,18.93 14.59,19.56M14.34,14H9.66C9.56,13.34 9.5,12.68 9.5,12C9.5,11.32 9.56,10.65 9.66,10H14.34C14.43,10.65 14.5,11.32 14.5,12C14.5,12.68 14.43,13.34 14.34,14M12,19.96C11.17,18.76 10.5,17.43 10.09,16H13.91C13.5,17.43 12.83,18.76 12,19.96M8,8H5.08C6.03,6.34 7.57,5.06 9.4,4.44C8.8,5.55 8.35,6.75 8,8M5.08,16H8C8.35,17.25 8.8,18.45 9.4,19.56C7.57,18.93 6.03,17.65 5.08,16M4.26,14C4.1,13.36 4,12.69 4,12C4,11.31 4.1,10.64 4.26,10H7.64C7.56,10.66 7.5,11.32 7.5,12C7.5,12.68 7.56,13.34 7.64,14M12,4.03C12.83,5.23 13.5,6.57 13.91,8H10.09C10.5,6.57 11.17,5.23 12,4.03M18.92,8H15.97C15.65,6.75 15.19,5.55 14.59,4.44C16.43,5.07 17.96,6.34 18.92,8M12,2C6.47,2 2,6.5 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE10" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Website: <a style="color: white;" href="https://www.lopoto.online"
                                    target="_self">https://www.lopoto.online</a></div>
                        </div>
                    </div>
                </div>
                <div id="IMAGE6" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE7" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE8" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="LINE1" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="LINE2" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="HTML_CODE1" class='ladi-element'>
                    <div class='ladi-html-code'><iframe
                            src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Flopleaovn&amp;tabs&amp;width=340&amp;height=70&amp;small_header=true&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=596952115747612"
                            width="340" height="70" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                            allowfullscreen="true"
                            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
                <div id="HTML_CODE2" class='ladi-element'>
                    <div class='ladi-html-code'><iframe
                            src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FLEAOVIETNAM%2F&amp;tabs&amp;width=340&amp;height=70&amp;small_header=true&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=596952115747612"
                            width="340" height="70" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                            allowfullscreen="true"
                            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="backdrop-popup" class="backdrop-popup"></div>
    <div id="backdrop-dropbox" class="backdrop-dropbox"></div>
    <div id="lightbox-screen" class="lightbox-screen"></div>
    <script id="script_lazyload"
        type="text/javascript">window.lazyload_run = function (dom, is_first, check_dom_rect) { if (check_dom_rect && (document.body.clientWidth <= 0 || document.body.clientheight <= 0)) { return setTimeout(function () { window.lazyload_run(dom, is_first, check_dom_rect); }, 1); } var style_lazyload = document.getElementById('style_lazyload'); var list_element_lazyload = dom.querySelectorAll('.ladi-overlay, .ladi-box, .ladi-button-background, .ladi-collection-item, .ladi-countdown-background, .ladi-form-item-background, .ladi-form-label-container .ladi-form-label-item.image, .ladi-frame-background, .ladi-gallery-view-item, .ladi-gallery-control-item, .ladi-headline, .ladi-image-background, .ladi-image-compare, .ladi-list-paragraph ul li, .ladi-section-background, .ladi-survey-option-background, .ladi-survey-option-image, .ladi-tabs-background, .ladi-video-background, .ladi-banner, .ladi-spin-lucky-screen, .ladi-spin-lucky-start'); var docEventScroll = window; for (var i = 0; i < list_element_lazyload.length; i++) { var rect = list_element_lazyload[i].getBoundingClientRect(); if (rect.x == "undefined" || rect.x == undefined || rect.y == "undefined" || rect.y == undefined) { rect.x = rect.left; rect.y = rect.top; } var offset_top = rect.y + window.scrollY; if (offset_top >= window.scrollY + window.innerHeight || window.scrollY >= offset_top + list_element_lazyload[i].offsetHeight) { list_element_lazyload[i].classList.add('ladi-lazyload'); } } if (typeof style_lazyload != "undefined" && style_lazyload != undefined) { style_lazyload.parentElement.removeChild(style_lazyload); } var currentScrollY = window.scrollY; var stopLazyload = function (event) { if (event.type == "scroll" && window.scrollY == currentScrollY) { currentScrollY = -1; return; } docEventScroll.removeEventListener('scroll', stopLazyload); list_element_lazyload = document.getElementsByClassName('ladi-lazyload'); while (list_element_lazyload.length > 0) { list_element_lazyload[0].classList.remove('ladi-lazyload'); } }; if (is_first) { var scrollEventPassive = null; try { var opts = Object.defineProperty({}, 'passive', { get: function () { scrollEventPassive = { passive: true }; } }); window.addEventListener('testPassive', null, opts); window.removeEventListener('testPassive', null, opts); } catch (e) { } docEventScroll.addEventListener('scroll', stopLazyload, scrollEventPassive); } return dom; }; window.lazyload_run(document, true, true);</script>
    <!--[if lt IE 9]><script src="https://w.ladicdn.com/v2/source/html5shiv.min.js?v=1686980876231"></script><script src="https://w.ladicdn.com/v2/source/respond.min.js?v=1686980876231"></script><![endif]-->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Itim&display=swap"
        rel="stylesheet" type="text/css">
        
    <script id="script_ladipage_run"
        type="text/javascript">(function () { var run = function () { if (typeof window.LadiPageScript == "undefined" || typeof window.ladi == "undefined" || window.ladi == undefined) { setTimeout(run, 100); return; } window.LadiPageApp = window.LadiPageApp || new window.LadiPageAppV2(); window.LadiPageScript.runtime.ladipage_id = '6487e8b10651a900127660db'; window.LadiPageScript.runtime.publish_platform = 'LADIPAGE'; window.LadiPageScript.runtime.version = '1686980876231'; window.LadiPageScript.runtime.cdn_url = 'https://w.ladicdn.com/v2/source/'; window.LadiPageScript.runtime.DOMAIN_FREE = ["preview.ladipage.me", "ldp.link", "ldp.page"]; window.LadiPageScript.runtime.bodyFontSize = 12; window.LadiPageScript.runtime.store_id = "5c9ca0f6d8a4d128f5929f41"; window.LadiPageScript.runtime.time_zone = 7; window.LadiPageScript.runtime.currency = "USD"; window.LadiPageScript.runtime.convert_replace_str = true; window.LadiPageScript.runtime.desktop_width = 960; window.LadiPageScript.runtime.mobile_width = 420; window.LadiPageScript.runtime.tracking_button_click = true; window.LadiPageScript.runtime.lang = "vi"; window.LadiPageScript.run(true); window.LadiPageScript.runEventScroll(); }; run(); })();</script>

		

	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

</body>
</html>