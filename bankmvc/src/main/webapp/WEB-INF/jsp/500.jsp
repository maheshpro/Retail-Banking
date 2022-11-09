<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>Error 500</title>
        <style>
            html,body{
                height: 100%;
                text-align: center;
            }
        </style>
    </head>
    
    <body class="d-flex align-items-center justify-content-center">
          <div class="row">
              
             <div class="col">
                 <img src="data:image/png;base64,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" alt="500 image" class="image-fluid">
                    <h1 class="text-danger">HTTP Status ${errorcode} - Internal Server Error</h1>
                    <p>${exception}</p>
                 <h3>The request is not available to you<a href="<c:url value="/"/>">Click here to return</a></h3>
        </div>
        </div>
    </body>
</html>