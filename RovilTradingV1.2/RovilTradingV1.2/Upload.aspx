<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="RovilTradingV1._2.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rovil upload panel</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/-Login-form-Page-BS4-.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Carousel-Hero.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-v2-Modal--Full-with-Google-Map.css">
    <link rel="stylesheet" href="assets/css/dh-row-text-image-right-responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Social-Icons.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <style>
          #ContentView
        {
            width:50%;
            height:450px;
            align-content:center;
            padding-left:10em;
            padding-top:11em;
        }

        #Controls
        {
            float:right;
            width:35%;
            padding-right:1em;
            padding-top:7em;
        }

                #Social
        {
            position:fixed;
            bottom:0;
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="WelcomeLbl" runat="server" Text="Welcome"></asp:Label> <asp:Label ID="SessionLbl" runat="server"></asp:Label>
        <p> <a href="Login.aspx"> Log-Out </a> </p>

        <div id="Controls">
            <h1>Upload Panel</h1>

            <table>
                <tr>
                    <td> <asp:DropDownList ID="DDL1" runat="server"></asp:DropDownList> </td>
                </tr>

                <tr>
                    <td> <asp:TextBox runat="server" ID="ItemDescriptionTxb" required="" class="form-control" placeholder="Item Description" ></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:TextBox ID="PriceTxb" runat="server" required="" placeholder="Price" TextMode="Number" class="form-control"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" /> </td>
                </tr>

                <tr>
                    <td> <asp:Button ID="UploadBtn" runat="server" class="btn btn-light dropdown-toggle" Text="Upload" OnClick="UploadBtn_Click" /> </td>
                </tr>
            </table>
        </div>

        <div id="ContentView">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id"
        OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
    <Columns>


        <asp:TemplateField HeaderText="ItemName" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
            </ItemTemplate>

            <EditItemTemplate>
                <asp:TextBox ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>

    

    <asp:TemplateField HeaderText="ItemDescription" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblCat" runat="server" Text='<%# Eval("ItemDescription") %>'></asp:Label>
            </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="ItemDescription" runat="server" Text='<%# Eval("ItemDescription") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>


    

        <asp:TemplateField HeaderText="ItemPrice" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblCat" runat="server" Text='<%# Eval("ItemPrice") %>'></asp:Label>
            </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="ItemPrice" runat="server" Text='<%# Eval("ItemPrice") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>



        <asp:TemplateField HeaderText="ItemImage" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:image id="ItemImage" runat="server" imageurl='<%#Eval("ItemImage") %>' height="200" width="200" />
            </ItemTemplate>

        <EditItemTemplate>
            <asp:image id="ItemImage" runat="server" imageurl='<%#Eval("ItemImage") %>' height="200" width="200" />
        </EditItemTemplate>
    </asp:TemplateField>



    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
</Columns>

</asp:GridView>

        </div>


    </form>

        <%--<div class="social-icons" id="Social"><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-youtube"></i></a></div>--%>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
</body>
</html>
