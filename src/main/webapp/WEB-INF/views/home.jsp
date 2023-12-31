<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>FishingApp v1.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">



    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        /*
 * Globals
 */


        /* Custom default button */
        .btn-secondary,
        .btn-secondary:hover,
        .btn-secondary:focus {
            color: #333;
            text-shadow: none; /* Prevent inheritance from `body` */
        }


        /*
         * Base structure
         */

        body {
            text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
            box-shadow: inset 0 0 5rem rgba(0, 0, 0, .5);
            background: url('https://hips.hearstapps.com/hmg-prod/images/fishing-rod-on-the-boat-sunset-time-royalty-free-image-1682525031.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .cover-container {
            max-width: 42em;
        }


        /*
         * Header
         */

        .nav-masthead .nav-link {
            padding: .25rem 0;
            font-weight: 700;
            color: rgba(255, 255, 255, .5);
            background-color: transparent;
            border-bottom: .25rem solid transparent;
        }

        .nav-masthead .nav-link:hover,
        .nav-masthead .nav-link:focus {
            border-bottom-color: rgba(255, 255, 255, .25);
        }

        .nav-masthead .nav-link + .nav-link {
            margin-left: 1rem;
        }

        .nav-masthead .active {
            color: #fff;
            border-bottom-color: #fff;
        }
    </style>

</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">FishingApp v1.0</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link active" aria-current="page" href="https://www.linkedin.com/in/krzysztof-garus/">LinkedIn</a>
                <a class="nav-link active" href="https://github.com/KrzysztofGarus">GitHub</a>
                <a class="nav-link active" href="mailto:krzysztof.garus@gmail.com">Contact</a>
            </nav>
        </div>
    </header>

    <main class="px-3">
        <h1>FishingApp v1.0</h1>
        <p class="lead">The application aims to eliminate the need for repetitive filling out of the paper version of the fishing catch log for each fishing session and facilitate the collection of data from fishing sessions.</p>
        <p class="lead" style="margin-right: 10px;">
            <a href="${pageContext.request.contextPath}/login" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Login</a>
            <a href="${pageContext.request.contextPath}/register" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Register</a>
        </p>
    </main>

    <footer class="mt-auto text-white-50">
        <p>&#174; All rights reserved. Krzysztof Garus</p>
    </footer>
</div>



</body>
</html>
