<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery Address Details.aspx.cs" Inherits="DBCoursework.Package_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delivery Location</title>
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
                    <a href="Restaurant Details.aspx">Restaurants</a>
                </li>
                <li>
                    <a href="Loyalty Point Details.aspx">Loyalty Points</a>
                </li>
                <li class="active">
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
        <div id="content" class="p-4 p-md-5 pt-5">
            <h1>Delivery Location</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                        <asp:FormView  ID="FormView1" runat="server" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                            <EditItemTemplate>
                                DELIVERY_ID:
                  <asp:Label ID="DELIVERY_IDLabel1" runat="server" Text='<%# Eval("DELIVERY_ID") %>' />
                                <br />
                                LONGITUDE:
                  <asp:TextBox CssClass="form-control" ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                                <br />
                                LATITUDE:
                  <asp:TextBox CssClass="form-control" ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                                <br />
                                DELIVERY_POINT:
                  <asp:TextBox CssClass="form-control" ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                                <br />
                                STAUTS:
                  <asp:TextBox CssClass="form-control" ID="STAUTSTextBox" runat="server" Text='<%# Bind("STAUTS") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                DELIVERY_ID:
                  <asp:TextBox CssClass="form-control" ID="DELIVERY_IDTextBox" runat="server" Text='<%# Bind("DELIVERY_ID") %>' />
                                <br />
                                LONGITUDE:
                  <asp:TextBox CssClass="form-control" ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                                <br />
                                LATITUDE:
                  <asp:TextBox CssClass="form-control" ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                                <br />
                                DELIVERY_POINT:
                  <asp:TextBox CssClass="form-control" ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                                <br />
                                STAUTS:
                  <asp:TextBox CssClass="form-control" ID="STAUTSTextBox" runat="server" Text='<%# Bind("STAUTS") %>' />
                                <br />
                                <asp:LinkButton CssClass="btn btn-dark" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton CssClass="btn btn-dark" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                DELIVERY_ID:
                  <asp:Label ID="DELIVERY_IDLabel" runat="server" Text='<%# Eval("DELIVERY_ID") %>' />
                                <br />
                                LONGITUDE:
                  <asp:Label ID="LONGITUDELabel" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                                <br />
                                LATITUDE:
                  <asp:Label ID="LATITUDELabel" runat="server" Text='<%# Bind("LATITUDE") %>' />
                                <br />
                                DELIVERY_POINT:
                  <asp:Label ID="DELIVERY_POINTLabel" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                                <br />
                                STAUTS:
                  <asp:Label ID="STAUTSLabel" runat="server" Text='<%# Bind("STAUTS") %>' />
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Widhth="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ControlStyle-CssClass="btn btn-dark text-light" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                            <asp:BoundField DataField="LONGITUDE" HeaderText="LONGITUDE" SortExpression="LONGITUDE" />
                            <asp:BoundField DataField="LATITUDE" HeaderText="LATITUDE" SortExpression="LATITUDE" />
                            <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                            <asp:BoundField DataField="STAUTS" HeaderText="STAUTS" SortExpression="STAUTS" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO &quot;DELIVERY_LOCATION&quot; (&quot;DELIVERY_ID&quot;, &quot;LONGITUDE&quot;, &quot;LATITUDE&quot;, &quot;DELIVERY_POINT&quot;, &quot;STAUTS&quot;) VALUES (:DELIVERY_ID, :LONGITUDE, :LATITUDE, :DELIVERY_POINT, :STAUTS)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;DELIVERY_LOCATION&quot;" DeleteCommand="DELETE FROM &quot;DELIVERY_LOCATION&quot; WHERE &quot;DELIVERY_ID&quot; = :DELIVERY_ID" UpdateCommand="UPDATE &quot;DELIVERY_LOCATION&quot; SET &quot;LONGITUDE&quot; = :LONGITUDE, &quot;LATITUDE&quot; = :LATITUDE, &quot;DELIVERY_POINT&quot; = :DELIVERY_POINT, &quot;STAUTS&quot; = :STAUTS WHERE &quot;DELIVERY_ID&quot; = :DELIVERY_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="DELIVERY_ID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DELIVERY_ID" />
                            <asp:Parameter Name="LONGITUDE" />
                            <asp:Parameter Name="LATITUDE" />
                            <asp:Parameter Name="DELIVERY_POINT" />
                            <asp:Parameter Name="STAUTS" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LONGITUDE" />
                            <asp:Parameter Name="LATITUDE" />
                            <asp:Parameter Name="DELIVERY_POINT" />
                            <asp:Parameter Name="STAUTS" />
                            <asp:Parameter Name="DELIVERY_ID" />
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
