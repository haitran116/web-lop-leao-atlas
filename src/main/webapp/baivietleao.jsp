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

        .ladi-carousel {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .ladi-carousel .ladi-carousel-content {
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            transition: top 350ms ease-in-out, left 350ms ease-in-out;
        }

        .ladi-carousel .ladi-carousel-arrow {
            position: absolute;
            top: calc(50% - (33px) / 2);
            cursor: pointer;
            z-index: 90000040;
            width: 33px;
            height: 33px;
            background-repeat: no-repeat;
            background-position: center center;
            background-image: url("data:image/svg+xml;utf8, %3Csvg%20width%3D%2224%22%20height%3D%2224%22%20viewBox%3D%220%200%2024%2024%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20fill%3D%22%23000%22%3E%3Cpath%20fill-rule%3D%22evenodd%22%20clip-rule%3D%22evenodd%22%20d%3D%22M7.00015%200.585938L18.4144%2012.0002L7.00015%2023.4144L5.58594%2022.0002L15.5859%2012.0002L5.58594%202.00015L7.00015%200.585938Z%22%3E%3C%2Fpath%3E%3C%2Fsvg%3E");
        }

        .ladi-carousel .ladi-carousel-arrow-left {
            left: 5px;
            transform: rotateY(180deg);
            -webkit-transform: rotateY(180deg);
        }

        .ladi-carousel .ladi-carousel-arrow-right {
            right: 5px;
        }

        .ladi-carousel-indicators-circle {
            display: inline-flex;
            gap: 10px;
            position: absolute;
            bottom: -20px;
            left: 0;
            right: 0;
            margin: auto;
            width: fit-content;
        }

        .ladi-carousel-indicators-circle .item {
            width: 10px;
            height: 10px;
            background-color: #D6D6D6;
            border-radius: 100%;
            cursor: pointer;
            outline: 1px solid #fff;
        }

        .ladi-carousel-indicators-circle .item.selected,
        .ladi-carousel-indicators-circle .item:hover {
            background-color: #808080;
        }

        .ladi-carousel-indicators-number {
            display: inline-flex;
            gap: 10px;
            position: absolute;
            bottom: -20px;
            left: 0;
            right: 0;
            margin: auto;
            width: fit-content;
        }

        .ladi-carousel-indicators-number .item {
            width: 15px;
            height: 15px;
            background-color: #D6D6D6;
            border-radius: 100%;
            cursor: pointer;
            font-size: 10px;
            text-align: center;
            line-height: 15px;
            outline: 1px solid #fff;
        }

        .ladi-carousel-indicators-number .item.selected,
        .ladi-carousel-indicators-number .item:hover {
            background-color: #808080;
            color: #fff;
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

            .ladi-carousel .ladi-carousel-content {
                transition: top 300ms ease-in-out, left 300ms ease-in-out;
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
        #SECTION2>.ladi-section-background,
        #SECTION86>.ladi-section-background,
        #SECTION171>.ladi-section-background,
        #SECTION181>.ladi-section-background,
        #SECTION185>.ladi-section-background,
        #SECTION225>.ladi-section-background,
        #SECTION239>.ladi-section-background,
        #SECTION232>.ladi-section-background,
        #SECTION256>.ladi-section-background,
        #SECTION259>.ladi-section-background,
        #SECTION262>.ladi-section-background {
            background-color: rgb(255, 254, 254);
        }

        #BOX4 {
            left: 0px;
        }

        #BOX4>.ladi-box,
        #FRAME267>.ladi-frame>.ladi-frame-background {
            background-color: rgb(255, 255, 255);
        }

        #HEADLINE5,
        #BOX7,
        #GROUP267,
        #BOX10,
        #GROUP268,
        #BOX13,
        #GROUP269,
        #BOX16,
        #GROUP270,
        #BOX19,
        #GROUP271,
        #BOX22,
        #GROUP272,
        #BOX25,
        #GROUP273,
        #BOX28,
        #GROUP274,
        #BOX31,
        #GROUP275,
        #BOX34,
        #GROUP276,
        #BOX37,
        #GROUP277,
        #BOX40,
        #GROUP278,
        #BOX43,
        #GROUP279,
        #BOX46,
        #GROUP280,
        #BOX49,
        #GROUP281,
        #BOX52,
        #GROUP282,
        #BOX55,
        #GROUP283,
        #BOX58,
        #GROUP284,
        #BOX61,
        #GROUP285,
        #BOX64,
        #GROUP286,
        #BOX67,
        #GROUP287,
        #BOX70,
        #GROUP288,
        #BOX73,
        #GROUP289,
        #BOX76,
        #GROUP290,
        #BOX79,
        #GROUP291,
        #BOX82,
        #GROUP292,
        #IMAGE227>.ladi-image>.ladi-image-background {
            top: 0px;
        }

        #HEADLINE5>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-weight: bold;
            line-height: 1.2;
            color: rgb(1, 1, 1);
            text-align: center;
        }

        #BOX8,
        #BOX11,
        #BOX14,
        #BOX17,
        #BOX20,
        #BOX23,
        #BOX26,
        #BOX29,
        #BOX32,
        #BOX35,
        #BOX38,
        #BOX41,
        #BOX44,
        #BOX47,
        #BOX50,
        #BOX53,
        #BOX56,
        #BOX59,
        #BOX62,
        #BOX65,
        #BOX68,
        #BOX71,
        #BOX74,
        #BOX77,
        #BOX80,
        #BOX83 {
            height: 375px;
        }

        #BOX8>.ladi-box,
        #BOX11>.ladi-box,
        #BOX14>.ladi-box,
        #BOX17>.ladi-box,
        #BOX20>.ladi-box,
        #BOX23>.ladi-box,
        #BOX26>.ladi-box,
        #BOX29>.ladi-box,
        #BOX32>.ladi-box,
        #BOX35>.ladi-box,
        #BOX38>.ladi-box,
        #BOX41>.ladi-box,
        #BOX44>.ladi-box,
        #BOX47>.ladi-box,
        #BOX50>.ladi-box,
        #BOX53>.ladi-box,
        #BOX56>.ladi-box,
        #BOX59>.ladi-box,
        #BOX62>.ladi-box,
        #BOX65>.ladi-box,
        #BOX68>.ladi-box,
        #BOX71>.ladi-box,
        #BOX74>.ladi-box,
        #BOX77>.ladi-box,
        #BOX80>.ladi-box,
        #BOX83>.ladi-box,
        #BOX207>.ladi-box,
        #BOX208>.ladi-box {
            background-size: cover;
            background-origin: content-box;
            background-position: 50% 0%;
            background-repeat: no-repeat;
            background-attachment: scroll;
        }

        #PARAGRAPH9 {
            width: 329px;
        }

        #PARAGRAPH9>.ladi-paragraph,
        #HEADLINE12>.ladi-headline,
        #PARAGRAPH15>.ladi-paragraph,
        #PARAGRAPH18>.ladi-paragraph,
        #PARAGRAPH24>.ladi-paragraph,
        #PARAGRAPH27>.ladi-paragraph,
        #PARAGRAPH30>.ladi-paragraph,
        #PARAGRAPH33>.ladi-paragraph,
        #PARAGRAPH36>.ladi-paragraph,
        #PARAGRAPH39>.ladi-paragraph,
        #PARAGRAPH42>.ladi-paragraph,
        #PARAGRAPH45>.ladi-paragraph,
        #PARAGRAPH48>.ladi-paragraph,
        #PARAGRAPH51>.ladi-paragraph,
        #PARAGRAPH54>.ladi-paragraph,
        #PARAGRAPH57>.ladi-paragraph,
        #PARAGRAPH60>.ladi-paragraph,
        #PARAGRAPH63>.ladi-paragraph,
        #PARAGRAPH66>.ladi-paragraph,
        #PARAGRAPH69>.ladi-paragraph,
        #PARAGRAPH72>.ladi-paragraph,
        #PARAGRAPH75>.ladi-paragraph,
        #PARAGRAPH78>.ladi-paragraph,
        #PARAGRAPH81>.ladi-paragraph,
        #PARAGRAPH84>.ladi-paragraph {
            font-family: "Open Sans", sans-serif;
            font-size: 16px;
            line-height: 1.2;
            color: rgb(0, 0, 0);
            text-align: left;
        }

        #HEADLINE12 {
            width: 352px;
        }

        #PARAGRAPH15,
        #PARAGRAPH18,
        #PARAGRAPH21,
        #PARAGRAPH24,
        #PARAGRAPH27,
        #PARAGRAPH30,
        #PARAGRAPH33,
        #PARAGRAPH36,
        #PARAGRAPH39,
        #PARAGRAPH42,
        #PARAGRAPH45,
        #PARAGRAPH48,
        #PARAGRAPH51,
        #PARAGRAPH54,
        #PARAGRAPH57,
        #PARAGRAPH60,
        #PARAGRAPH63,
        #PARAGRAPH66,
        #PARAGRAPH69,
        #PARAGRAPH72,
        #PARAGRAPH75,
        #PARAGRAPH78,
        #PARAGRAPH81,
        #PARAGRAPH84 {
            width: 360px;
        }

        #PARAGRAPH21>.ladi-paragraph {
            font-family: "Open Sans", sans-serif;
            font-size: 14px;
            line-height: 1.4;
            color: rgb(0, 0, 0);
            text-align: left;
        }

        #HEADLINE85>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            line-height: 1.2;
            color: rgb(255, 152, 0);
            text-align: center;
        }

        #HEADLINE201>.ladi-headline,
        #HEADLINE216>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 26px;
            font-weight: bold;
            line-height: 1.2;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #HEADLINE202>.ladi-headline,
        #HEADLINE209>.ladi-headline,
        #HEADLINE265>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 18px;
            line-height: 1.2;
            color: rgb(1, 1, 1);
            text-align: left;
        }

        #IMAGE203>.ladi-image>.ladi-image-background,
        #IMAGE211>.ladi-image>.ladi-image-background,
        #IMAGE213>.ladi-image>.ladi-image-background,
        #IMAGE215>.ladi-image>.ladi-image-background,
        #IMAGE218>.ladi-image>.ladi-image-background,
        #IMAGE220>.ladi-image>.ladi-image-background,
        #IMAGE246>.ladi-image>.ladi-image-background,
        #IMAGE249>.ladi-image>.ladi-image-background,
        #IMAGE251>.ladi-image>.ladi-image-background,
        #IMAGE254>.ladi-image>.ladi-image-background,
        #IMAGE257>.ladi-image>.ladi-image-background,
        #IMAGE260>.ladi-image>.ladi-image-background,
        #IMAGE261>.ladi-image>.ladi-image-background,
        #IMAGE263>.ladi-image>.ladi-image-background,
        #IMAGE264>.ladi-image>.ladi-image-background,
        #IMAGE267>.ladi-image>.ladi-image-background,
        #SHAPE267,
        #SHAPE268,
        #SHAPE269,
        #SHAPE270,
        #IMAGE268>.ladi-image>.ladi-image-background,
        #IMAGE269>.ladi-image>.ladi-image-background,
        #IMAGE270>.ladi-image>.ladi-image-background {
            top: 0px;
            left: 0px;
        }

        #HEADLINE204>.ladi-headline,
        #HEADLINE206>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 18px;
            line-height: 1.2;
            color: rgb(1, 1, 1);
        }

        #HEADLINE205>.ladi-headline,
        #HEADLINE210>.ladi-headline,
        #HEADLINE212>.ladi-headline,
        #HEADLINE214>.ladi-headline,
        #HEADLINE219>.ladi-headline,
        #HEADLINE222>.ladi-headline,
        #HEADLINE226>.ladi-headline,
        #HEADLINE229>.ladi-headline,
        #HEADLINE240>.ladi-headline,
        #HEADLINE255>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 26px;
            font-weight: bold;
            line-height: 1.2;
            color: rgb(1, 1, 1);
            text-align: left;
        }

        #HEADLINE217>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 26px;
            font-weight: bold;
            line-height: 1.2;
            color: rgb(1, 1, 1);
        }

        #HEADLINE221>.ladi-headline,
        #HEADLINE223>.ladi-headline,
        #HEADLINE247>.ladi-headline,
        #HEADLINE228>.ladi-headline,
        #HEADLINE230>.ladi-headline,
        #HEADLINE250>.ladi-headline,
        #HEADLINE252>.ladi-headline,
        #HEADLINE242>.ladi-headline,
        #HEADLINE253>.ladi-headline {
            font-family: "Open Sans", sans-serif;
            font-size: 18px;
            line-height: 1.2;
            color: rgb(1, 1, 1);
            text-align: justify;
        }

        #IMAGE227 {
            height: 370px;
        }

        #IMAGE227>.ladi-image>.ladi-image-background {
            width: 294.553px;
            height: 370px;
            background-image: url("https://w.ladicdn.com/s600x700/5c7362c6c417ab07e5196b05/kiki-1555987718.jpg");
        }

        #SECTION267>.ladi-overlay {
            background-color: rgba(0, 0, 0, 0.51);
        }

        #SECTION267>.ladi-section-background {
            background-size: cover;
            background-origin: content-box;
            background-position: 0% 0%;
            background-repeat: no-repeat;
            background-attachment: scroll;
        }

        #IMAGE267,
        #IMAGE267>.ladi-image>.ladi-image-background {
            width: 79.4545px;
            height: 30.4573px;
        }

        #IMAGE267 {
            top: 5.42435px;
        }

        #IMAGE267>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c7362c6c417ab07e5196b05/bo-cong-thuong-20200311062345-20200312040731.svg");
        }

        #IMAGE267:hover>.ladi-image,
        #FRAME267>.ladi-frame:hover,
        #HEADLINE269>.ladi-headline:hover,
        #HEADLINE270>.ladi-headline:hover,
        #SHAPE267:hover>.ladi-shape,
        #HEADLINE271>.ladi-headline:hover,
        #SHAPE268:hover>.ladi-shape,
        #HEADLINE272>.ladi-headline:hover,
        #SHAPE269:hover>.ladi-shape,
        #HEADLINE273>.ladi-headline:hover,
        #SHAPE270:hover>.ladi-shape,
        #HEADLINE274>.ladi-headline:hover {
            opacity: 1;
        }

        #FRAME267 {
            height: 41.306px;
        }

        #HEADLINE269 {
            width: 390px;
        }

        #HEADLINE269>.ladi-headline {
            font-size: 12px;
            line-height: 1.2;
            color: rgba(255, 255, 255, 0.9);
        }

        #HEADLINE270>.ladi-headline {
            font-weight: bold;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #SHAPE267 {
            height: 22.5469px;
        }

        #SHAPE267 svg:last-child,
        #SHAPE268 svg:last-child,
        #SHAPE269 svg:last-child,
        #SHAPE270 svg:last-child {
            fill: rgb(255, 255, 255);
        }

        #HEADLINE271 {
            top: 4px;
        }

        #HEADLINE271>.ladi-headline,
        #HEADLINE272>.ladi-headline,
        #HEADLINE273>.ladi-headline,
        #HEADLINE274>.ladi-headline {
            font-size: 14px;
            line-height: 1.4;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        #GROUP293 {
            height: 24px;
        }

        #SHAPE268,
        #SHAPE269 {
            width: 22.5469px;
            height: 22.5469px;
        }

        #HEADLINE272,
        #HEADLINE273,
        #HEADLINE274 {
            width: 292px;
        }

        #HEADLINE272,
        #HEADLINE273 {
            top: 2px;
            left: 33px;
        }

        #GROUP294,
        #GROUP295 {
            width: 325px;
            height: 22.5469px;
        }

        #SHAPE270 {
            width: 28.7993px;
            height: 22.5469px;
        }

        #HEADLINE274 {
            top: 3px;
            left: 35px;
        }

        #GROUP296 {
            width: 327px;
        }

        #IMAGE268,
        #IMAGE268>.ladi-image>.ladi-image-background {
            width: 87.8084px;
            height: 65.9222px;
        }

        #IMAGE268>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/leao-tires-20230525075241-hbmaq.png");
        }

        #IMAGE269,
        #IMAGE269>.ladi-image>.ladi-image-background {
            width: 223.722px;
            height: 50.561px;
        }

        #IMAGE269>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/5c9ca0f6d8a4d128f5929f41/cdnlogocom_michelin-20230617041157-br8ci.svg");
        }

        #IMAGE270,
        #IMAGE270>.ladi-image>.ladi-image-background {
            width: 95.338px;
            height: 71.5751px;
        }

        #IMAGE270>.ladi-image>.ladi-image-background {
            background-image: url("https://w.ladicdn.com/s400x400/5c9ca0f6d8a4d128f5929f41/atlas-20230525075241-2-ar0.png");
        }

        #LINE267>.ladi-line>.ladi-line-container,
        #LINE268>.ladi-line>.ladi-line-container {
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            border-right: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            border-left: 0px !important;
        }

        #LINE267>.ladi-line,
        #LINE268>.ladi-line {
            width: 100%;
            padding: 8px 0px;
        }

        #HTML_CODE267,
        #HTML_CODE268 {
            width: 340px;
            height: 70px;
        }

        @media (min-width: 768px) {
            #SECTION2 {
                height: 559.948px;
            }

            #BOX4 {
                width: 429px;
                height: 376.5px;
                top: 141.438px;
            }

            #HEADLINE5 {
                width: 529px;
                left: 220.469px;
            }

            #HEADLINE5>.ladi-headline {
                font-size: 27px;
            }

            #CAROUSEL6,
            #BOX7,
            #GROUP267,
            #BOX10,
            #GROUP268,
            #BOX13,
            #GROUP269,
            #BOX16,
            #GROUP270,
            #BOX19,
            #GROUP271,
            #BOX22,
            #GROUP272,
            #BOX25,
            #GROUP273,
            #BOX28,
            #GROUP274,
            #BOX31,
            #GROUP275,
            #BOX34,
            #GROUP276,
            #BOX37,
            #GROUP277,
            #BOX40,
            #GROUP278,
            #BOX43,
            #GROUP279,
            #BOX46,
            #GROUP280,
            #BOX49,
            #GROUP281,
            #BOX52,
            #GROUP282,
            #BOX55,
            #GROUP283,
            #BOX58,
            #GROUP284,
            #BOX61,
            #GROUP285,
            #BOX64,
            #GROUP286,
            #BOX67,
            #GROUP287,
            #BOX70,
            #GROUP288,
            #BOX73,
            #GROUP289,
            #BOX76,
            #GROUP290,
            #BOX79,
            #GROUP291,
            #BOX82,
            #GROUP292 {
                width: 962px;
                height: 375px;
            }

            #CAROUSEL6 {
                top: 141.891px;
                left: 3.90625px;
            }

            #BOX7,
            #GROUP267,
            #BOX10,
            #BOX13,
            #BOX16,
            #BOX19,
            #BOX22,
            #BOX25,
            #BOX28,
            #BOX31,
            #BOX34,
            #BOX37,
            #BOX40,
            #BOX43,
            #BOX46,
            #BOX49,
            #BOX52,
            #BOX55,
            #BOX58,
            #BOX61,
            #BOX64,
            #BOX67,
            #BOX70,
            #BOX73,
            #BOX76,
            #BOX79,
            #BOX82 {
                left: 0px;
            }

            #BOX8 {
                width: 536px;
                top: 0px;
                left: 426px;
            }

            #BOX8>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/1-1554259313.jpg");
            }

            #PARAGRAPH9 {
                top: 63.5px;
                left: 52px;
            }

            #BOX11,
            #BOX14,
            #BOX17,
            #BOX20,
            #BOX23,
            #BOX26,
            #BOX29,
            #BOX32,
            #BOX35,
            #BOX38,
            #BOX41,
            #BOX44,
            #BOX47,
            #BOX50,
            #BOX53,
            #BOX56,
            #BOX59,
            #BOX62,
            #BOX65,
            #BOX68,
            #BOX71,
            #BOX74,
            #BOX77,
            #BOX80,
            #BOX83 {
                width: 535px;
                top: 0px;
                left: 427px;
            }

            #BOX11>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/2-1554259533.jpg");
            }

            #HEADLINE12 {
                top: 77.5px;
                left: 36px;
            }

            #GROUP268 {
                left: 962px;
            }

            #BOX14>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/3-1554267475.jpg");
            }

            #PARAGRAPH15,
            #PARAGRAPH75,
            #PARAGRAPH78,
            #PARAGRAPH81,
            #PARAGRAPH84 {
                top: 88.5px;
                left: 41px;
            }

            #GROUP269 {
                left: 1924px;
            }

            #BOX17>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/4-1554274459.jpg");
            }

            #PARAGRAPH18,
            #PARAGRAPH24,
            #PARAGRAPH27,
            #PARAGRAPH30,
            #PARAGRAPH33,
            #PARAGRAPH36,
            #PARAGRAPH39,
            #PARAGRAPH42,
            #PARAGRAPH45,
            #PARAGRAPH48,
            #PARAGRAPH51,
            #PARAGRAPH54,
            #PARAGRAPH57,
            #PARAGRAPH60,
            #PARAGRAPH63,
            #PARAGRAPH66,
            #PARAGRAPH69,
            #PARAGRAPH72 {
                top: 99.5px;
                left: 39px;
            }

            #GROUP270 {
                left: 2886px;
            }

            #BOX20>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/5-1554274516.jpg");
            }

            #PARAGRAPH21 {
                top: 17.5px;
                left: 32px;
            }

            #GROUP271 {
                left: 3848px;
            }

            #BOX23>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/6-1554274585.jpg");
            }

            #GROUP272 {
                left: 4810px;
            }

            #BOX26>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/7-1554274633.jpg");
            }

            #GROUP273 {
                left: 5772px;
            }

            #BOX29>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/8-1554274669.jpg");
            }

            #GROUP274 {
                left: 6734px;
            }

            #BOX32>.ladi-box,
            #BOX35>.ladi-box,
            #BOX38>.ladi-box,
            #BOX41>.ladi-box,
            #BOX44>.ladi-box,
            #BOX47>.ladi-box,
            #BOX50>.ladi-box,
            #BOX53>.ladi-box,
            #BOX56>.ladi-box,
            #BOX59>.ladi-box,
            #BOX62>.ladi-box,
            #BOX65>.ladi-box,
            #BOX68>.ladi-box,
            #BOX71>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/22-1554276700.jpg");
            }

            #GROUP275 {
                left: 7696px;
            }

            #GROUP276 {
                left: 8658px;
            }

            #GROUP277 {
                left: 9620px;
            }

            #GROUP278 {
                left: 10582px;
            }

            #GROUP279 {
                left: 11544px;
            }

            #GROUP280 {
                left: 12506px;
            }

            #GROUP281 {
                left: 13468px;
            }

            #GROUP282 {
                left: 14430px;
            }

            #GROUP283 {
                left: 15392px;
            }

            #GROUP284 {
                left: 16354px;
            }

            #GROUP285 {
                left: 17316px;
            }

            #GROUP286 {
                left: 18278px;
            }

            #GROUP287 {
                left: 19240px;
            }

            #GROUP288 {
                left: 20202px;
            }

            #BOX74>.ladi-box,
            #BOX77>.ladi-box,
            #BOX80>.ladi-box,
            #BOX83>.ladi-box {
                background-image: url("https://w.ladicdn.com/s850x700/5c7362c6c417ab07e5196b05/26-1554276883.jpg");
            }

            #GROUP289 {
                left: 21164px;
            }

            #GROUP290 {
                left: 22126px;
            }

            #GROUP291 {
                left: 23088px;
            }

            #GROUP292 {
                left: 24050px;
            }

            #HEADLINE85 {
                width: 776px;
                top: 55px;
                left: 97.9688px;
            }

            #HEADLINE85>.ladi-headline {
                font-size: 21px;
            }

            #GROUP3 {
                width: 965.906px;
                height: 517.938px;
                top: 25.9375px;
                left: -2.8125px;
            }

            #SECTION86 {
                height: 1184.86px;
            }

            #HEADLINE201,
            #HEADLINE202,
            #HEADLINE204,
            #HEADLINE205,
            #HEADLINE206,
            #HEADLINE209,
            #HEADLINE210,
            #HEADLINE212,
            #HEADLINE214,
            #HEADLINE216,
            #HEADLINE217,
            #HEADLINE219,
            #HEADLINE221,
            #HEADLINE222,
            #HEADLINE223,
            #HEADLINE247,
            #HEADLINE226,
            #HEADLINE228,
            #HEADLINE229,
            #HEADLINE230,
            #HEADLINE250,
            #HEADLINE252,
            #HEADLINE240,
            #HEADLINE242,
            #HEADLINE255,
            #HEADLINE253 {
                width: 962px;
            }

            #HEADLINE201 {
                top: -2.45263px;
                left: -2px;
            }

            #HEADLINE202 {
                top: 39.5625px;
                left: -2px;
            }

            #IMAGE203,
            #IMAGE203>.ladi-image>.ladi-image-background,
            #IMAGE218,
            #IMAGE218>.ladi-image>.ladi-image-background,
            #IMAGE246,
            #IMAGE246>.ladi-image>.ladi-image-background,
            #IMAGE251,
            #IMAGE251>.ladi-image>.ladi-image-background {
                width: 960px;
                height: 640px;
            }

            #IMAGE203 {
                top: 125.562px;
                left: 0px;
            }

            #IMAGE203>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/sommerreifen-test-2017-1200x800-f4e5688106361b62-1555986609.jpg");
            }

            #HEADLINE204 {
                top: 785.063px;
                left: -2px;
            }

            #HEADLINE204>.ladi-headline,
            #HEADLINE206>.ladi-headline,
            #HEADLINE217>.ladi-headline,
            #HEADLINE269>.ladi-headline {
                text-align: left;
            }

            #SECTION171 {
                height: 1824.8px;
            }

            #HEADLINE205 {
                top: -2.8125px;
                left: 1px;
            }

            #HEADLINE206 {
                top: 58.203px;
                left: -5px;
            }

            #BOX207,
            #BOX208 {
                width: 466.547px;
                height: 235.984px;
            }

            #BOX207 {
                top: 149.219px;
                left: 492.441px;
            }

            #BOX207>.ladi-box {
                background-image: url("https://w.ladicdn.com/s800x550/5c7362c6c417ab07e5196b05/hehe-1555986861.jpg");
            }

            #BOX208 {
                top: 152.203px;
                left: -4px;
            }

            #BOX208>.ladi-box {
                background-image: url("https://w.ladicdn.com/s800x550/5c7362c6c417ab07e5196b05/hihi-1555986925.jpg");
            }

            #HEADLINE209 {
                top: 408.192px;
                left: -2px;
            }

            #HEADLINE210 {
                top: 472.01px;
                left: -4px;
            }

            #IMAGE211,
            #IMAGE211>.ladi-image>.ladi-image-background {
                width: 763.406px;
                height: 610px;
            }

            #IMAGE211 {
                top: 543.203px;
                left: 95.508px;
            }

            #IMAGE211>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1100x950/5c7362c6c417ab07e5196b05/hoho-1555987234.jpg");
            }

            #HEADLINE212 {
                top: 1187px;
                left: 1px;
            }

            #IMAGE213,
            #IMAGE213>.ladi-image>.ladi-image-background {
                width: 709.594px;
                height: 567px;
            }

            #IMAGE213 {
                top: 1247.2px;
                left: 126.5px;
            }

            #IMAGE213>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1050x900/5c7362c6c417ab07e5196b05/haha-1555987332.jpg");
            }

            #SECTION181 {
                height: 1292.69px;
            }

            #HEADLINE214 {
                top: 13.4063px;
                left: -3.01523px;
            }

            #IMAGE215,
            #IMAGE215>.ladi-image>.ladi-image-background {
                width: 711.281px;
                height: 403.375px;
            }

            #IMAGE215 {
                top: 70.4216px;
                left: 123.5px;
            }

            #IMAGE215>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1050x750/5c7362c6c417ab07e5196b05/huhu-1555987440.jpg");
            }

            #HEADLINE216 {
                top: 511.406px;
                left: -2px;
            }

            #HEADLINE217 {
                top: 553.391px;
                left: -1px;
            }

            #IMAGE218 {
                top: 639.922px;
                left: -2px;
            }

            #IMAGE218>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/2-1555987532.jpg");
            }

            #SECTION185 {
                height: 1899.72px;
            }

            #HEADLINE219 {
                top: -1.29692px;
                left: 3px;
            }

            #IMAGE220,
            #IMAGE220>.ladi-image>.ladi-image-background,
            #IMAGE249,
            #IMAGE249>.ladi-image>.ladi-image-background {
                width: 460px;
                height: 407px;
            }

            #IMAGE220 {
                top: 81.7188px;
                left: 250px;
            }

            #IMAGE220>.ladi-image>.ladi-image-background,
            #IMAGE249>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s800x750/5c7362c6c417ab07e5196b05/keke-1555987713.jpg");
            }

            #HEADLINE221 {
                top: 503.719px;
                left: -2px;
            }

            #HEADLINE222 {
                top: 577.719px;
                left: -2px;
            }

            #HEADLINE223 {
                top: 629.719px;
                left: -6px;
            }

            #IMAGE246 {
                top: 705.219px;
                left: 2px;
            }

            #IMAGE246>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/3-1555987961.jpg");
            }

            #HEADLINE247 {
                top: 1361.72px;
                left: -7px;
            }

            #IMAGE249 {
                top: 1431.72px;
                left: 245px;
            }

            #SECTION225 {
                height: 1408.69px;
            }

            #HEADLINE226,
            #HEADLINE240 {
                top: -4.5e-05px;
                left: -1px;
            }

            #IMAGE227 {
                width: 289.5px;
                top: 83px;
                left: 309px;
            }

            #IMAGE227>.ladi-image>.ladi-image-background {
                left: -2.52654px;
            }

            #HEADLINE228 {
                top: 503.719px;
                left: -1px;
            }

            #HEADLINE229 {
                top: 577.719px;
                left: -1px;
            }

            #HEADLINE230 {
                top: 629.719px;
                left: -1px;
            }

            #HEADLINE250 {
                top: 42px;
                left: -1px;
            }

            #IMAGE251 {
                top: 678.5px;
                left: -2px;
            }

            #IMAGE251>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/5-1555988101.jpg");
            }

            #HEADLINE252 {
                top: 1337.72px;
                left: 2px;
            }

            #SECTION239 {
                height: 847px;
            }

            #HEADLINE242 {
                top: 741px;
                left: 2.99223px;
            }

            #IMAGE254,
            #IMAGE254>.ladi-image>.ladi-image-background {
                width: 674.359px;
                height: 511px;
            }

            #IMAGE254 {
                top: 150.313px;
                left: 146px;
            }

            #IMAGE254>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1000x850/5c7362c6c417ab07e5196b05/kuku-1555988198.jpg");
            }

            #HEADLINE255 {
                top: 688px;
                left: -2.0312px;
            }

            #HEADLINE253 {
                top: 45.0313px;
                left: 3.98441px;
            }

            #SECTION232 {
                height: 834.688px;
            }

            #IMAGE257,
            #IMAGE257>.ladi-image>.ladi-image-background {
                width: 959.516px;
                height: 820.297px;
            }

            #IMAGE257 {
                top: -1.1875px;
                left: 0.49999px;
            }

            #IMAGE257>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x1150/5c7362c6c417ab07e5196b05/10-1555988515.jpg");
            }

            #SECTION256 {
                height: 1336.69px;
            }

            #IMAGE260,
            #IMAGE260>.ladi-image>.ladi-image-background {
                width: 961.484px;
                height: 487.5px;
            }

            #IMAGE260 {
                top: -0.875px;
                left: -1.492px;
            }

            #IMAGE260>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x800/5c7362c6c417ab07e5196b05/11-1555988551.jpg");
            }

            #IMAGE261,
            #IMAGE261>.ladi-image>.ladi-image-background {
                width: 959.516px;
                height: 806.656px;
            }

            #IMAGE261 {
                top: 504.625px;
                left: 0.499985px;
            }

            #IMAGE261>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x1150/5c7362c6c417ab07e5196b05/12-1555988551.jpg");
            }

            #SECTION259 {
                height: 634.688px;
            }

            #IMAGE263,
            #IMAGE263>.ladi-image>.ladi-image-background {
                width: 961.5px;
                height: 619.922px;
            }

            #IMAGE263 {
                top: 4px;
                left: -1.50763px;
            }

            #IMAGE263>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/13-1555988598.jpg");
            }

            #SECTION262 {
                height: 728.688px;
            }

            #IMAGE264,
            #IMAGE264>.ladi-image>.ladi-image-background {
                width: 958.5px;
                height: 618px;
            }

            #IMAGE264 {
                top: 13.75px;
                left: 1.5px;
            }

            #IMAGE264>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s1300x950/5c7362c6c417ab07e5196b05/14-1555988598.jpg");
            }

            #HEADLINE265 {
                width: 611px;
                top: 660.75px;
                left: -1px;
            }

            #SECTION267 {
                height: 330px;
            }

            #SECTION267>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s1440x330/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE267 {
                left: 6.214px;
            }

            #FRAME267 {
                width: 96px;
                top: 277.5px;
                left: 864px;
            }

            #HEADLINE269 {
                top: 291.153px;
                left: 10px;
            }

            #HEADLINE270 {
                width: 379px;
                top: 90.3265px;
                left: 21px;
            }

            #HEADLINE270>.ladi-headline {
                font-size: 22px;
            }

            #SHAPE267 {
                width: 22.5469px;
            }

            #HEADLINE271 {
                width: 421px;
                left: 33px;
            }

            #GROUP293 {
                width: 454px;
                top: 134.545px;
                left: 21px;
            }

            #GROUP294 {
                top: 168.331px;
                left: 21px;
            }

            #GROUP295 {
                top: 201.665px;
                left: 21px;
            }

            #GROUP296 {
                height: 23px;
                top: 234.997px;
                left: 21px;
            }

            #IMAGE268 {
                top: -1.4222px;
                left: 277.139px;
            }

            #IMAGE269 {
                top: 6.2584px;
                left: 550.139px;
            }

            #IMAGE270 {
                top: -4.24865px;
                left: 409.831px;
            }

            #LINE267 {
                width: 752px;
                top: 67.3265px;
                left: 81.5px;
            }

            #LINE268 {
                width: 960px;
                top: 262px;
                left: 0px;
            }

            #HTML_CODE267 {
                top: 190.878px;
                left: 620px;
            }

            #HTML_CODE268 {
                top: 111.545px;
                left: 620px;
            }
        }

        @media (max-width: 767px) {
            #SECTION2 {
                height: 998.976px;
            }

            #BOX4 {
                width: 375px;
                height: 303.021px;
                top: 657.266px;
            }

            #HEADLINE5,
            #HEADLINE201,
            #HEADLINE202,
            #HEADLINE205,
            #HEADLINE209,
            #HEADLINE210,
            #HEADLINE212,
            #HEADLINE214,
            #HEADLINE216,
            #HEADLINE217,
            #HEADLINE221,
            #HEADLINE222,
            #HEADLINE223,
            #HEADLINE247,
            #HEADLINE228,
            #HEADLINE229,
            #HEADLINE230,
            #HEADLINE250,
            #HEADLINE252,
            #HEADLINE240,
            #HEADLINE242,
            #HEADLINE255,
            #HEADLINE253,
            #HEADLINE265 {
                width: 355px;
            }

            #HEADLINE5 {
                left: 10px;
            }

            #HEADLINE5>.ladi-headline {
                font-size: 25px;
            }

            #CAROUSEL6,
            #BOX7,
            #GROUP267,
            #BOX10,
            #GROUP268,
            #BOX13,
            #GROUP269,
            #BOX16,
            #GROUP270,
            #BOX19,
            #BOX22,
            #GROUP272,
            #BOX25,
            #GROUP273,
            #BOX28,
            #GROUP274,
            #BOX31,
            #GROUP275,
            #BOX34,
            #GROUP276,
            #BOX37,
            #GROUP277,
            #BOX40,
            #GROUP278,
            #BOX43,
            #GROUP279,
            #BOX46,
            #GROUP280,
            #BOX49,
            #GROUP281,
            #BOX52,
            #GROUP282,
            #BOX55,
            #GROUP283,
            #BOX58,
            #GROUP284,
            #BOX61,
            #GROUP285,
            #BOX64,
            #GROUP286,
            #BOX67,
            #GROUP287,
            #BOX70,
            #GROUP288,
            #BOX73,
            #GROUP289,
            #BOX76,
            #GROUP290,
            #BOX79,
            #GROUP291,
            #BOX82,
            #GROUP292 {
                width: 375px;
                height: 692.014px;
            }

            #CAROUSEL6 {
                top: 264.438px;
                left: 0px;
            }

            #BOX7,
            #BOX10,
            #BOX13,
            #BOX16,
            #BOX19,
            #BOX22,
            #BOX25,
            #BOX28,
            #BOX31,
            #BOX34,
            #BOX37,
            #BOX40,
            #BOX43,
            #BOX46,
            #BOX49,
            #BOX52,
            #BOX55,
            #BOX58,
            #BOX61,
            #BOX64,
            #BOX67,
            #BOX70,
            #BOX73,
            #BOX76,
            #BOX79,
            #BOX82 {
                left: 1.5e-05px;
            }

            #BOX8,
            #BOX11,
            #BOX14,
            #BOX17,
            #BOX20,
            #BOX23,
            #BOX26,
            #BOX29,
            #BOX32,
            #BOX35,
            #BOX38,
            #BOX41,
            #BOX44,
            #BOX47,
            #BOX50,
            #BOX53,
            #BOX56,
            #BOX59,
            #BOX62,
            #BOX65,
            #BOX68,
            #BOX71,
            #BOX74,
            #BOX77,
            #BOX80,
            #BOX83,
            #HEADLINE226 {
                width: 375px;
            }

            #BOX8,
            #BOX11,
            #BOX14,
            #BOX17,
            #BOX20,
            #BOX23,
            #BOX26,
            #BOX29,
            #BOX32,
            #BOX35,
            #BOX38,
            #BOX41,
            #BOX44,
            #BOX47,
            #BOX50,
            #BOX53,
            #BOX56,
            #BOX59,
            #BOX62,
            #BOX65,
            #BOX68,
            #BOX71,
            #BOX74,
            #BOX77,
            #BOX80,
            #BOX83 {
                top: 15px;
                left: 0px;
            }

            #BOX8>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/1-1554259313.jpg");
            }

            #PARAGRAPH9 {
                top: 405px;
                left: 23.0035px;
            }

            #GROUP267 {
                left: -1.5e-05px;
            }

            #BOX11>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/2-1554259533.jpg");
            }

            #HEADLINE12 {
                top: 405px;
                left: 11.5017px;
            }

            #GROUP268 {
                left: 375px;
            }

            #BOX14>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/3-1554267475.jpg");
            }

            #PARAGRAPH15,
            #PARAGRAPH18,
            #PARAGRAPH21,
            #PARAGRAPH24,
            #PARAGRAPH27,
            #PARAGRAPH30,
            #PARAGRAPH33,
            #PARAGRAPH36,
            #PARAGRAPH39,
            #PARAGRAPH42,
            #PARAGRAPH45,
            #PARAGRAPH48,
            #PARAGRAPH51,
            #PARAGRAPH54,
            #PARAGRAPH57,
            #PARAGRAPH60,
            #PARAGRAPH63,
            #PARAGRAPH66,
            #PARAGRAPH69,
            #PARAGRAPH72,
            #PARAGRAPH75,
            #PARAGRAPH78,
            #PARAGRAPH81,
            #PARAGRAPH84 {
                top: 405px;
                left: 7.5px;
            }

            #GROUP269 {
                left: 750px;
            }

            #BOX17>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/4-1554274459.jpg");
            }

            #GROUP270 {
                left: 1125px;
            }

            #BOX20>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/5-1554274516.jpg");
            }

            #GROUP271 {
                width: 375px;
                height: 738px;
                left: 1500px;
            }

            #BOX23>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/6-1554274585.jpg");
            }

            #GROUP272 {
                left: 1875px;
            }

            #BOX26>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/7-1554274633.jpg");
            }

            #GROUP273 {
                left: 2250px;
            }

            #BOX29>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/8-1554274669.jpg");
            }

            #GROUP274 {
                left: 2625px;
            }

            #BOX32>.ladi-box,
            #BOX35>.ladi-box,
            #BOX38>.ladi-box,
            #BOX41>.ladi-box,
            #BOX44>.ladi-box,
            #BOX47>.ladi-box,
            #BOX50>.ladi-box,
            #BOX53>.ladi-box,
            #BOX56>.ladi-box,
            #BOX59>.ladi-box,
            #BOX62>.ladi-box,
            #BOX65>.ladi-box,
            #BOX68>.ladi-box,
            #BOX71>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/22-1554276700.jpg");
            }

            #GROUP275 {
                left: 3000px;
            }

            #GROUP276 {
                left: 3375px;
            }

            #GROUP277 {
                left: 3750px;
            }

            #GROUP278 {
                left: 4125px;
            }

            #GROUP279 {
                left: 4500px;
            }

            #GROUP280 {
                left: 4875px;
            }

            #GROUP281 {
                left: 5250px;
            }

            #GROUP282 {
                left: 5625px;
            }

            #GROUP283 {
                left: 6000px;
            }

            #GROUP284 {
                left: 6375px;
            }

            #GROUP285 {
                left: 6750px;
            }

            #GROUP286 {
                left: 7125px;
            }

            #GROUP287 {
                left: 7500px;
            }

            #GROUP288 {
                left: 7875px;
            }

            #BOX74>.ladi-box,
            #BOX77>.ladi-box,
            #BOX80>.ladi-box,
            #BOX83>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x700/5c7362c6c417ab07e5196b05/26-1554276883.jpg");
            }

            #GROUP289 {
                left: 8250px;
            }

            #GROUP290 {
                left: 8625px;
            }

            #GROUP291 {
                left: 9000px;
            }

            #GROUP292 {
                left: 9375px;
            }

            #HEADLINE85,
            #HEADLINE204 {
                width: 365px;
            }

            #HEADLINE85 {
                top: 84.375px;
                left: 5px;
            }

            #HEADLINE85>.ladi-headline {
                font-size: 20px;
            }

            #GROUP3 {
                width: 375px;
                height: 960.286px;
                top: 21px;
                left: 22.5px;
            }

            #SECTION86 {
                height: 1349px;
            }

            #HEADLINE201,
            #HEADLINE205,
            #HEADLINE214,
            #HEADLINE240 {
                top: 15px;
                left: 32.5px;
            }

            #HEADLINE202,
            #HEADLINE250 {
                top: 94px;
                left: 32.5px;
            }

            #IMAGE203,
            #IMAGE203>.ladi-image>.ladi-image-background,
            #IMAGE218,
            #IMAGE218>.ladi-image>.ladi-image-background,
            #IMAGE246,
            #IMAGE246>.ladi-image>.ladi-image-background,
            #IMAGE251,
            #IMAGE251>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 250px;
            }

            #IMAGE203 {
                top: 277px;
                left: 22.5px;
            }

            #IMAGE203>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/sommerreifen-test-2017-1200x800-f4e5688106361b62-1555986609.jpg");
            }

            #HEADLINE204 {
                top: 542px;
                left: 27.5px;
            }

            #HEADLINE204>.ladi-headline,
            #HEADLINE206>.ladi-headline,
            #HEADLINE217>.ladi-headline {
                text-align: justify;
            }

            #SECTION171 {
                height: 1646px;
            }

            #HEADLINE206 {
                width: 369px;
                top: 126px;
                left: 23.5px;
            }

            #BOX207,
            #BOX208 {
                width: 375px;
                height: 235px;
            }

            #BOX207 {
                top: 281px;
                left: 22.5px;
            }

            #BOX207>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x550/5c7362c6c417ab07e5196b05/hehe-1555986861.jpg");
            }

            #BOX208 {
                top: 531px;
                left: 22.5px;
            }

            #BOX208>.ladi-box {
                background-image: url("https://w.ladicdn.com/s700x550/5c7362c6c417ab07e5196b05/hihi-1555986925.jpg");
            }

            #HEADLINE209 {
                top: 781px;
                left: 32.5px;
            }

            #HEADLINE210 {
                top: 892px;
                left: 32.5px;
            }

            #IMAGE211,
            #IMAGE211>.ladi-image>.ladi-image-background,
            #IMAGE213,
            #IMAGE213>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 299px;
            }

            #IMAGE211 {
                top: 939px;
                left: 22.5px;
            }

            #IMAGE211>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/hoho-1555987234.jpg");
            }

            #HEADLINE212 {
                top: 1253px;
                left: 32.5px;
            }

            #IMAGE213 {
                top: 1332px;
                left: 22.5px;
            }

            #IMAGE213>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/haha-1555987332.jpg");
            }

            #SECTION181 {
                height: 744px;
            }

            #IMAGE215,
            #IMAGE215>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 212px;
            }

            #IMAGE215 {
                top: 62px;
                left: 22.5px;
            }

            #IMAGE215>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x550/5c7362c6c417ab07e5196b05/huhu-1555987440.jpg");
            }

            #HEADLINE216 {
                top: 289.656px;
                left: 32.5px;
            }

            #HEADLINE217 {
                top: 336px;
                left: 32.5px;
            }

            #IMAGE218 {
                top: 479px;
                left: 22.5px;
            }

            #IMAGE218>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/2-1555987532.jpg");
            }

            #SECTION185 {
                height: 1495px;
            }

            #HEADLINE219 {
                width: 339px;
                top: 13px;
                left: 35.5px;
            }

            #IMAGE220,
            #IMAGE220>.ladi-image>.ladi-image-background,
            #IMAGE249,
            #IMAGE249>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 331px;
            }

            #IMAGE220 {
                top: 126px;
                left: 22.5px;
            }

            #IMAGE220>.ladi-image>.ladi-image-background,
            #IMAGE249>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x650/5c7362c6c417ab07e5196b05/keke-1555987713.jpg");
            }

            #HEADLINE221 {
                top: 472.781px;
                left: 32.5px;
            }

            #HEADLINE222 {
                top: 607px;
                left: 32.5px;
            }

            #HEADLINE223 {
                top: 686px;
                left: 32.5px;
            }

            #IMAGE246 {
                top: 797px;
                left: 22.5px;
            }

            #IMAGE246>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/3-1555987961.jpg");
            }

            #HEADLINE247 {
                top: 1062px;
                left: 32.5px;
            }

            #IMAGE249 {
                top: 1149px;
                left: 22.5px;
            }

            #SECTION225 {
                height: 1219px;
            }

            #HEADLINE226 {
                top: 15px;
                left: 26.5px;
            }

            #IMAGE227 {
                width: 289px;
                top: 157px;
                left: 65.5px;
            }

            #IMAGE227>.ladi-image>.ladi-image-background {
                left: -2.77654px;
            }

            #HEADLINE228 {
                top: 542px;
                left: 32.5px;
            }

            #HEADLINE229 {
                top: 629px;
                left: 32.5px;
            }

            #HEADLINE230 {
                top: 708px;
                left: 32.5px;
            }

            #IMAGE251 {
                top: 795px;
                left: 22.5px;
            }

            #IMAGE251>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/5-1555988101.jpg");
            }

            #HEADLINE252 {
                top: 1060px;
                left: 32.5px;
            }

            #SECTION239 {
                height: 678px;
            }

            #HEADLINE242 {
                top: 567px;
                left: 32.5px;
            }

            #IMAGE254,
            #IMAGE254>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 284px;
            }

            #IMAGE254 {
                top: 221px;
                left: 22.5px;
            }

            #IMAGE254>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x600/5c7362c6c417ab07e5196b05/kuku-1555988198.jpg");
            }

            #HEADLINE255 {
                top: 520.156px;
                left: 32.5px;
            }

            #HEADLINE253 {
                top: 62px;
                left: 32.5px;
            }

            #SECTION232 {
                height: 350px;
            }

            #IMAGE257,
            #IMAGE257>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 320px;
            }

            #IMAGE257,
            #IMAGE260,
            #IMAGE263,
            #IMAGE264 {
                top: 15px;
                left: 22.5px;
            }

            #IMAGE257>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x650/5c7362c6c417ab07e5196b05/10-1555988515.jpg");
            }

            #SECTION256 {
                height: 550px;
            }

            #IMAGE260,
            #IMAGE260>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 190px;
            }

            #IMAGE260>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x500/5c7362c6c417ab07e5196b05/11-1555988551.jpg");
            }

            #IMAGE261,
            #IMAGE261>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 315px;
            }

            #IMAGE261 {
                top: 220.125px;
                left: 22.5px;
            }

            #IMAGE261>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x650/5c7362c6c417ab07e5196b05/12-1555988551.jpg");
            }

            #SECTION259 {
                height: 271px;
            }

            #IMAGE263,
            #IMAGE263>.ladi-image>.ladi-image-background,
            #IMAGE264,
            #IMAGE264>.ladi-image>.ladi-image-background {
                width: 375px;
                height: 241px;
            }

            #IMAGE263>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x550/5c7362c6c417ab07e5196b05/13-1555988598.jpg");
            }

            #SECTION262 {
                height: 382px;
            }

            #IMAGE264>.ladi-image>.ladi-image-background {
                background-image: url("https://w.ladicdn.com/s700x550/5c7362c6c417ab07e5196b05/14-1555988598.jpg");
            }

            #HEADLINE265 {
                top: 271.781px;
                left: 32.5px;
            }

            #SECTION267 {
                height: 572.353px;
            }

            #SECTION267>.ladi-section-background {
                background-image: url("https://w.ladicdn.com/s768x572/5c7362c6c417ab07e5196b05/KYdDc01S20200313034718.jpg");
            }

            #IMAGE267 {
                left: 60.7728px;
            }

            #FRAME267 {
                width: 201px;
                top: 492.657px;
                left: 109.5px;
            }

            #HEADLINE269 {
                top: 546.399px;
                left: 16.3619px;
            }

            #HEADLINE269>.ladi-headline {
                text-align: center;
            }

            #HEADLINE270 {
                width: 309px;
                top: 159.058px;
                left: 56.8619px;
            }

            #HEADLINE270>.ladi-headline {
                font-size: 18px;
            }

            #SHAPE267 {
                width: 23.7247px;
            }

            #HEADLINE271 {
                width: 388px;
                left: 34.7239px;
            }

            #GROUP293 {
                width: 422.724px;
                top: 192.006px;
                left: 5px;
            }

            #GROUP294 {
                top: 226.509px;
                left: 5px;
            }

            #GROUP295 {
                top: 259.56px;
                left: 5px;
            }

            #GROUP296 {
                height: 22.5469px;
                top: 292.61px;
                left: 5px;
            }

            #IMAGE268 {
                top: 2.82645px;
                left: 93.139px;
            }

            #IMAGE269 {
                top: 72.9222px;
                left: 93.139px;
            }

            #IMAGE270 {
                top: 0px;
                left: 221.675px;
            }

            #LINE267,
            #LINE268 {
                width: 400px;
            }

            #LINE267 {
                top: 125.058px;
                left: 5px;
            }

            #LINE268 {
                top: 475.657px;
                left: 10px;
            }

            #HTML_CODE267 {
                top: 405.658px;
                left: 41.3619px;
            }

            #HTML_CODE268 {
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
            <div class="ladi-container">
                <div id="GROUP3" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="BOX4" class='ladi-element'>
                            <div class='ladi-box'></div>
                        </div>
                        <div id="HEADLINE5" class='ladi-element'>
                            <div class='ladi-headline'>BÁO CÁO KIỂM TRA LỐP MÙA HÈ 2017</div>
                        </div>
                        <div id="CAROUSEL6" class='ladi-element'>
                            <div class="ladi-carousel">
                                <div class='ladi-carousel-content'>
                                    <div id="GROUP267" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX7" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX8" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH9" class='ladi-element'>
                                                <div class='ladi-paragraph'><span
                                                        style="font-weight: bold; color: rgb(0, 0, 0);">PHANH KHẨN CẤP
                                                        TRỀN ĐƯỜNG ƯỚT VÀ KHÔ<br style="color: rgb(0, 0, 0);"></span>Ban
                                                    đầu, tất cả 52 ứng viên phải vượt qua một bài kiểm tra an toàn trong
                                                    vòng sơ loại.<br style="color: rgb(0, 0, 0);">Chúng tôi sẽ đo quãng
                                                    đường phanh khi phanh khẩn cấp từ tốc độ 80km/giờ trên đường ướt và
                                                    100 km/giờ trên đường khô cho đến khi xe dừng lại.<br
                                                        style="color: rgb(0, 0, 0);">Chỉ những ứng cử viên với quãng
                                                    đường phanh ngắn nhất trong tổng số (20 loại lốp màu xanh lá cây
                                                    trong bảng) sẽ được tiến hành các thử nghiệm tiếp theo</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP268" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX10" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX11" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="HEADLINE12" class='ladi-element'>
                                                <div class='ladi-headline'><span style="font-weight: bold;">LỐP CÓ MỨC ĐỘ
                                                        AN TOÀN CHỐNG TRƯỢT CAO NHẤT?</span><br>Bài kiểm tra Trượt trên
                                                    đường ướt là cho xe chạy trên đường với mức nước ngập cao 8mm. Lốp
                                                    Uniroyal có mức an toàn chống trượt nước lớn nhất.<br>Điều đáng nói
                                                    là hai ứng viên nhiều khả năng Yokohama và Maxxis mất tiếp xúc với
                                                    mặt đường bộ. Lốp nổi trên mặt đường, điều khiển lái mất hiệu lực
                                                    không thể thực hiện được</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP269" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX13" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX14" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH15" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP XE XỬ
                                                        LÝ TỐT NHẤT TRÊN ĐƯỜNG ƯỚT?</span><br>Lốp có độ bám ướt tốt có
                                                    thời gian cua nhanh trên đường cong. Mức độ xử lý phụ thuộc vào sự
                                                    kết hợp giữa các gân hoa lốp, độ bám ngang và độ cân bằng. <br>Đánh
                                                    giá chủ quan này tác động đến mức độ xử lý thông qua thời gian cua.
                                                    Lốp Pirelli P7 Blue đứng đầu về hạng mục này.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP270" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX16" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX17" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH18" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">TRÊN ĐƯỜNG
                                                        KHÔ</span><br>Sự tương tác hài hòa giữa trục phía trước và phía
                                                    sau (cân bằng) và đủ độ bám là những tiêu chí quan trọng trong việc
                                                    đánh giá tiêu chuẩn Xử lý.<br>Pirelli và Continental được đánh giá
                                                    cao nhất trong các thử nghiệm của lái xe của chúng tôi khi tiến hành
                                                    các thử nghiệm. Uniroyal và Kumho thiếu dẫn hướng bên và tay lái.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP271" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX19" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX20" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH21" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">TUỔI THỌ VÀ
                                                        GIÁ</span><br>Lốp xe đi bao lâu cho đến khi nó tới giới hạn mòn
                                                    là độ sâu gai lốp tối thiểu 1,6 mm theo quy định? Đối với vấn đề
                                                    này, Tuổi thọ hay độ mòn của lốp sẽ được tính toán trên một Bệ thử
                                                    nghiệm với quãng đường thử tương đương là 4000 km, sẽ tính toán và
                                                    xác định được số Km mà lốp sẽ đi được đến giới hạn.<br><span
                                                        style="font-weight: bold;">SỐ KM ĐI DỰ TÍNH</span> <br>Lốp
                                                    PremiumContact 6 Continental là sản phẩm tốt nhất nó sẽ đạt được số
                                                    Km dự kiến đi được dài nhất. Lốp Dunlop Sport Maxx RT 2 đứng thứ 2
                                                    và Michelin đứng thứ 3 các lốp còn lại trong bản bên đều có hiệu
                                                    suất trên trung bình. <br>GIÁ/SỐ KM ĐI DỰ TÍNH<br>Mặc dù số Km dự
                                                    tính của lốp thấp nhưng nhờ giá rẻ nên lốp LEAO vẫn là lốp kinh tế
                                                    nhất. Giá LEAO rẻ hơn một nửa so với các nhãn hiệu cao cấp đắt tiền
                                                    khác</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP272" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX22" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX23" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH24" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP CUỐI
                                                        BẢNG ĐỨNG THỨ 20/ KHÔNG KHUYẾN KHÍCH:</span><br>Kumho Ecsta HS51
                                                    98 W circa 375 Euro/Satz<br>Ưu điểm : Độ an toàn cao khi chạy xe
                                                    trên đường ngập.<br>Nhược điểm : Phản ứng tới bánh lái chậm, độ ma
                                                    sát kém trong tình trạng đường khô và ướt, tuổi thọ lốp thấp</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP273" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX25" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX26" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH27" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 19 / KHUYẾN NGHỊ</span><br>Yokohama Advan Fleva V701 98 W
                                                    circa 480 Euro/Satz<br>Ưu điểm : Phản ứng tốt trên đường khô
                                                    ráo.<br>Nhược điểm: Phản ứng kém trên đường ngập nước, phản ứng tới
                                                    bánh lái chậm, kiểm soát xe trên đường ướt thấp.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP274" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX28" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX29" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH30" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 17 / THOẢ ĐÁNG<br></span>Leao Nova Force 98 W circa 210
                                                    Euro/Satz <br>Ưu điểm: Lốp có giá thành Thấp nhất, hiệu quả kinh tế
                                                    cao, vận hành êm ái<br>Nhược điểm: Độ bám đường ướt và khô hạn chế,
                                                    tuổi thọ không cao</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP275" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX31" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX32" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH33" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 17 / THOẢ ĐÁNG</span><br>Cooper Zeon CS8 98 W circa 420
                                                    Euro/Satz <br>Ưu điểm : Giá thành tốt so với chấp lượng, kiểm soát
                                                    xe tốt. <br>Nhược điểm: Độ ma sát kém khi tăng tốc, lực cản lăn cao.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP276" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX34" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX35" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH36" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 15 / THOẢ ĐÁNG<br></span>Nokian zLine 98 Y circa 440
                                                    Euro/Satz <br>Ưu điểm: Có sự cơ động cao khi lái xe trên đường
                                                    khô.<br>Nhược điểm: Độ ma sát kém khi tăng tốc và quãng đường phanh
                                                    dài trên đường ướt, tuổi thọ lốp thấp, lực cản lăn cao</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP277" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX37" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX38" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH39" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 14 / THOẢ ĐÁNG</span><br>Maxxis Premitra HP5 98 W circa 325
                                                    Euro/Satz<br>Ưu điểm: Giá thành rẻ so với chất lượng, sự đàn hồi tốt
                                                    trên đường khô, tuổi thọ cao.<br>Nhược điểm: Khi cua vào trong đường
                                                    cua ngập nước có một số giới hạn.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP278" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX40" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX41" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH42" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 12 / THOẢ ĐÁNG<br></span>Toyo Proxes Sport 98 Y circa 465
                                                    Euro/Satz<br>Ưu điểm: Sự cân bằng trên đường khô và ướt tốt, tiếng
                                                    ồn thấp.<br>Nhược điểm: Độ mòn và giá thành so với chấp lượng ở mức
                                                    trung bình.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP279" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX43" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX44" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH45" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 12 / THOẢ ĐÁNG</span><br>Sava Intensa UHP 2 98 Y circa 365
                                                    Euro/Satz<br>Ưu điểm: Sự cân bằng trên đường khô và ướt tốt, tiếng
                                                    ồn thấp.<br>Khuyết điểm: Độ mòn cao và giá thành so với chấp lượng ở
                                                    mức trung bình.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP280" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX46" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX47" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH48" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 11 / THOẢ ĐÁNG</span><br>Vredestein Ultrac Satin 98 Y circa
                                                    430 Euro/Satz<br>Ưu điểm: Độ bám đường tốt khi mặt đường ướt, quãng
                                                    đường phanh ngắn, giá thành thấp so với chấp lượng. <br>Khuyết điểm:
                                                    Độ bám đường kém trên mặt đường khô.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP281" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX49" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX50" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH51" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 10 / THOẢ ĐÁNG</span><br>Uniroyal RainSport 3 94 Y circa 415
                                                    Euro/Satz <br>Ưu điểm : Xếp đứng đầu độ an toàn khi vận hành trên
                                                    đường ngập nước &gt;3mm , độ kiểm soát xe cao , Quãng đường phanh
                                                    ngắn trên đường ướt<br>Nhược điểm : Lực cản lăn của lốp cao , khi
                                                    vào cua mặt đường khô =&gt; độ cơ động của lốp không cao .</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP282" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX52" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX53" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH54" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">LỐP ĐỨNG
                                                        THỨ 9 / THOẢ ĐÁNG</span><br>Michelin Primacy 3 94 W circa 530
                                                    Euro/Satz<br>Ưu điểm: Tuổi thọ cao , đường phanh trên mặt đường khô
                                                    thấp , lực cản lăn thấp .<br>Nhược điểm: Bám mặt đường ướt mức độ
                                                    trung bình , vận hành trong trường hợp đường ngập có giới hạn nhất
                                                    định , giá thành cao .</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP283" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX55" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX56" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH57" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 8
                                                        / LỐP TỐT</span><br>Goodyear Eagle F1 Asymmetric 3 94 Y circa
                                                    470 Euro/Satz <br>Ưu điểm : Độ cơ động tốt trên cả đường khô lẫn
                                                    ướt, quãng đường phanh ngắn trên đường khô, độ an toàn cao khi chạy
                                                    trên đường ngập sâu hơn 3mm.<br>Nhược điểm : Tuổi thọ và giá thành
                                                    trung bình so với chất lượng lốp.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP284" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX58" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX59" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH60" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 7
                                                        / LỐP TỐT</span><br>Bridgestone Turanza T001 Evo /98 W circa 520
                                                    Euro/Satz<br>Ưu điểm: Độ an toàn cao khi chạy xe trên đường ngập sâu
                                                    hơn 3mm, cơ động cao khi mặt đường ướt, xe một cầu có sự ổn định cao
                                                    trên đường khô.<br>Nhược điểm : Tuổi thọ lốp ko cao .</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP285" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX61" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX62" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH63" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 6
                                                        / LỐP KIỂU MẪU</span><br>Fulda SportControl 2 98 Y circa 445
                                                    Euro/Satz<br>Ưu điểm: Lốp có sự ổn định và cân bằng cao, đường phanh
                                                    ngắn (trên cả mặt đường ướt hoặc khô), tiết kiệm nhiên liệu, giá
                                                    thành thấp.<br>Nhược điểm: Lốp nhanh bị bào mòn, tuổi thọ lốp không
                                                    cao.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP286" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX64" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX65" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH66" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 5
                                                        / LỐP KIỂU MẪU</span><br>Hankook Ventus Prime³ 98 W circa 420
                                                    Euro/Satz<br>Ưu điểm: Lốp được sản xuất từ Hàn Quốc, độ cơ động cao
                                                    khi lái trên đường khô và ướt, tiếng ồn thấp, giá thành tốt khi so
                                                    sánh với chất lượng. <br>Nhược điểm: Khi chạy xe trên đường ngập sâu
                                                    hơn 3mm chỉ đạt mức trung bình.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP287" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX67" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX68" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH69" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 2
                                                        / LỐP KIỂU MẪU</span><br>Pirelli Cinturato P7 Blue 98 W circa
                                                    480 Euro/Satz<br>Ưu điểm: Lái xe chế độ thể thao có sự trải nghiệm
                                                    cao , lốp bám đường tốt , quãng đường phanh ngắn , lực cản lăn thấp
                                                    ( tốt; tiết kiệm nhiên liệu )<br>Nhược điểm: Trong điều kiện mặt
                                                    đường ướt lốp chỉ đạt chỉ số trung bình<br></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP288" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX70" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX71" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH72" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 2
                                                        / LỐP KIỂU MẪU</span><br>Falken Azenis FK510 98 Y circa 390
                                                    Euro/Satz <br>Ưu điểm: Lớp cao su của lốp mùa hè có độ bám đường cao
                                                    trong điều kiện đường ướt hoặc khô , Quãng đường phanh ngắn , giá cả
                                                    hợp lý , tính cơ động của lốp cao , tuổi thọ lốp cao<br>Nhược điểm :
                                                    Lực cản lăn của lốp cao .<br></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP289" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX73" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX74" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH75" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG THỨ 2
                                                        / LỐP KIỂU MẪU</span><br>Dunlop Sport Maxx RT 2 98 Y circa 485
                                                    Euro/Satz <br>Ưu điểm: Lốp xe thuộc hãng có tên tuổi. Lốp không có
                                                    lỗi, khi lái xe vào vòng cua trên mặt đường ướt có sự bám đường cao
                                                    và cơ động. <br>Nhược điểm: Lực cản lăn của bánh ở mức trung bình
                                                    (Khi để xe tự lăn không lăn được xa dẫn đến không tiết kiệm được
                                                    nhiều nhiên liệu)</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP290" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX76" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX77" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH78" class='ladi-element'>
                                                <div class='ladi-paragraph'><span style="font-weight: bold;">ĐỨNG ĐẦU
                                                        BẢNG/ LỐP KIỂU MẪU</span><br>Continental PremiumContact 6 94 Y
                                                    circa 530 Euro/Satz <br>Ưu điểm: Đứng đầu trên bảng xếp hạng với các
                                                    bài kiểm tra lái xe trên mặt đường khô và ướt, trải nghiệm xe vì độ
                                                    cơ động bám đường cao, tuổi thọ lốp cao, phanh khẩn cấp có quãng
                                                    đường phanh ngắn trên cả mặt đường ướt và khô.<br>Nhược điểm: Giá
                                                    thành cao.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP291" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX79" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX80" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH81" class='ladi-element'>
                                                <div class='ladi-paragraph'>Các ứng cử viên tiếp theo sau đã không vượt
                                                    qua được bài kiểm tra an toàn của chúng tôi. Quãng đường phanh của
                                                    xe là dài nguy hiểm<br>Apollo Aspire 4G 98 W • Khoang Cách Phanh
                                                    ướt: 41,4 mét • Khoang Cách Phanh khô: 35,8 mét • Tổng khoảng cách
                                                    là: mét 77,2.</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="GROUP292" class='ladi-element'>
                                        <div class='ladi-group'>
                                            <div id="BOX82" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="BOX83" class='ladi-element'>
                                                <div class='ladi-box'></div>
                                            </div>
                                            <div id="PARAGRAPH84" class='ladi-element'>
                                                <div class='ladi-paragraph'>Nexen N'Fera SU1 98 W • Khỏang Cách Phanh
                                                    ướt: 40,2 mét Khoảng cách Phanh khô: 37,1 mét Tổng khoảng cách là:
                                                    77,3 m</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ladi-carousel-arrow ladi-carousel-arrow-left opacity-0"></div>
                                <div class="ladi-carousel-arrow ladi-carousel-arrow-right opacity-0"></div>
                            </div>
                        </div>
                        <div id="HEADLINE85" class='ladi-element'>
                            <div class='ladi-headline'>Autobild-reifentest-2017 - Báo cáo Chất lượng lốp 2017 là một
                                trong những giải thưởng danh giá nhất trong ngành công nghiệp ô tô hiện nay<br></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION86" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE201" class='ladi-element'>
                    <div class='ladi-headline'>KIỂM TRA | 52 LỐP XE Ô TÔ MÙA HÈ CỠ 225/50 R 17</div>
                </div>
                <div id="HEADLINE202" class='ladi-element'>
                    <div class='ladi-headline'>Với tiêu chí khách quan, minh bạch và công bằng với tất cả các ứng cử
                        viên. Tất cả các mẫu lốp xe được sử dụng trong bài kiểm tra đều là các sản phẩm tiêu chuẩn được
                        nhà sản xuất công bố với khách hàng và bạn có thể dễ dàng mua được ở các cửa hàng đại lý phân
                        phối.</div>
                </div>
                <div id="IMAGE203" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE204" class='ladi-element'>
                    <div class='ladi-headline'>Bài kiểm tra lần này được tiến hành với 3 loại xe: BMW 3er, Audi A4 và
                        Mercedes C-Klasse. Ứng viên trong ngày hôm nay là 52 loại lốp có kích cỡ: 225/50 R17. <br>Đầu
                        tiên là thử nghiệm phanh khẩn cấp trên mặt đường ướt với tốc độ 80km/h, kết quả cho biết quãng
                        đường phanh của rất nhiều lốp lớn hơn 16m – có khả năng gây nguy hiểm cao. <br>Còn trên mặt
                        đường khô ráo với tốc độ 100km/h, chỉ có một số lốp đạt đủ tiêu chuẩn. Tiếp đến là bài kiểm tra
                        chất lượng lốp nhằm so sánh giữa chất lượng và giá thành. <br>Hai mươi lốp xe có quãng đường
                        phanh ngắn nhất sau khi đã vượt qua vòng thử nghiệm đầu tiên được đi tiếp vào vòng sau.
                        <br>Những chiếc xe được chạy trên một đường thử nghiệm nơi có các khung vòng cua gấp, thời tiết
                        khắc nghiệt. Trong mỗi bài thử nghiệm kế tiếp, từng bài sẽ được tính điểm riêng biệt. Tổng số
                        điểm sau cùng sẽ dùng để xếp hạng lốp xe.<br>Vì chỉ có 1/3 ứng viên trên 50 ứng viên đạt được đủ
                        tiêu chuẩn an toàn nên hãy thận trọng khi lựa chọn trong việc mua lốp mùa hè. <br>Lưu ý: Hình
                        dáng bên ngoài của các lốp đều là màu đen và tròn như nhau nên khi mua rất khó phân biệt. Chỉ có
                        thể phát hiện được chất lượng bên trong qua thử nghiệm.<br></div>
                </div>
            </div>
        </div>
        <div id="SECTION171" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE205" class='ladi-element'>
                    <div class='ladi-headline'>1. KIỂM TRA PHANH KHẨN CẤP TRỀN ĐƯỜNG ƯỚT VÀ KHÔ (VÒNG LOẠI)<br></div>
                </div>
                <div id="HEADLINE206" class='ladi-element'>
                    <div class='ladi-headline'>Ban đầu, tất cả 52 ứng viên phải vượt qua một bài kiểm tra an toàn trong
                        vòng sơ loại.<br>Chúng tôi sẽ đo quãng đường phanh khi phanh khẩn cấp từ tốc độ 80km/giờ trên
                        đường ướt và 100 km/giờ trên đường khô cho đến khi xe dừng lại.<br></div>
                </div>
                <div id="BOX207" class='ladi-element'>
                    <div class='ladi-box'></div>
                </div>
                <div id="BOX208" class='ladi-element'>
                    <div class='ladi-box'></div>
                </div>
                <div id="HEADLINE209" class='ladi-element'>
                    <div class='ladi-headline'>Chỉ những ứng cử viên với quãng đường phanh ngắn nhất trong tổng số (20
                        loại lốp màu xanh lá cây trong bảng) sẽ được tiến hành các thử nghiệm tiếp theo.<br></div>
                </div>
                <div id="HEADLINE210" class='ladi-element'>
                    <div class='ladi-headline'>• Ứng viên được chào đón<br></div>
                </div>
                <div id="IMAGE211" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE212" class='ladi-element'>
                    <div class='ladi-headline'>• Ứng cứ viên không được khuyến khích<br></div>
                </div>
                <div id="IMAGE213" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION181" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE214" class='ladi-element'>
                    <div class='ladi-headline'>• Chú ý Tránh xa!<br></div>
                </div>
                <div id="IMAGE215" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE216" class='ladi-element'>
                    <div class='ladi-headline'>2. KIỂM TRA TRƯỢT NƯỚC<br></div>
                </div>
                <div id="HEADLINE217" class='ladi-element'>
                    <div class='ladi-headline'>Bài kiểm tra Trượt trên đường ướt là cho xe chạy trên đường với mức nước
                        ngập cao 8mm. <br></div>
                </div>
                <div id="IMAGE218" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION185" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE219" class='ladi-element'>
                    <div class='ladi-headline'>Lốp Uniroyal có mức an toàn chống trượt nước lớn nhất.<br></div>
                </div>
                <div id="IMAGE220" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE221" class='ladi-element'>
                    <div class='ladi-headline'>Điều đáng nói là hai ứng viên nhiều khả năng Yokohama và Maxxis mất tiếp
                        xúc với mặt đường bộ. Lốp nổi trên mặt đường, điều khiển lái mất hiệu lực không thể thực hiện
                        được<br></div>
                </div>
                <div id="HEADLINE222" class='ladi-element'>
                    <div class='ladi-headline'>3. KIỂM TRA XỬ LÝ TRÊN ĐƯỜNG ƯỚT<br></div>
                </div>
                <div id="HEADLINE223" class='ladi-element'>
                    <div class='ladi-headline'>Lốp có độ bám ướt tốt có thời gian cua nhanh trên đường cong. Mức độ xử lý
                        phụ thuộc vào sự kết hợp giữa các gân hoa lốp, độ bám ngang và độ cân bằng. <br></div>
                </div>
                <div id="IMAGE246" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE247" class='ladi-element'>
                    <div class='ladi-headline'>Đánh giá chủ quan này tác động đến mức độ xử lý thông qua thời gian cua.
                        Lốp Pirelli P7 Blue đứng đầu về hạng mục này.<br></div>
                </div>
                <div id="IMAGE249" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION225" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE226" class='ladi-element'>
                    <div class='ladi-headline'>4. KIỂM TRA ĐỘ ỒN CỦA LỐP<br></div>
                </div>
                <div id="IMAGE227" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE228" class='ladi-element'>
                    <div class='ladi-headline'>Trong đó lốp Michelins Primacy 3 có độ ồn thấp nhất. Bên trong xe gần như
                        không có cảm nhận về độ ồn của lốp<br></div>
                </div>
                <div id="HEADLINE229" class='ladi-element'>
                    <div class='ladi-headline'>5. LỐP CÓ CHI PHÍ THẤP NHẤT?<br></div>
                </div>
                <div id="HEADLINE230" class='ladi-element'>
                    <div class='ladi-headline'>Lốp xe đi bao lâu cho đến khi nó tới giới hạn mòn là độ sâu gai lốp tối
                        thiểu 1,6 mm theo quy định? <br></div>
                </div>
                <div id="HEADLINE250" class='ladi-element'>
                    <div class='ladi-headline'>Độ ồn của lốp được đo khi lái xe với tốc độ 80km/h <br></div>
                </div>
                <div id="IMAGE251" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE252" class='ladi-element'>
                    <div class='ladi-headline'>Đối với vấn đề này, Tuổi thọ hay độ mòn của lốp sẽ được tính toán trên một
                        Bệ thử nghiệm với quãng đường thử tương đương là 4000 km, sẽ tính toán và xác định được số Km mà
                        lốp sẽ đi được đến giới hạn.<br></div>
                </div>
            </div>
        </div>
        <div id="SECTION239" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="HEADLINE240" class='ladi-element'>
                    <div class='ladi-headline'>SỐ KM ĐI DỰ TÍNH <br></div>
                </div>
                <div id="HEADLINE242" class='ladi-element'>
                    <div class='ladi-headline'>Mặc dù số Km dự tính của lốp thấp nhưng nhờ giá rẻ nên lốp LEAO vẫn là lốp
                        kinh tế nhất. Giá LEAO rẻ hơn một nửa so với các nhãn hiệu cao cấp đắt tiền khác.<br></div>
                </div>
                <div id="IMAGE254" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE255" class='ladi-element'>
                    <h2 class='ladi-headline'>GIÁ/SỐ KM ĐI DỰ TÍNH<br></h2>
                </div>
                <div id="HEADLINE253" class='ladi-element'>
                    <div class='ladi-headline'>Lốp PremiumContact 6 Continental là sản phẩm tốt nhất nó sẽ đạt được số Km
                        dự kiến đi được dài nhất. Lốp Dunlop Sport Maxx RT 2 đứng thứ 2 và Michelin đứng thứ 3 các lốp
                        còn lại trong bản bên đều có hiệu suất trên trung bình<br></div>
                </div>
            </div>
        </div>
        <div id="SECTION232" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="IMAGE257" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION256" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="IMAGE260" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE261" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION259" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="IMAGE263" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="SECTION262" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-container">
                <div id="IMAGE264" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="HEADLINE265" class='ladi-element'>
                    <div class='ladi-headline'>Điểm số: Là điểm của các phẩn kiểm tra Ướt/ Khố / Chí phí <br
                            style="color: rgb(255, 255, 255);">trong đó "ướt" và "Khô" chiếm đều 40%, Chi phí chiếm 20%
                        Tổng số.<br style="color: rgb(255, 255, 255);"></div>
                </div>
            </div>
        </div>
        <div id="SECTION267" class='ladi-section'>
            <div class='ladi-section-background'></div>
            <div class="ladi-overlay"></div>
            <div class="ladi-container">

                <div id="HEADLINE269" class='ladi-element'>
                    <h1 class='ladi-headline ladi-transition'>Copyrights © 2023 - GBM, All Rights Reserved.&nbsp;</h1>
                </div>
                <div id="HEADLINE270" class='ladi-element'>
                    <h4 class='ladi-headline ladi-transition'>CÔNG TY LEAO - ATLAS VIỆT NAM</h4>
                </div>
                <div id="GROUP293" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE267" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path d="M10,20V14H14V20H19V12H22L12,3L2,12H5V20H10Z"></path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE271" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Địa chỉ: Số 1 Trần Thủ Độ, Hoàng Liệt, Hoàng Mai,
                                Hà Nội.<br></div>
                        </div>
                    </div>
                </div>
                <div id="GROUP294" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE268" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE272" class='ladi-element'>
                            <p class='ladi-headline ladi-transition'>Hotline: + 84989131322</p>
                        </div>
                    </div>
                </div>
                <div id="GROUP295" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE269" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M20,4H4A2,2 0 0,0 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6A2,2 0 0,0 20,4M20,18H4V8L12,13L20,8V18M20,6L12,11L4,6V6H20V6Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE273" class='ladi-element'>
                            <div class='ladi-headline ladi-transition'>Email: alphayvietnam@gmail.com</div>
                        </div>
                    </div>
                </div>
                <div id="GROUP296" class='ladi-element'>
                    <div class='ladi-group'>
                        <div id="SHAPE270" class='ladi-element'>
                            <div class='ladi-shape ladi-transition'><svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"
                                    viewBox="0 0 24 24" fill="rgba(255,255,255,1)">
                                    <path
                                        d="M16.36,14C16.44,13.34 16.5,12.68 16.5,12C16.5,11.32 16.44,10.66 16.36,10H19.74C19.9,10.64 20,11.31 20,12C20,12.69 19.9,13.36 19.74,14M14.59,19.56C15.19,18.45 15.65,17.25 15.97,16H18.92C17.96,17.65 16.43,18.93 14.59,19.56M14.34,14H9.66C9.56,13.34 9.5,12.68 9.5,12C9.5,11.32 9.56,10.65 9.66,10H14.34C14.43,10.65 14.5,11.32 14.5,12C14.5,12.68 14.43,13.34 14.34,14M12,19.96C11.17,18.76 10.5,17.43 10.09,16H13.91C13.5,17.43 12.83,18.76 12,19.96M8,8H5.08C6.03,6.34 7.57,5.06 9.4,4.44C8.8,5.55 8.35,6.75 8,8M5.08,16H8C8.35,17.25 8.8,18.45 9.4,19.56C7.57,18.93 6.03,17.65 5.08,16M4.26,14C4.1,13.36 4,12.69 4,12C4,11.31 4.1,10.64 4.26,10H7.64C7.56,10.66 7.5,11.32 7.5,12C7.5,12.68 7.56,13.34 7.64,14M12,4.03C12.83,5.23 13.5,6.57 13.91,8H10.09C10.5,6.57 11.17,5.23 12,4.03M18.92,8H15.97C15.65,6.75 15.19,5.55 14.59,4.44C16.43,5.07 17.96,6.34 18.92,8M12,2C6.47,2 2,6.5 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z">
                                    </path>
                                </svg></div>
                        </div>
                        <div id="HEADLINE274" class='ladi-element'>
                            <p class='ladi-headline ladi-transition'>Website: <a href="https://www.lopoto.online"
                                    target="_self">https://www.lopoto.online</a></p>
                        </div>
                    </div>
                </div>
                <div id="IMAGE268" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE269" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="IMAGE270" class='ladi-element'>
                    <div class='ladi-image'>
                        <div class="ladi-image-background"></div>
                    </div>
                </div>
                <div id="LINE267" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="LINE268" class='ladi-element'>
                    <div class='ladi-line'>
                        <div class="ladi-line-container"></div>
                    </div>
                </div>
                <div id="HTML_CODE267" class='ladi-element'>
                    <div class='ladi-html-code'><iframe
                            src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Flopleaovn&amp;tabs&amp;width=340&amp;height=70&amp;small_header=true&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=596952115747612"
                            width="340" height="70" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                            allowfullscreen="true"
                            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
                <div id="HTML_CODE268" class='ladi-element'>
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
    <!--[if lt IE 9]><script src="https://w.ladicdn.com/v2/source/html5shiv.min.js?v=1687489689119"></script><script src="https://w.ladicdn.com/v2/source/respond.min.js?v=1687489689119"></script><![endif]-->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet"
        type="text/css">
    <script id="script_event_data"
        type="application/json">{"CAROUSEL6":{"a":"carousel","cG":"type_abab","K":"25012px","H":"962px","J":"9750px","G":"375.0000305175781px","cM":"0px","cJ":"horizontal","R":false}}</script>
    <script id="script_ladipage_run"
        type="text/javascript">(function () { var run = function () { if (typeof window.LadiPageScript == "undefined" || typeof window.ladi == "undefined" || window.ladi == undefined) { setTimeout(run, 100); return; } window.LadiPageApp = window.LadiPageApp || new window.LadiPageAppV2(); window.LadiPageScript.runtime.ladipage_id = '6492a20287bd4700200c6a44'; window.LadiPageScript.runtime.publish_platform = 'LADIPAGE'; window.LadiPageScript.runtime.version = '1687489689119'; window.LadiPageScript.runtime.cdn_url = 'https://w.ladicdn.com/v2/source/'; window.LadiPageScript.runtime.DOMAIN_FREE = ["preview.ladipage.me", "ldp.link", "ldp.page"]; window.LadiPageScript.runtime.bodyFontSize = 12; window.LadiPageScript.runtime.store_id = "5c9ca0f6d8a4d128f5929f41"; window.LadiPageScript.runtime.time_zone = 7; window.LadiPageScript.runtime.currency = "USD"; window.LadiPageScript.runtime.convert_replace_str = true; window.LadiPageScript.runtime.desktop_width = 960; window.LadiPageScript.runtime.mobile_width = 420; window.LadiPageScript.runtime.tracking_button_click = true; window.LadiPageScript.runtime.lang = "vi"; window.LadiPageScript.run(true); window.LadiPageScript.runEventScroll(); }; run(); })();</script>
	
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