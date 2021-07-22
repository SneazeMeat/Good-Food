<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dish Details.aspx.cs" Inherits="Coursework.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dish Details</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet"/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
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
                <li class="active">
                    <a href="Dish Details.aspx">Dishes</a>
                </li>
                <li>
                    <a href="Restaurant Details.aspx">Restaurants</a>
                </li>
                <li>
                    <a href="Loyalty Point Details.aspx">Loyalty Points</a>
                </li>
                <li>
                    <a href="Delivery Address details.aspx">Delivery Address</a>
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
        <div id="content" class="p-4 p-md-5 pt-5">
            <h1>Dish </h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                    <asp:FormView  ID="FormView1" runat="server" DataKeyNames="DISH_CODE" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="690px">
                        <EditItemTemplate>
                            DISH_CODE:
                  <asp:Label ID="DISH_CODELabel1" runat="server" Text='<%# Eval("DISH_CODE") %>' />
                            <br />
                            DISH_NAME:
                            <asp:TextBox CssClass="form-control" ID="DISH_NAMETextBox" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                            <br />
                            LOCAL_NAME:
                            <asp:TextBox CssClass="form-control" ID="LOCAL_NAMETextBox" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            DISH_CODE:
                  <asp:TextBox CssClass="form-control" ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                            <br />
                            DISH_NAME:
                  <asp:TextBox CssClass="form-control" ID="DISH_NAMETextBox" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                            <br />
                            LOCAL_NAME:
                            <asp:TextBox CssClass="form-control" ID="LOCAL_NAMETextBox" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                            <br />
                            <asp:LinkButton CssClass="btn btn-dark" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton CssClass="btn btn-dark" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            DISH_CODE:
                  <asp:Label ID="DISH_CODELabel" runat="server" Text='<%# Eval("DISH_CODE") %>' />
                            <br />
                            DISH_NAME:
                  <asp:Label ID="DISH_NAMELabel" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                            <br />
                            LOCAL_NAME:
                            <asp:Label ID="LOCAL_NAMELabel" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                    <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DISH_CODE" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Width="100%" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ControlStyle-CssClass="btn btn-dark text-light" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" ReadOnly="True" SortExpression="DISH_CODE" />
                            <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                            <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;DISH&quot;" DeleteCommand="DELETE FROM &quot;DISH&quot; WHERE &quot;DISH_CODE&quot; = :DISH_CODE" InsertCommand="INSERT INTO &quot;DISH&quot; (&quot;DISH_CODE&quot;, &quot;DISH_NAME&quot;, &quot;LOCAL_NAME&quot;) VALUES (:DISH_CODE, :DISH_NAME, :LOCAL_NAME)" UpdateCommand="UPDATE &quot;DISH&quot; SET &quot;DISH_NAME&quot; = :DISH_NAME, &quot;LOCAL_NAME&quot; = :LOCALNAME WHERE &quot;DISH_CODE&quot; = :DISH_CODE">
                        <InsertParameters>
                            <asp:Parameter Name="DISH_CODE" />
                            <asp:Parameter Name="DISH_NAME" />
                            <asp:Parameter Name="LOCAL_NAME" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DISH_NAME" />
                            <asp:Parameter Name="LOCAL_NAME" />
                            <asp:Parameter Name="DISH_CODE" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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

