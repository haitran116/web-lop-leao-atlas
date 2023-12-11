<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
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
        abbr,
        acronym,
        address,
        applet,
        article,
        aside,
        audio,
        b,
        big,
        blockquote,
        canvas,
        caption,
        center,
        cite,
        code,
        dd,
        del,
        details,
        dfn,
        dl,
        dt,
        em,
        embed,
        fieldset,
        figcaption,
        figure,
        footer,
        form,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        hgroup,
        i,
        iframe,
        img,
        input,
        ins,
        kbd,
        label,
        legend,
        mark,
        menu,

        object,
        ol,
        output,
        p,
        pre,
        q,
        ruby,
        s,
        samp,
        section,
        select,
        small,
        span,
        strike,
        strong,
        sub,
        summary,
        sup,
        table,
        tbody,
        td,
        textarea,
        tfoot,
        th,
        thead,
        time,
        tr,
        tt,

        var,
        video {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }

        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section {
            display: block
        }


        ol,
        ul {
            list-style: none
        }

        blockquote,
        q {
            quotes: none
        }

        blockquote:after,
        blockquote:before,
        q:after,
        q:before {
            content: '';
            content: none
        }

        table {
            border-collapse: collapse;
            border-spacing: 0
        }

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

        .ladi-box {
            position: absolute;
            width: 100%;
            height: 100%;
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

        .ladi-line {
            position: relative;
        }

        .ladi-line .ladi-line-container {
            border-bottom: 0 !important;
            border-right: 0 !important;
            width: 100%;
            height: 100%;
        }

        a[data-action] {
            user-select: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            cursor: pointer
        }

        a:visited {
            color: inherit
        }

        a:link {
            color: inherit
        }

        [data-opacity="0"] {
            opacity: 0
        }

        [data-hidden="true"] {
            display: none
        }

        [data-action="true"] {
            cursor: pointer
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
        #SECTION2>.ladi-overlay {
            background-color: rgba(0, 0, 0, 0.4);
        }

        #SECTION2>.ladi-section-background {
            background-image: radial-gradient(circle, rgb(0, 4, 40), rgb(0, 78, 146));
            background-color: initial;
            background-size: initial;
            background-origin: initial;
            background-position: initial;
            background-repeat: initial;
            background-attachment: initial;
            -webkit-background-clip: initial;
        }

        #HEADLINE3>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 28px;
            font-weight: bold;
            line-height: 1.2;
            color: rgb(255, 255, 255);
            text-align: center;
        }

        #BOX4,
        #BOX7,
        #BOX15,
        #BOX18,
        #BOX21,
        #BOX24,
        #IMAGE44>.ladi-image>.ladi-image-background,
        #SHAPE41,
        #SHAPE42,
        #SHAPE43,
        #SHAPE44,
        #IMAGE45>.ladi-image>.ladi-image-background,
        #IMAGE46>.ladi-image>.ladi-image-background,
        #IMAGE47>.ladi-image>.ladi-image-background {
            top: 0px;
            left: 0px;
        }

        #BOX4>.ladi-box,
        #BOX7>.ladi-box,
        #BOX15>.ladi-box,
        #BOX18>.ladi-box,
        #BOX21>.ladi-box,
        #BOX24>.ladi-box {
            border-color: rgba(0, 0, 0, 0.16);
            box-shadow: rgba(0, 0, 0, 0.34) 0px 0px 10px 0px;
        }

        #BOX4>.ladi-box,
        #BOX7>.ladi-box,
        #BOX15>.ladi-box,
        #BOX18>.ladi-box,
        #BOX21>.ladi-box,
        #BOX24>.ladi-box,
        #FRAME41>.ladi-frame>.ladi-frame-background {
            background-color: rgb(255, 255, 255);
        }

        #HEADLINE5>.ladi-headline,
        #HEADLINE6>.ladi-headline,
        #HEADLINE8>.ladi-headline,
        #HEADLINE16>.ladi-headline,
        #HEADLINE19>.ladi-headline,
        #HEADLINE20>.ladi-headline,
        #HEADLINE22>.ladi-headline,
        #HEADLINE25>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 18px;
            line-height: 1.2;
            color: rgb(0, 0, 0);
            text-align: justify;
        }

        #SECTION45>.ladi-overlay {
            background-color: rgba(1, 1, 1, 0.8);
        }

        #SECTION45>.ladi-section-background {
            background-size: cover;
            background-origin: content-box;
            background-position: 0% 0%;
            background-repeat: no-repeat;
            background-attachment: scroll;
        }

        #IMAGE44,
        #IMAGE44>.ladi-image>.ladi-image-background {
            width: 79.4545px;
            height: 30.4573px;
        }

        #IMAGE44 {
            top: 5.42435px;
        }

        #IMAGE44>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c7362c6c417ab07e5196b05/bo-cong-thuong-20200311062345-20200312040731.svg");
        }

        #IMAGE44:hover>.ladi-image,
        #FRAME41>.ladi-frame:hover,
        #HEADLINE43>.ladi-headline:hover,
        #HEADLINE44>.ladi-headline:hover,
        #SHAPE41:hover>.ladi-shape,
        #HEADLINE45>.ladi-headline:hover,
        #SHAPE42:hover>.ladi-shape,
        #HEADLINE46>.ladi-headline:hover,
        #SHAPE43:hover>.ladi-shape,
        #HEADLINE47>.ladi-headline:hover,
        #SHAPE44:hover>.ladi-shape,
        #HEADLINE48>.ladi-headline:hover {
            opacity: 1;
        }

        #FRAME41 {
            height: 41.306px;
        }

        #HEADLINE43 {
            width: 390px;
        }

        #HEADLINE43>.ladi-headline {
            font-size: 12px;
            line-height: 1.2;
            color: rgba(255, 255, 255, 0.9);
        }

        #HEADLINE44>.ladi-headline {
            font-weight: bold;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #SHAPE41 {
            height: 22.5469px;
        }

        #SHAPE41 svg:last-child,
        #SHAPE42 svg:last-child,
        #SHAPE43 svg:last-child,
        #SHAPE44 svg:last-child {
            fill: rgb(255, 255, 255);
        }

        #HEADLINE45 {
            top: 4px;
        }

        #HEADLINE45>.ladi-headline,
        #HEADLINE46>.ladi-headline,
        #HEADLINE47>.ladi-headline,
        #HEADLINE48>.ladi-headline {
            font-size: 14px;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #GROUP47 {
            height: 24px;
        }

        #SHAPE42,
        #SHAPE43 {
            width: 22.5469px;
            height: 22.5469px;
        }

        #HEADLINE46,
        #HEADLINE47,
        #HEADLINE48 {
            width: 292px;
        }

        #HEADLINE46,
        #HEADLINE47 {
            top: 2px;
            left: 33px;
        }

        #GROUP48,
        #GROUP49 {
            width: 325px;
            height: 22.5469px;
        }

        #SHAPE44 {
            width: 28.7993px;
            height: 22.5469px;
        }

        #HEADLINE48 {
            top: 3px;
            left: 35px;
        }

        #GROUP50 {
            width: 327px;
        }

        #IMAGE45,
        #IMAGE45>.ladi-image>.ladi-image-background {
            width: 87.8084px;
            height: 65.9222px;
        }

        #IMAGE45>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/leao-tires-20230525075241-hbmaq.png");
        }

        #IMAGE46,
        #IMAGE46>.ladi-image>.ladi-image-background {
            width: 223.722px;
            height: 50.561px;
        }

        #IMAGE46>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c9ca0f6d8a4d128f5929f41/cdnlogocom_michelin-20230617041157-br8ci.svg");
        }

        #IMAGE47,
        #IMAGE47>.ladi-image>.ladi-image-background {
            width: 95.338px;
            height: 71.5751px;
        }

        #IMAGE47>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/atlas-20230525075241-2-ar0.png");
        }

        #LINE42>.ladi-line>.ladi-line-container,
        #LINE43>.ladi-line>.ladi-line-container {
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            border-right: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            border-left: 0px !important;
        }

        #LINE42>.ladi-line,
        #LINE43>.ladi-line {
            width: 100%;
            padding: 8px 0px;
        }

        #HTML_CODE44,
        #HTML_CODE45 {
            width: 340px;
            height: 70px;
        }

        @media (min-width: 768px) {
            #SECTION2 {
                height: 2400px;
            }

            #HEADLINE3 {
                width: 592px;
                top: 21.482px;
                left: 187.009px;
            }

            #BOX4,
            #GROUP41 {
                width: 959.01px;
                height: 373.003px;
            }

            #HEADLINE5,
            #HEADLINE6,
            #HEADLINE8,
            #HEADLINE16,
            #HEADLINE19,
            #HEADLINE20 {
                width: 912px;
            }

            #HEADLINE5,
            #HEADLINE8,
            #HEADLINE16,
            #HEADLINE19,
            #HEADLINE22 {
                top: 21.9965px;
                left: 18.0035px;
            }

            #HEADLINE6 {
                top: 148.663px;
                left: 18.0035px;
            }

            #GROUP41 {
                top: 84.5062px;
                left: 1.00549px;
            }

            #BOX7,
            #GROUP42 {
                width: 959.01px;
                height: 661.007px;
            }

            #GROUP42 {
                top: 476.823px;
                left: 0px;
            }

            #BOX15,
            #GROUP43 {
                width: 959.01px;
                height: 256.007px;
            }

            #GROUP43 {
                top: 1158.92px;
                left: 0.486115px;
            }

            #BOX18,
            #GROUP44 {
                width: 959.01px;
                height: 269.01px;
            }

            #HEADLINE20 {
                top: 125.313px;
                left: 18.0035px;
            }

            #GROUP44 {
                top: 1424.93px;
                left: 0.486115px;
            }

            #BOX21,
            #GROUP45 {
                width: 959.01px;
                height: 141px;
            }

            #HEADLINE22,
            #HEADLINE25 {
                width: 911px;
            }

            #GROUP45 {
                top: 1710.91px;
                left: 0px;
            }

            #BOX24,
            #GROUP46 {
                width: 959.01px;
                height: 461.021px;
            }

            #HEADLINE25 {
                top: 16.9094px;
                left: 24.005px;
            }

            #GROUP46 {
                top: 1868.98px;
                left: 0.495px;
            }

            #SECTION45 {
                height: 330px;
            }

            #SECTION45>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s1440x330/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE44 {
                left: 6.214px;
            }

            #FRAME41 {
                width: 96px;
                top: 277.5px;
                left: 864px;
            }

            #HEADLINE43 {
                top: 291.153px;
                left: 10px;
            }

            #HEADLINE43>.ladi-headline {
                text-align: left;
            }

            #HEADLINE44 {
                width: 379px;
                top: 90.3265px;
                left: 21px;
            }

            #HEADLINE44>.ladi-headline {
                font-size: 22px;
            }

            #SHAPE41 {
                width: 22.5469px;
            }

            #HEADLINE45 {
                width: 421px;
                left: 33px;
            }

            #GROUP47 {
                width: 454px;
                top: 134.545px;
                left: 21px;
            }

            #GROUP48 {
                top: 168.331px;
                left: 21px;
            }

            #GROUP49 {
                top: 201.665px;
                left: 21px;
            }

            #GROUP50 {
                height: 23px;
                top: 234.997px;
                left: 21px;
            }

            #IMAGE45 {
                top: -1.4222px;
                left: 277.139px;
            }

            #IMAGE46 {
                top: 6.2584px;
                left: 550.139px;
            }

            #IMAGE47 {
                top: -4.24865px;
                left: 409.831px;
            }

            #LINE42 {
                width: 752px;
                top: 67.3265px;
                left: 81.5px;
            }

            #LINE43 {
                width: 960px;
                top: 262px;
                left: 0px;
            }

            #HTML_CODE44 {
                top: 190.878px;
                left: 620px;
            }

            #HTML_CODE45 {
                top: 111.545px;
                left: 620px;
            }
        }

        @media (max-width: 767px) {
            #SECTION2 {
                height: 4247.98px;
            }

            #HEADLINE3 {
                width: 325px;
                top: 17px;
                left: 49.5px;
            }

            #BOX4,
            #GROUP41 {
                width: 375px;
                height: 673.993px;
            }

            #HEADLINE5,
            #HEADLINE6,
            #HEADLINE8,
            #HEADLINE16,
            #HEADLINE19,
            #HEADLINE22,
            #HEADLINE25 {
                width: 355px;
            }

            #HEADLINE5,
            #HEADLINE8,
            #HEADLINE16,
            #HEADLINE19,
            #HEADLINE22,
            #HEADLINE25 {
                top: 15px;
                left: 9.99998px;
            }

            #HEADLINE6 {
                top: 263.333px;
                left: 9.99998px;
            }

            #GROUP41 {
                top: 97.6669px;
                left: 24.4844px;
            }

            #BOX7,
            #GROUP42 {
                width: 375px;
                height: 1360px;
            }

            #GROUP42 {
                top: 785.653px;
                left: 22.5px;
            }

            #BOX15,
            #GROUP43 {
                width: 375px;
                height: 380px;
            }

            #GROUP43 {
                top: 2160px;
                left: 22.5px;
            }

            #BOX18,
            #GROUP44 {
                width: 375px;
                height: 463.993px;
            }

            #HEADLINE20 {
                width: 368px;
                top: 190.333px;
                left: 6.99998px;
            }

            #GROUP44 {
                top: 2545px;
                left: 23.5px;
            }

            #BOX21,
            #GROUP45 {
                width: 375px;
                height: 197px;
            }

            #GROUP45 {
                top: 3018.99px;
                left: 22.5px;
            }

            #BOX24,
            #GROUP46 {
                width: 375px;
                height: 987px;
            }

            #GROUP46 {
                top: 3225.99px;
                left: 22.5px;
            }

            #SECTION45 {
                height: 572.353px;
            }

            #SECTION45>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s768x572/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE44 {
                left: 60.7728px;
            }

            #FRAME41 {
                width: 201px;
                top: 492.657px;
                left: 109.5px;
            }

            #HEADLINE43 {
                top: 546.399px;
                left: 16.3619px;
            }

            #HEADLINE43>.ladi-headline {
                text-align: center;
            }

            #HEADLINE44 {
                width: 309px;
                top: 159.058px;
                left: 56.8619px;
            }

            #HEADLINE44>.ladi-headline {
                font-size: 18px;
            }

            #SHAPE41 {
                width: 23.7247px;
            }

            #HEADLINE45 {
                width: 388px;
                left: 34.7239px;
            }

            #GROUP47 {
                width: 422.724px;
                top: 192.006px;
                left: 5px;
            }

            #GROUP48 {
                top: 226.509px;
                left: 5px;
            }

            #GROUP49 {
                top: 259.56px;
                left: 5px;
            }

            #GROUP50 {
                height: 22.5469px;
                top: 292.61px;
                left: 5px;
            }

            #IMAGE45 {
                top: 2.82645px;
                left: 93.139px;
            }

            #IMAGE46 {
                top: 72.9222px;
                left: 93.139px;
            }

            #IMAGE47 {
                top: 0px;
                left: 221.675px;
            }

            #LINE42,
            #LINE43 {
                width: 400px;
            }

            #LINE42 {
                top: 125.058px;
                left: 5px;
            }

            #LINE43 {
                top: 475.657px;
                left: 10px;
            }

            #HTML_CODE44 {
                top: 405.658px;
                left: 41.3619px;
            }

            #HTML_CODE45 {
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
	String number = (String) session.getAttribute("number_cart");
	if (number == null) {
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
						<p style="font-size: 20px;">CÔNG TY LEAO - ATLAS VIỆT NAM</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

    <div class="ladi-wraper">
        <div id="SECTION2" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-overlay"></div>
            <div class="ladi-container">
                <div id="HEADLINE3" class='ladi-element'>
                    <h2 class='ladi-headline'>Chính Sách Bảo Hành Lốp <span style="color: rgb(255, 145, 77);">LEAO &amp;
                            ATLAS</span></h2>
                </div>
                <div id="GROUP41" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX4" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE5" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">1, Phạm vi bảo
                                    hành</span><br>&nbsp; Phạm vi bảo hành này được áp dụng cho lốp xe mang thương hiệu
                                LEAO &amp; ATLAS được sản xuất bởi nhà máy LLIT tại Thái Lan, có số D.O.T. và mã số
                                serial của lốp hợp lệ. Theo các điều khoản và điều kiện đặt ra ở đây, LEAO cam kết, xem
                                xét bảo hành tất cả các lỗi về chất lượng vật liệu hoặc các lỗi do quá trình sản xuất
                                trong điều kiện sử dụng bình thường.<br></h2>
                        </div>
                        <div id="HEADLINE6" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">2, Thời gian và điều kiện bảo
                                    hành</span><br>A. Thời hạn bảo hành được giới hạn tối đa là 05 năm (60 tháng) kể từ
                                ngày sản xuất hoặc chiều cao còn lại của gai lốp có thể sử dụng được trên 50% (TWI -
                                Tread Wear Indicator), tùy điều kiện nào đến trước.<br>B. Trước khi sử dụng, bất kỳ lốp
                                mới nào mà tìm thấy với tình trạng ngoại hình thiếu các yêu cầu bảo hành như đã nêu
                                trong mục 1 sẽ được thay thế bằng một lốp mới miễn phí.<br>C. Lốp bi hư hỏng như đã nêu
                                ở mục 1 sẽ được bồi thường giá trị đền bù sẽ tương đương với phần trăm còn lại của gai
                                lốp so với gai mới.<br>Giá trị đền bù = Giá trị lốp mới x (Gai lốp hiện tại / Gai lốp
                                mới)%<br></h2>
                        </div>
                    </div>
                </div>
                <div id="GROUP42" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX7" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE8" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">3, Phạm vi không áp dụng bảo
                                    hành</span><br>&nbsp; Lốp xe bị hư hỏng do một trong những điều kiện sau đây sẽ
                                không được bảo hành:<br>● Những lỗi do điều kiện đường sá (ví dụ: vết cắt, rách, vết
                                thâm, hư hỏng do tác động mạnh hoặc vết thủng).<br>● Tháo lắp lốp sai kỹ thuật, không
                                cân bằng lốp/bánh xe hoặc sửa chữa không đúng phương pháp.<br>● Lốp dùng sai chức năng,
                                bảo dưỡng không đúng kỹ thuật, đua xe, thiếu hoặc dư áp suất, hoặc các hình thức cố ý
                                làm giảm độ bền và gây hư hỏng khung lốp.<br>● Lai nạn, cháy, hóa chất gây ăn mòn, sửa
                                đổi lốp hoặc cố ý phá hỏng.<br>● Hư hỏng liên quan đến vấn đề vận chuyển và lưu giữ
                                không đúng kỹ thuật (mài mòn, biến dạng, v.v…).<br>● Sử dụng chất lỏng, rắn hoặc khí
                                khác khí ni-tơ, các-bon đi-ô-xít và không khí.<br>● Lốp được lắp hoặc sử dụng không phù
                                hợp với van hoặc mâm xe.<br>● Xe chở quá tải hoặc chạy với tốc độ cao hơn chỉ số tải
                                trọng và tốc độ cho phép được ghi ở hông lốp hoặc đã được khuyến cáo;<br>● Hiện tượng
                                mòn nhanh hoặc không đều gây bởi sai sót kỹ thuật của xe như sai góc đặt trục gây nên
                                hiện tượng mòn nhanh hoặc không đều và dẫn đến hư hỏng các lớp bố, hoặc khung lốp;<br>●
                                Lốp lắp không phù hợp hoặc không tuân thủ những khuyến cáo về kỹ thuật của nhà sản xuất
                                đã được công bố;<br>● Lốp mua từ đại lý không được ủy quyền; <br>● Do ảnh hưởng của thời
                                tiết hoặc khí ozone;<br>● Lốp được sử dụng vượt quá tuổi thọ quy định của mặt lốp. (Lốp
                                đã mòn quá vạch chỉ thị mòn).<br>● Hư hỏng do cân chỉnh bánh lái, cân bằng vành (mâm),
                                hư hỏng do phanh hoặc giảm xóc; hư hỏng do bơm hơi không đúng, chở quá tải, do dầu hoặc
                                hóa chất, lửa; hư hỏng do dùng dây xích quấn, dùng cho các cuộc đua hoặc các sự kiện
                                tranh tài khác, dùng trên các loại đường không đúng quy định; hư hỏng do cố ý làm giảm
                                độ bền hoặc va đập, lỗi vận hành, những hư hỏng và lạm dụng khác.<br>● Bất kỳ hư hỏng
                                nào gây ra bởi người mua hoặc người sử dụng không tuân thủ những đặc tính kỹ thuật hoặc
                                hướng dẫn của nhà sản xuất.<br>● Lốp mà mã số D.O.T hoặc tên thương hiệu bị loại bỏ cố
                                ý.<br></h2>
                        </div>
                    </div>
                </div>
                <div id="GROUP43" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX15" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE16" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">4, Bồi thường bảo
                                    hành</span><br>&nbsp; Bất kỳ bồi thường được thực hiện theo bảo hành này sẽ được
                                tính toán theo giá bán ghi trên Hóa đơn và tỷ lệ phần trăm của các lốp còn lại.<br><span
                                    style="font-weight: bold;">THÍ DỤ:</span><br>Nếu lốp hư hỏng của bạn có chiều sâu
                                gai lốp là 4mm so với lốp mới là 8mm, bạn sẽ nhận được 50% tiền bồi thường theo giá hóa
                                đơn bạn đã mua lốp.<br>Giá trị đền bù = Giá trị lốp x 50% (Gai lốp hiện tại / Gai lốp
                                mới)<br>- Chi phí tháo lắp, cân bằng và các chi phí dịch vụ khác được thanh toán bởi
                                khách hàng.<br></h2>
                        </div>
                    </div>
                </div>
                <div id="GROUP44" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX18" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE19" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">5, Thủ tục và qui trình bồi
                                    thường</span><br>● Khách mang hoá đơn mua hàng gốc đến địa điểm đã mua lốp LEAO của
                                chúng tôi.<br>● Hoàn thành và ký vào đơn yêu cầu bồi thường, giữ một bản sao cho hồ sơ
                                của bạn và để lại lốp với các đại lý để xử lý các yêu cầu bảo hành.<br></h2>
                        </div>
                        <div id="HEADLINE20" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">6, Nghĩa vụ của chủ sở
                                    hữu</span><br>● Tại thời điểm mua hàng, lốp xe phải được lắp đặt đúng với bơm đúng
                                áp suất yêu cầu, khuyến khích cân bằng lốp. Quan sát chỉnh vết bánh xe và xoay vòng lốp
                                thường xuyên theo khuyến nghị.<br>● Tham khảo bất kỳ đại lý ủy quyền LEAO hoặc điểm mua
                                hàng cho Đơn yêu cầu bảo hành.<br>● Chủ đầu chịu các chi phí dịch vụ và thuế áp
                                dụng.<br></h2>
                        </div>
                    </div>
                </div>
                <div id="GROUP45" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX21" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE22" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">7, Nghĩa vụ và yêu cầu của đại lý
                                </span><br>● Đại lý ủy quyền LEAO &amp; ATLAS hoặc khách hàng (người mua) nộp Đơn Yêu
                                Cầu Bảo Hành cùng với mã số DOT, số seri của lốp hư hỏng, đo độ mòn hoa lốp còn lại,
                                hình ảnh lốp hư hỏng, thiệt hại, vv để LEAO để xác nhận và xử lý các yêu cầu Bảo
                                Hành.<br></h2>
                        </div>
                    </div>
                </div>
                <div id="GROUP46" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX24" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE25" class='ladi-element'>
                            <h2 class='ladi-headline'><span style="font-weight: bold;">8, Lốp chăm sóc và hướng dẫn bảo
                                    trì</span><br>&nbsp; Hư hỏng lốp có thể dẫn đến tổn thương nghiêm trọng hoặc thương
                                tích cá nhân. Để giảm bớt những rủi ro này, chúng tôi đề nghị sau đây:<br>● Duy trì mức
                                áp suất hợp lý, không dưới hoặc trên giới hạn quy định. Luôn duy trì mức áp suất theo
                                các nhà sản xuất xe hoặc kiến nghị của LEAO &amp; ATLAS.<br>● Chỉnh vết bánh xe và cân
                                bằng lốp cần được kiểm tra đều đặn.<br>● Không nên quá tải, hãy tham khảo thông tin tải
                                trọng đúc trên lốp.<br>● Tránh lái xe trên lề đường, ổ gà, chướng ngại vật và các cạnh
                                của mặt đường…<br>● Không được lái xe đối với lốp quá mòn. Theo luật, lốp xe phải được
                                thay thế khi mòn đến TWI (chỉ dấu mòn của lốp).<br>● Kiểm tra lốp xe của bạn thường
                                xuyên đối với bất kỳ thiệt hại như vết xước, vết cắt, các đối tượng ngoại lai, những chỗ
                                phình ra.<br>● Trong khi lái xe, nếu bạn cảm thấy bánh lái không ổn định, hoặc nhận thấy
                                âm thanh hoặc rung động lạ, hãy dừng xe tại một nơi an toàn càng nhanh chóng càng tốt
                                rồi kiểm tra cả xe và lốp xe. Kiểm tra xem có sự biến dạng hoặc bất thường nào ờ lốp hay
                                không. Và thậm chí nếu không nhìn thấy sự bất thường nào, hãy tiếp tục lái xe càng chậm
                                càng tốt và nhờ một nhà cung cấp lốp kiểm tra giúp bạn.<br>● Đừng lái xe vượt quá tốc độ
                                giới hạn cho phép và vượt mức tối đa theo quy định của lốp.<br>● Hao mòn giữa các lốp
                                khác nhau là do vị trí sử dụng (trục đẩy hay trục lái). Để tránh tiếng ồn hoặc rung động
                                bất thường, và kéo dài tuổi thọ của lốp, khuyến khích xoay vòng các lốp vào thời điểm
                                phù hợp.<br></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
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
        
        <div id="SECTION45" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-overlay"></div>
            <div class="ladi-container">

                <div id="HEADLINE43" class='ladi-element'>
                    <div class='ladi-headline ladi-transition'>Copyrights © 2023 - GBM, All Rights Reserved.&nbsp;</div>
                </div>
                <div id="HEADLINE44" class='ladi-element'>
                    <div class='ladi-headline ladi-transition'>CÔNG TY LEAO - ATLAS VIỆT NAM</div>
                </div>
                <div id="GROUP47" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE41" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z"></path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE45" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Địa chỉ: Số 1 Trần Thủ Độ, Hoàng Liệt, Hoàng Mai,
                                Hà Nội.<br></div>
                        </div>
                    </div>
                </div>
                <div id="GROUP48" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE42" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE46" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Hotline: + 84989131322</div>
                        </div>
                    </div>
                </div>
                <div id="GROUP49" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE43" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M20,4H4A2,2 0 0,0 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6A2,2 0 0,0 20,4M20,18H4V8L12,13L20,8V18M20,6L12,11L4,6V6H20V6Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE47" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Email: alphayvietnam@gmail.com</div>
                        </div>
                    </div>
                </div>
                <div id="GROUP50" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE44" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M16.36,14C16.44,13.34 16.5,12.68 16.5,12C16.5,11.32 16.44,10.66 16.36,10H19.74C19.9,10.64 20,11.31 20,12C20,12.69 19.9,13.36 19.74,14M14.59,19.56C15.19,18.45 15.65,17.25 15.97,16H18.92C17.96,17.65 16.43,18.93 14.59,19.56M14.34,14H9.66C9.56,13.34 9.5,12.68 9.5,12C9.5,11.32 9.56,10.65 9.66,10H14.34C14.43,10.65 14.5,11.32 14.5,12C14.5,12.68 14.43,13.34 14.34,14M12,19.96C11.17,18.76 10.5,17.43 10.09,16H13.91C13.5,17.43 12.83,18.76 12,19.96M8,8H5.08C6.03,6.34 7.57,5.06 9.4,4.44C8.8,5.55 8.35,6.75 8,8M5.08,16H8C8.35,17.25 8.8,18.45 9.4,19.56C7.57,18.93 6.03,17.65 5.08,16M4.26,14C4.1,13.36 4,12.69 4,12C4,11.31 4.1,10.64 4.26,10H7.64C7.56,10.66 7.5,11.32 7.5,12C7.5,12.68 7.56,13.34 7.64,14M12,4.03C12.83,5.23 13.5,6.57 13.91,8H10.09C10.5,6.57 11.17,5.23 12,4.03M18.92,8H15.97C15.65,6.75 15.19,5.55 14.59,4.44C16.43,5.07 17.96,6.34 18.92,8M12,2C6.47,2 2,6.5 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE48" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Website: <a style="color: white;" href="https://www.lopoto.online"
                                    target="_self">https://www.lopoto.online</a></div>
                        </div>
                    </div>
                </div>
                <div id="IMAGE45" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE46" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE47" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="LINE42" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="LINE43" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="HTML_CODE44" class='ladi-element'>
                    <div class='ladi-html-code'><iframe
                            src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Flopleaovn&amp;tabs&amp;width=340&amp;height=70&amp;small_header=true&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=596952115747612"
                            width="340" height="70" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                            allowfullscreen="true"
                            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
                <div id="HTML_CODE45" class='ladi-element'>
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
    <!--[if lt IE 9]><script src="https://w.ladicdn.com/v2/source/html5shiv.min.js?v=1686799949425"></script><script src="https://w.ladicdn.com/v2/source/respond.min.js?v=1686799949425"></script><![endif]-->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"
        type="text/css">

	
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