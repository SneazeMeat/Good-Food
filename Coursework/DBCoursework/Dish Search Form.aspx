<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dish Search Form.aspx.cs" Inherits="Coursework.Dish_Search_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dish Search Form</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/style.css" />
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

                <li>
                    <a href="Customer.aspx">Customer</a>
                </li>
                <li>
                    <a href="Dish Details.aspx">Dishes</a>
                </li>
                <li>
                    <a href="Restaurant Details.aspx"> Restaurants</a>
                </li>
                <li>
                    <a href="Loyalty Point Details.aspx">Loyalty Points</a>
                </li>
                <li>
                    <a href="Delivery Address Details.aspx">Delivery Address</a>
                </li>
                <li>
                    <a href="Customer Order Details.aspx"> Customer Order</a>
                </li>
                <li class="active">
                    <a href="Dish Search Form.aspx">Dish Search</a>
                </li>
                <li>
                    <a href="Order Activity Form.aspx">Order Activities</a>
                </li>
            </ul>

        </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
            <h1>Dish Search</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                         <asp:DropDownList CssClass="form-control" Width="245px" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="DISH_NAME" DataValueField="DISH_CODE">
                        </asp:DropDownList>
                        <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="RESTRO_ID" HeaderText="RESTRO_ID" SortExpression="RESTRO_ID" />
                                <asp:BoundField DataField="AVAILABLE_RESTAURANT" HeaderText="AVAILABLE_RESTAURANT" SortExpression="AVAILABLE_RESTAURANT" />
                                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
                                <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                                <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
                                <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                                <asp:BoundField DataField="RESTRO_ADDRESS" HeaderText="RESTRO_ADDRESS" SortExpression="RESTRO_ADDRESS" />
                            </Columns>
                             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" FilterExpression="DISH_CODE = '{0}'" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT d.restro_id, d.restro_name as available_restaurant, c.dish_code, di.dish_name, di.local_name, dl.dish_rate, d.restro_address
FROM dish_available_restro C INNER JOIN restaurant D ON C.restro_id = D.restro_id
INNER JOIN DISH DI ON DI.DISH_CODE = C.DISH_CODE
INNER JOIN dish_restro_rate DL ON di.dish_code = DL.dish_code and dl.restro_id = d.restro_id
">
                            <FilterParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="newparameter" PropertyName="SelectedValue" />
                            </FilterParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;DISH_CODE&quot;, &quot;DISH_NAME&quot; FROM &quot;DISH&quot;"></asp:SqlDataSource>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>


