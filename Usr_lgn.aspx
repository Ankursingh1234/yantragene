<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usr_lgn.aspx.cs" Inherits="Usr_lgn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YG | PROFILE</title>
    <%--<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script language="javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    --%><link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.dataTables.min.css">
    <style type="text/css" class="init">
	</style>
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-1.12.4.min.js">
    </script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js">
    </script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js">
    </script>
    <link id="theme" href="css/theme/theme-green.css" rel="stylesheet" />
    <link href="css/new.css" rel="stylesheet" />
    <link href="css/style.changer.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/soon.css" rel="stylesheet" />
    <link href="css/vertical-rhythm.min.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/et-line.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/magnific-popup.css" rel="stylesheet" />
    <link href="css/vertical.min.css" rel="stylesheet" />
    <link href="css/rotate-headlines.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-3.1.1.intellisense.js"></script>
    <%--<script type="text/javascript" class="init">

	    $(document).ready(function () {
	        $('#example').DataTable({
	            responsive: {
	                details: {
	                    type: 'column'
	                }
	            },
	            columnDefs: [{
	                className: 'control',
	                orderable: false,
	                targets: 0
	            }],
	            order: [1, 'asc']
	        });
	    });

	</script>--%>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap4.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.1.1/js/responsive.bootstrap4.min.js"></script>
    <!--script for table -->
    <script type="text/javascript" class="init">



        $(document).ready(function () {
            $('#example').DataTable({
                responsive: {
                    details: {
                        display: $.fn.dataTable.Responsive.display.modal({
                            header: function (row) {
                                var data = row.data();
                                return 'Details for ' + data[0] + ' ' + data[1];
                            }
                        }),
                        renderer: $.fn.dataTable.Responsive.renderer.tableAll({
                            tableClass: 'table'
                        })
                    }
                }
            });
        });



    </script>
</head>
<body style="background-image: url('images/giphy.gif')">
    <form id="form1" runat="server">

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="container bgt well">
            <div class="row">
                <div class="col-md-4">
                    <!-- div for profle image -->
                    <div class="row text-center">
                        <img border="0" src="images/p.png">
                    </div>
                    <br />
                </div>
                <!--div for profie detail-->
                <div class="col-md-8 text-center">
                    <h1 style="align-content: center; font-family: 'Brush Script MT'">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
                    <br />
                    <div class="row">
                        <div class="col-md-4 header">User Id </div>
                        <div class="col-md-8">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4 header">Mobile No. </div>
                        <div class="col-md-8">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 header">Email </div>
                        <div class="col-md-8">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 header">College </div>
                        <div class="col-md-8">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <a runat="server" href="Events.aspx" class="btn btn-info">Register Event</a>
                    <%--<a runat="server" href="Default.aspx" class="btn btn-danger">Log Out</a>--%>
                    <asp:Button runat="server" CssClass="btn btn-danger fa fa-power-off" Text="Log Out" OnClick="logout_Click" OnClientClick="logout_Click" />
                    <asp:button  class="btn btn-danger" runat="server" Text="Update team" Enabled="false" ToolTip="Enable between 5-6th march" />
                </div>

            </div>
            <div class="modal" id="asd" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content ">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Update team</b></h4>
                        </div>


                        <div class="modal-body">
                            Updation will start from 5-7th March
                        
                                
                        </div>

                    </div>
                </div>
            </div>

            <%--       <div class="modal" id="Modal" role="dialog">
                <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title text-center"><b class="text-warning">Update</b></h4>
               
                </div>
                <div class="modal-body">
                    <br />
                    Updation will start from 5-7th March
                    <%--<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     </div>
                <div class="modal-footer">
                </div>
            </div>
            --%>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#menu1"><b class="text-success">REG. INFO </b></a></li>
                <li><a data-toggle="tab" href="#menu2"><b class="text-success">CHANGE PASSWORD</b></a></li>


            </ul>

            <div class="tab-content">
                <div id="menu1" class="tab-pane in active">
                    <div class="text-center">
                        <table id="example" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
                            <thead>
                                <tr>

                                    <th>Group Name</th>
                                    <th>Event</th>
                                    <th>Team Leader</th>
                                    <th>Team Member 1</th>
                                    <th>Team Member 2</th>
                                    <th>Team Member 3</th>
                                    <th>Team Member 4</th>

                                </tr>
                            </thead>
                            <tbody>
                                <!-- event detail -->
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <div class="text-center">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Old Password" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="form-control" placeholder="New Password" runat="server" ToolTip="Enter your new password"> </asp:TextBox>
                        <asp:RequiredFieldValidator class="form-control" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBox2" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="form-control" runat="server" ErrorMessage="Password must be 6-12 characters long  and does not contain white spaces" Font-Size="Smaller" ValidationExpression="\S{6,12}" ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox3" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" runat="server" ToolTip="Re-enter your password"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="CHANGE PASSWORD" CssClass="btn btn-success" OnClick="button_click" />
                        <asp:RequiredFieldValidator class="form-control" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please confirm the password" ControlToValidate="TextBox3" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator class="form-control" ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ControlToValidate="TextBox3" ControlToCompare="TextBox2" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </div>
                </div>
            </div>
            <br />
        </div>
        <!-- Navigation panel -->
        <div class="nav-bar-compact clearfix">

            <!-- Logo ( * your text or image into link tag *) -->
            <div class="nbc-logo-wrap local-scroll">
                <a href="Default.aspx" class="nbc-logo">
                    <img src="images/yantra.png" width="80" height="27" alt="" />
                </a>
            </div>

            <!-- Menu Button -->
            <%-- <div class="nbc-menu-button">
                    <i class="nbc-menu-icon"></i>
                </div>
                --%>
            <!-- Menu Links -->
            <nav class="nbc-menu-wrap">
                <ul class="nbc-menu-links local-scroll">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="About.aspx">About</a>
                    </li>
                    <li>
                        <a href="Events.aspx">Events</a>
                    </li>
                    <li>
                        <a href="Gallery.aspx">Gallery</a>
                    </li>
                    <li>
                        <a href="Contact.aspx">Contact</a>
                    </li>
                    <li>
                        <a href="Sponsors.aspx">Sponsors</a>
                    </li>

                </ul>

                <!-- Social Links -->
                <div class="nbc-social-links">
                    <a href="https://www.facebook.com/YANTRAGENE2017/" target="_blank"><i class="fa fa-facebook"></i></a>
                    <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                </div>
                <!-- End Social Links -->

            </nav>
        </div>
    </form>
    <%--      <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>--%>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
    <!-- End Navigation panel -->
    <%--<script src="js/jquery-3.1.1.min.js"></script>--%>
    <script src="js/jquery.appear.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
    <script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
    <script type="text/javascript" src="js/jquery.ba-hashchange.min.js"></script>
    <script type="text/javascript" src="js/jquery.viewport.mini.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.appear.js"></script>
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/contact-form.js"></script>
    <script type="text/javascript" src="js/animations.min.js"></script>
    <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
    <script src="js/animated-headers/TweenLite.min.js"></script>
    <script src="js/animated-headers/EasePack.min.js"></script>
    <script src="js/animated-headers/rAF.js"></script>
    <script src="js/animated-headers/demo-3.js"></script>
</body>
</html>
