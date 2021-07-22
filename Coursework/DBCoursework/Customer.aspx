<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="DBCoursework.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
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

                <li class="active">
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
                <li>
                    <a href="Delivery Address details.aspx">Delivery Address</a>
                </li>
                <li>
                    <a href="Customer Order Details.aspx">Customer Order</a>
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
            <h1>Customer</h1>
            <div>
                <form id="form1" runat="server">
                    <div>
                        <asp:FormView  ID="FormView1" runat="server" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="803px" OnPageIndexChanging="FormView1_PageIndexChanging">
                            <EditItemTemplate>
                                CUSTOMER_ID:
                  <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                                <br />
                                CUST_FIRST_NAME:
                  <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                                <br />
                                CUST_LAST_NAME:
                  <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                                <br />
                                ADDRESS:
                  <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                                <br />
                                TOTAL_LP:
                  <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                CUSTOMER_ID:
                  <asp:TextBox CssClass="form-control" ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
                                <br />
                                CUST_FIRST_NAME:
                  <asp:TextBox CssClass="form-control" ID="CUST_FIRST_NAMETextBox" runat="server" Text='<%# Bind("CUST_FIRST_NAME") %>' />
                                <br />
                                CUST_LAST_NAME:
                  <asp:TextBox CssClass="form-control" ID="CUST_LAST_NAMETextBox" runat="server" Text='<%# Bind("CUST_LAST_NAME") %>' />
                                <br />
                                ADDRESS:
                  <asp:TextBox CssClass="form-control" ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                                <br />
                                TOTAL_LP:
                  <asp:TextBox CssClass="form-control" ID="TOTAL_LPTextBox" runat="server" Text='<%# Bind("TOTAL_LP") %>' />
                                <br />
                                <asp:LinkButton CssClass="btn btn-dark" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton CssClass="btn btn-dark" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                CUSTOMER_ID:
                  <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                                <br />
                                CUST_FIRST_NAME:
                  <asp:Label ID="CUST_FIRST_NAMELabel" runat="server" Text='<%# Bind("CUST_FIRST_NAME") %>' />
                                <br />
                                CUST_LAST_NAME:
                  <asp:Label ID="CUST_LAST_NAMELabel" runat="server" Text='<%# Bind("CUST_LAST_NAME") %>' />
                                <br />
                                ADDRESS:
                  <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                                <br />
                                TOTAL_LP:
                  <asp:Label ID="TOTAL_LPLabel" runat="server" Text='<%# Bind("TOTAL_LP") %>' />
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <asp:GridView CssClass="table table-responsive-xl table-hover mt-3" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" Width="100%" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ControlStyle-CssClass="btn btn-dark text-light" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                            <asp:BoundField DataField="CUST_FIRST_NAME" HeaderText="CUST_FIRST_NAME" SortExpression="CUST_FIRST_NAME" />
                            <asp:BoundField DataField="CUST_LAST_NAME" HeaderText="CUST_LAST_NAME" SortExpression="CUST_LAST_NAME" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                            <asp:BoundField DataField="TOTAL_LP" HeaderText="TOTAL_LP" SortExpression="TOTAL_LP" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMER_ID&quot;, &quot;CUST_FIRST_NAME&quot;, &quot;CUST_LAST_NAME&quot;, &quot;ADDRESS&quot;, TOTAL_LP) VALUES (:CUSTOMER_ID, :CUST_FIRST_NAME, :CUST_LAST_NAME, :ADDRESS, :TOTAL_LP)" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUST_FIRST_NAME&quot; = :CUST_FIRST_NAME, &quot;CUST_LAST_NAME&quot; = :CUST_LAST_NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;TOTAL_LP&quot; = :TOTAL_LP WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="CUSTOMER_ID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CUSTOMER_ID" />
                            <asp:Parameter Name="CUST_FIRST_NAME" />
                            <asp:Parameter Name="CUST_LAST_NAME" />
                            <asp:Parameter Name="ADDRESS" />
                            <asp:Parameter Name="TOTAL_LP" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CUST_FIRST_NAME" />
                            <asp:Parameter Name="CUST_LAST_NAME" />
                            <asp:Parameter Name="ADDRESS" />
                            <asp:Parameter Name="TOTAL_LP" />
                            <asp:Parameter Name="CUSTOMER_ID" />
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
