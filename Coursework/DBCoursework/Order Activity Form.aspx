<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order Activity Form.aspx.cs" Inherits="Coursework.Order_Activity_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Activity</title>
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
                <li>
                    <a href="Dish Search Form.aspx">Dish Search</a>
                </li>
                <li class="active">
                    <a href="Order Activity Form.aspx">Order Activities</a>
                </li>
            </ul>

        </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
            <h1>Order Activity</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                        <asp:DropDownList CssClass="form-control" Width="245px" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CUST_FIRST_NAME" DataValueField="CUSTOMER_ID">
                        </asp:DropDownList>
                        <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="RESTRO_NAME" HeaderText="RESTRO_NAME" SortExpression="RESTRO_NAME" ReadOnly="True" />
                                <asp:BoundField DataField="NOOFDISHES" HeaderText="NOOFDISHES" SortExpression="NOOFDISHES" ReadOnly="True" />
                                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" ReadOnly="True" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" FilterExpression="CUSTOMER_ID = '{0}'" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select * from (select  restro_name ,count(*) as NoOfDishes,co.customer_id from restaurant r 
inner join dish_order_restro so on so.restro_id = r.restro_id
inner join customer_order co on co.order_no = so.order_no
inner join order_details od on od.order_no = so.order_no
group by restro_name,co.customer_id ) a 
order by noofdishes desc
">
                            <FilterParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="newparameter" PropertyName="SelectedValue" />
                            </FilterParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;CUSTOMER_ID&quot;, &quot;CUST_FIRST_NAME&quot; FROM &quot;CUSTOMER&quot;"></asp:SqlDataSource>
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


