<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant Details.aspx.cs" Inherits="DBCoursework.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Restaurant</title>
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

                <li>
                    <a href="Customer.aspx">Customer</a>
                </li>
                <li>
                    <a href="Dish Details.aspx">Dishes</a>
                </li>
                <li class="active">
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
            <h1>Restaurants</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                        <asp:FormView  ID="FormView1" runat="server" DataKeyNames="RESTRO_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="358px" OnPageIndexChanging="FormView1_PageIndexChanging">
                            <EditItemTemplate>
                                RESTRO_ID:
                  <asp:Label ID="RESTRO_IDLabel1" runat="server" Text='<%# Eval("RESTRO_ID") %>' />
                                <br />
                                RESTRO_NAME:
                  <asp:TextBox CssClass="form-control" ID="RESTRO_NAMETextBox" runat="server" Text='<%# Bind("RESTRO_NAME") %>' />
                                <br />
                                RESTRO_ADDRESS:
                  <asp:TextBox CssClass="form-control" ID="RESTRO_ADDRESSTextBox" runat="server" Text='<%# Bind("RESTRO_ADDRESS") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                RESTRO_ID:
                  <asp:TextBox CssClass="form-control" ID="RESTRO_IDTextBox" runat="server" Text='<%# Bind("RESTRO_ID") %>' />
                                <br />
                                RESTRO_NAME:
                  <asp:TextBox CssClass="form-control" ID="RESTRO_NAMETextBox" runat="server" Text='<%# Bind("RESTRO_NAME") %>' />
                                <br />
                                RESTRO_ADDRESS:
                  <asp:TextBox CssClass="form-control" ID="RESTRO_ADDRESSTextBox" runat="server" Text='<%# Bind("RESTRO_ADDRESS") %>' />
                                <br />
                                <asp:LinkButton CssClass="btn btn-dark" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton CssClass="btn btn-dark" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                RESTRO_ID:
                  <asp:Label ID="RESTRO_IDLabel" runat="server" Text='<%# Eval("RESTRO_ID") %>' />
                                <br />
                                RESTRO_NAME:
                  <asp:Label ID="RESTRO_NAMELabel" runat="server" Text='<%# Bind("RESTRO_NAME") %>' />
                                <br />
                                RESTRO_ADDRESS:
                  <asp:Label ID="RESTRO_ADDRESSLabel" runat="server" Text='<%# Bind("RESTRO_ADDRESS") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RESTRO_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Width="100%" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ControlStyle-CssClass="btn btn-dark text-light" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="RESTRO_ID" HeaderText="RESTRO_ID" ReadOnly="True" SortExpression="RESTRO_ID" />
                            <asp:BoundField DataField="RESTRO_NAME" HeaderText="RESTRO_NAME" SortExpression="RESTRO_NAME" />
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
                </form>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;RESTAURANT&quot; WHERE &quot;RESTRO_ID&quot; = :RESTRO_ID" InsertCommand="INSERT INTO &quot;RESTAURANT&quot; (&quot;RESTRO_ID&quot;, &quot;RESTRO_NAME&quot;, &quot;RESTRO_ADDRESS&quot;) VALUES (:RESTRO_ID, :RESTRO_NAME, :RESTRO_ADDRESS)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;RESTAURANT&quot;" UpdateCommand="UPDATE &quot;RESTAURANT&quot; SET &quot;RESTRO_NAME&quot; = :RESTRO_NAME, &quot;RESTRO_ADDRESS&quot; = :RESTRO_ADDRESS WHERE &quot;RESTRO_ID&quot; = :RESTRO_ID">
        <DeleteParameters>
            <asp:Parameter Name="RESTRO_ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RESTRO_ID" />
            <asp:Parameter Name="RESTRO_NAME" />
            <asp:Parameter Name="RESTRO_ADDRESS" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RESTRO_NAME" />
            <asp:Parameter Name="RESTRO_ADDRESS" />
            <asp:Parameter Name="RESTRO_ID" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    </body>
</html>
