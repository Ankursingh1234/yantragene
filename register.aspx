<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
  <title>Register|YANTRAGENE</title>
    <link rel="shortcut icon" href="images/yantra.png" />
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
<script>
 $(document).ready(function() {
    $('#contactForm').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            fullName: {
                validators: {
                    notEmpty: {
                        message: 'The full name is required and cannot be empty'
                    },
					regexp: {
                          regexp:  '^[a-zA-Z_\.]+$',
                            message: 'Name must not contain digits'
                        }
                }
            },
			cllgeName: {
                validators: {
                    notEmpty: {
                        message: 'The college name is required and cannot be empty'
                    },
					regexp: {
                          regexp:  '^[a-zA-Z_\.]+$',
                            message: 'College name must not contain digits'
                        }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The email address is not valid'
                    },
                        regexp: {
                            regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
                            message: 'The value is not a valid email address'
                        }
                }
            },
			phone: {
                validators: {
                    notEmpty: {
                        message: 'The phone is required and cannot be empty'
                    },
					stringLength: {
                        min: 10,
						max: 10,
                        message: 'The phone number must of 10 digits'
                    },
				
                        regexp: {
                          regexp:  '^[0-9_\.]+$',
                            message: 'The phone no should contain digits'
                        }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The title is required and cannot be empty'
                    },
                    stringLength: {
                        min: 5,
						max: 15,
                        message: 'The password must be at least 5 characters and atmost 15 characters long'
                    }
                }
            },
            confirmp: {
                validators: {
                    notEmpty: {
                        message: 'Confirm password is required and cannot be empty'
                    },
                    identical: {
                    field: 'password',
                    message: 'The password and its confirm are not the same'
                     }
                }
            }
        }
    });
});
</script>
    <script src="js/Validate.js" type="text/javascript"></script>
</head>
<body>
    <img src="images/yantra.png" alt="YANTRAGENE" />
    <form id="contactForm" method="post" class="form-horizontal">
    <div class="form-group">
        <label class="col-md-3 control-label">Full name</label>
        <div class="col-md-6">
            <input type="text" id="TextBox1" class="form-control" name="fullName" /><%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" name="fullName" placeholder="Password" required data-by-notempty-message="The name cannot be empty"></asp:TextBox>--%>
       
        </div>
    </div>
	<div class="form-group">
        <label class="col-md-3 control-label">College name</label>
        <div class="col-md-6">
            <input type="text" id="TextBox2" class="form-control" name="cllgeName" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Email</label>
        <div class="col-md-6">
            <input type="text" id="TextBox3" class="form-control" name="email" />
        </div>
    </div>
	<div class="form-group">
        <label class="col-md-3 control-label">Phone</label>
        <div class="col-md-6">
            <input type="text" id="TextBox4" class="form-control" name="phone" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Password</label>
        <div class="col-md-6">
            <input type="password" id="TextBox5" class="form-control" name="password" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Confirm Password</label>
        <div class="col-md-6">
            <input type="password" id="TextBox6" class="form-control" name="confirmp" />
        </div>
    </div>
    <!-- #messages is where the messages are placed inside -->
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <div id="messages"></div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button type="submit" class="btn btn-success">Register</button>                                
        </div>
    </div>
</form>
</body>
</html>
