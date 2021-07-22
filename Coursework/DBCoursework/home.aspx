<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DBCoursework.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  	<title>Home Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">Toggle Menu</span>
	        </button>
        </div>
	  		<h1><a href="home.aspx" class="logo">Home</a></h1>
        <ul class="list-unstyled components mb-5">
          
        <li >          
            <a href="Customer.aspx"> Customer</a>
          </li>
          <li >
              <a href="Dish Details.aspx"> Dishes</a>
          </li>
          <li >
            <a href="Restaurant Details.aspx"> Restaurants</a>
          </li>
          <li >
            <a href="Loyalty Point Details.aspx">Loyalty Points</a>
          </li>
          <li>
            <a href="Delivery Address Details.aspx">Delivery Address</a>
          </li>
          <li>
            <a href="Customer Order Details.aspx"> Customer Order</a>
          </li>
          <li>
            <a href="Dish Search Form.aspx">Dish Search</a>
          </li>
          <li>
            <a href="Order Activity Form.aspx">Order Activities</a>
          </li>       
        </ul>

    	</nav>

        <!-- Page Content  -->

      <div style= "background-image:url(Background.jpeg)"id="content" class="p-4 p-md-5 pt-5">
        <h1 class ="text-center" style="font-size:500%;">Good Food</h1>

      </div>
		</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>