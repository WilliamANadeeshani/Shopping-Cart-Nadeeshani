<%-- 
    Document   : index
    Created on : Nov 4, 2016, 12:26:39 PM
    Author     : William A Nadeeshani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <title>Alliganz Hardware</title>
        <style>
            body,head{
                margin: 0;
                padding: 0;
            } 
            body{
                padding: 20px;

            }
            #div1{
                padding: 5px;
            }
            .glyphicon {
                font-size: 50px;
            }
            
        </style>
    </head>

    <body>

        <div class="row" id="div1">
            <div class="col-md-4"></div>
            <div class="col-md-7">
                <h1>Alliganz Hardware <small>Online Shopping</small></h1>
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-3" id="imgB">
                <br>
                <img src="logo.jpg" alt="..." class="img-thumbnail">

            </div>
            <div class="col-md-8">
                <br>
                <table class="table table-inverse">
                    <thead>
                        <tr class="warning">
                            <th><h3>Item</h3></th>
                            <th><h3>Unit Price</th>
                            <th><h3>Submit</h3></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td>LED Monitor</td>
                            <td>11500.00</td>
                            <td><a href="Monitor.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                        </tr>
                        <tr class="danger">
                            <td>Keyboard</td>
                            <td>550.00</td>
                            <td><a href="KeyBoard.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                        </tr>
                        <tr class="info">
                            <td>Mouse</td>
                            <td>400.00</td>
                            <td><a href="Mouse.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                        </tr>
                        <tr class="success">
                            <td>Hard Disk</td>
                            <td>1400.00</td>
                            <td><a href="HardDisk.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                        </tr>
                        <tr class="danger">
                            <td>USB 2.0</td>
                            <td>800.00</td>
                            <td><a href="USB.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-1">

            </div>
        </div>
    </body>
</html>
