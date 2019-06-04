<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Laptop.aspx.cs" Inherits="RovilTradingV1._2.Laptop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rovil trading and projects</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Carousel-Hero.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-v2-Modal--Full-with-Google-Map.css">
    <link rel="stylesheet" href="assets/css/dh-row-text-image-right-responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Social-Icons.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <form id="form1" runat="server">

            <div id="Nav">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
            <div class="container"><a class="navbar-brand" href="index.html">Rovil trading and projects</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navcol-1">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="index.html">Home</a></li>
                    </ul><span class="navbar-text actions"> <a href="Login.aspx" class="login">Log In</a></span></div>
            </div>
        </nav>
    </div>

        <div data-bs-parallax-bg="true" style="height:500px;background-image:url(assets/img/desk.jpg);background-position:center;background-size:cover;"></div>

        <!-- start of laptop deals -->
        <h1 data-aos="slide-up" data-aos-duration="650" data-aos-delay="300" data-aos-once="true">Laptops</h1>
            <!-- Start of table holding List View -->
        <table width="100%">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                
                                <!-- Start of list view -->
                                <asp:ListView ID="ListView1" runat="server" GroupItemCount="3" >
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <%--<asp:Label ID="ItemImageLabel" Width="150px" runat="server" Text='<%# Eval("ItemImage") %>'  />--%>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("ItemImage") %>' Height="200" Width="200" />
                <br />
                <asp:Label ID="ItemDescriptionLabel" runat="server" Text='<%# Eval("ItemDescription") %>' />
                <br />R
                <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice") %>' />
                <br /></td>
        </AlternatingItemTemplate>

        <EditItemTemplate>
            <td runat="server" style="">
                <%--<asp:TextBox ID="ItemImageTextBox" runat="server" Text='<%# Bind("ItemImage") %>' />--%>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("ItemImage") %>' Height="200" Width="200" />
                <br />
                <asp:TextBox ID="ItemDescriptionTextBox" runat="server" Text='<%# Bind("ItemDescription") %>' />
                <br />
                <asp:TextBox ID="ItemPriceTextBox" runat="server" Text='<%# Bind("ItemPrice") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                <%--<asp:TextBox ID="ItemImageTextBox" runat="server" Text='<%# Bind("ItemImage") %>' />--%>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("ItemImage") %>' Height="200" Width="200" />
                <br />
                <asp:TextBox ID="ItemDescriptionTextBox" runat="server" Text='<%# Bind("ItemDescription") %>' />
                <br />
                <asp:TextBox ID="ItemPriceTextBox" runat="server" Text='<%# Bind("ItemPrice") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <%--<asp:Label ID="ItemImageLabel" runat="server" Text='<%# Eval("ItemImage") %>' />--%>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("ItemImage") %>' Height="200" Width="200" />
                <br />
                <asp:Label ID="ItemDescriptionLabel" runat="server" Text='<%# Eval("ItemDescription") %>' />
                <br />R
                <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice") %>' />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                <%--<asp:Label ID="ItemImageLabel" runat="server" Text='<%# Eval("ItemImage") %>' />--%>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("ItemImage") %>' Height="200" Width="200" />
                <br />
                <asp:Label ID="ItemDescriptionLabel" runat="server" Text='<%# Eval("ItemDescription") %>' />
                <br />
                <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice") %>' />
                <br /></td>
        </SelectedItemTemplate>
        </asp:ListView>
        <!-- End of list view -->
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <!-- end of table holding list view -->
        <!-- End of laptop deals -->


            <div class="social-icons"><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-youtube"></i></a></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    </form>
</body>
</html>
