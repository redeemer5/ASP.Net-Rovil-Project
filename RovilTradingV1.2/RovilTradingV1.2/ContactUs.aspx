﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RovilTradingV1._2.ContactUs" %>

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
        <div>
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
            <div class="container"><a class="navbar-brand" href="#">Rovil trading and projects</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="index.html">Home</a></li>
                    </ul><span class="navbar-text actions"> <a href="Login.aspx" class="login">Log In</a></span></div>
    </div>
    </nav>
    </div>

    <div>
        <div class="container-fluid">
            <h1>Contact Information</h1>
            <hr>
            <form action="javascript:void(0);" method="get" id="contactForm"><input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.awebsite.com"><input class="form-control" type="hidden" name="subject" value="Awebsite.com Contact Form"><input class="form-control" type="hidden"
                    name="to" value="email@awebsite.com">
                <div class="form-row">
                    <div class="col-md-6">
                        <div id="successfail"></div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12 col-md-6" id="message">
                        <h2 class="h4"><i class="fa fa-envelope"></i> Contact Us<small><small class="required-input">&nbsp;(*required)</small></small>
                        </h2>
                        <div class="form-group"><label for="from-name">Name</label><span class="required-input">*</span>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-user-o"></i></span></div>  <asp:TextBox ID="fromname" runat="server" class="form-control" required="" placeholder="Full Name"></asp:TextBox> <%--<input class="form-control" type="text" name="name" required="" placeholder="Full Name" id="from-name">--%></div>
                        </div>
                        <div class="form-group"><label for="from-email">Email</label><span class="required-input">*</span>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-envelope-o"></i></span></div> <asp:TextBox runat="server" class="form-control" required="" placeholder="Email Address" id="fromemail"></asp:TextBox><%--<input class="form-control" type="text" name="email" required="" placeholder="Email Address" id="from-email">--%></div>
                        </div>
                        <div class="form-row">
                            <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                <div class="form-group"><label for="from-phone">Phone</label><span class="required-input">*</span>
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-phone"></i></span></div> <asp:TextBox runat="server" class="form-control" required="" placeholder="Primary Phone" id="fromphone"></asp:TextBox> <%--<input class="form-control" type="text" name="phone" required="" placeholder="Primary Phone" id="from-phone">--%></div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                <div class="form-group"><label for="from-calltime">Best Time to Call</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></div> <asp:DropDownList runat="server" class="form-control" id="fromcalltime">
                                                                                                                                                        <asp:ListItem>Morning</asp:ListItem>
                                                                                                                                                        <asp:ListItem>Afternoon</asp:ListItem>
                                                                                                                                                        <asp:ListItem>Evening</asp:ListItem>
                                                                                                                                                   </asp:DropDownList> <%--<select class="form-control" name="call time" id="from-calltime"><optgroup label="Best Time to Call"><option value="Morning" selected="">Morning</option><option value="Afternoon">Afternoon</option><option value="Evening">Evening</option></optgroup></select>--%></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group"><label for="from-comments">Comments</label>  <asp:TextBox runat="server" class="form-control" rows="5" placeholder="Enter Comments" id="fromcomments" TextMode="MultiLine"></asp:TextBox>  <%--<textarea class="form-control" rows="5" name="comments" placeholder="Enter Comments" id="from-comments"></textarea>--%></div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col"> <asp:Button runat="server" class="btn btn-primary btn-block" id="ResetBtn" Text="Reset"/> <%--<button class="btn btn-primary btn-block" type="reset"><i class="fa fa-undo"></i> Reset</button>--%> </div>
                                <div class="col"> <asp:Button runat="server" class="btn btn-primary btn-block" ID="SubmitBtn" Text="Submit" OnClick="SubmitBtn_Click" />  <%--<button class="btn btn-primary btn-block" type="submit">Submit <i class="fa fa-chevron-circle-right"></i></button>--%></div>
                            </div>
                        </div>
                        <hr class="d-flex d-md-none">
                    </div>
                    <div class="col-12 col-md-6">
                        <h2 class="h4"><i class="fa fa-location-arrow"></i> Locate Us</h2>
                        <div class="form-row">
                            <div class="col-12">
                                <div class="static-map"><a href="https://www.google.com/maps/place/Daytona+International+Speedway/@29.1815062,-81.0744275,15z/data=!4m13!1m7!3m6!1s0x88e6d935da1cced3:0xa6b3e1bc0f2fc83a!2s1801+W+International+Speedway+Blvd,+Daytona+Beach,+FL+32114!3b1!8m2!3d29.187028!4d-81.0703076!3m4!1s0x88e6d949a4cb8593:0x1387c6c0b5c8cc97!8m2!3d29.1851681!4d-81.0705292"
                                        target="_blank" rel="noopener"> <img class="img-fluid" src="http://maps.googleapis.com/maps/api/staticmap?autoscale=2&amp;size=600x210&amp;maptype=roadmap&amp;format=png&amp;visual_refresh=true&amp;markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C582+1801+W+International+Speedway+Blvd+Daytona+Beach+FL+32114&amp;zoom=12" alt="Google Map of Daytona International Speedway"></a></div>
                            </div>
                            <div class="col-sm-6 col-md-12 col-lg-6">
                                <h2 class="h4"><i class="fa fa-user"></i> Our Info</h2>
                                <div><span><strong>Name</strong></span></div>
                                <div><span>email@awebsite.com</span></div>
                                <div><span>www.awebsite.com</span></div>
                                <hr class="d-sm-none d-md-block d-lg-none">
                            </div>
                            <div class="col-sm-6 col-md-12 col-lg-6">
                                <h2 class="h4"><i class="fa fa-location-arrow"></i> Our Address</h2>
                                <div><span><strong>Office Name</strong></span></div>
                                <div><span>55 Icannot Dr</span></div>
                                <div><span>Daytone Beach, FL 85150</span></div>
                                <div><abbr data-toggle="tooltip" data-placement="top" title="Office Phone: 555-867-5309">O:</abbr> 555-867-5309</div>
                                <hr class="d-sm-none">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </form>
</body>
</html>
