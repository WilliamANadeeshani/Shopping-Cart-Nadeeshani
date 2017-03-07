<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            .glyphicon-shopping-cart {
                font-size: 50px;
            }


        </style>
    </head>

    <body>
        <form method="GET" action="monitor">
            <div class="row" id="div1">
                <div class="col-md-4"></div>
                <div class="col-md-7">
                    <h1>Alliganz Hardware <small>LED Monitor</small></h1>
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

                        <tbody>
                            <tr class="success">
                                <th><h3>Item :</h3></th>
                                <td><h3>LED Monitor</h3></td>

                            </tr>

                            <tr class="success">
                                <th><h3>Unit Price :</h3></th>
                                <td><h3>11500.00</h3></td>
                            </tr>
                            <tr class="success">
                                <th><h3>Quantity :</h3></th>
                                <td><h3><select class="form-control" name="drop">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                        </select></h3></td>
                            </tr>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-shopping-cart"></span> Add To THe Cart
                    </button>
                    
                    <a href="index.jsp" class="btn btn-info btn-lg">
                        <br><span class="glyphicon glyphicon-home"></span> 
                    </a>
                </div>
                <div class="col-md-1">
                </div>
            </div>


        </form>
    </body>
</html>
