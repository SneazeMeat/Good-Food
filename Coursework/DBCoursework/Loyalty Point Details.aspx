<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loyalty Point Details.aspx.cs" Inherits="Coursework.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loyalty Points</title>
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
                <li>
                    <a href="Dish Details.aspx">Dishes</a>
                </li>
                <li>
                    <a href="Restaurant Details.aspx">Restaurants</a>
                </li>
                <li class="active">
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
            <h1>Loyalty Points</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                    <asp:FormView  ID="FormView1" runat="server" DataKeyNames="LP_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="690px">
                        <EditItemTemplate>
                            LP_ID:
                  <asp:Label ID="LP_IDLabel1" runat="server" Text='<%# Eval("LP_ID") %>' />
                            <br />
                            LP:
                            <asp:TextBox CssClass="form-control" ID="LPTextBox" runat="server" Text='<%# Bind("LP") %>' />
                            <br />
                            DISH_CODE:
                            <asp:TextBox CssClass="form-control" ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LP_ID:
                  <asp:TextBox CssClass="form-control" ID="LP_IDTextBox" runat="server" Text='<%# Bind("LP_ID") %>' />
                            <br />
                            LP:
                  <asp:TextBox CssClass="form-control" ID="LPTextBox" runat="server" Text='<%# Bind("LP") %>' />
                            <br />
                            DISH_CODE:
                            <asp:TextBox CssClass="form-control" ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                            <br />
                            <asp:LinkButton CssClass="btn btn-dark" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton CssClass="btn btn-dark" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            LP_ID:
                  <asp:Label ID="LP_IDLabel" runat="server" Text='<%# Eval("LP_ID") %>' />
                            <br />
                            LP:
                  <asp:Label ID="LPLabel" runat="server" Text='<%# Bind("LP") %>' />
                            <br />
                            DISH_CODE:
                            <asp:Label ID="DISH_CODELabel" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                    <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LP_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Width="100%" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ControlStyle-CssClass="btn btn-dark text-light" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="LP_ID" HeaderText="LP_ID" ReadOnly="True" SortExpression="LP_ID" />
                            <asp:BoundField DataField="LP" HeaderText="LP" SortExpression="LP" />
                            <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;LOYALTY_POINT&quot;" DeleteCommand="DELETE FROM &quot;LOYALTY_POINT&quot; WHERE &quot;LP_ID&quot; = :LP_ID" InsertCommand="INSERT INTO &quot;LOYALTY_POINT&quot; (&quot;LP_ID&quot;, &quot;LP&quot;, &quot;DISH_CODE&quot;) VALUES (:LP_ID, :LP, :DISH_CODE)" UpdateCommand="UPDATE BIBHU.LOYALTY_POINT SET LP_ID =, LP =, DISH_CODE =

UPDATE &quot;LOYALTY_POINT&quot; SET &quot;LP&quot; = :LP WHERE &quot;LP_ID&quot; = :LP_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="LP_ID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LP_ID" />
                            <asp:Parameter Name="LP" />
                            <asp:Parameter Name="DISH_CODE" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LP" />
                            <asp:Parameter Name="LP_ID" />
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
