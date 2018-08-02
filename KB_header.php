<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>KANBAN BOARD</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
  a:link {
      text-decoration: none;
  }

  a:visited {
      text-decoration: none;
  }

  a:hover {
      text-decoration: none;
      color: blue;
  }

  a:active {
      text-decoration: underline;
  }

  .affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>

</head>

<body>

<div class="container-fluid">
  <div class="page-header text-center">
    <h1>KANBAN BOARD</h1>
    <p>for HANNA INSTRUMENTS</p>
  </div>
</div>
