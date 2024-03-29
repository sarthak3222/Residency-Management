﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>


<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>24 CARAT RESIDENCY ADMIN</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets1/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets1/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets1/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets1/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1 style ="color:Silver;text-align:center;">24 CARAT RESIDENCY</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											
												
												<h2 style ="color:Silver;text-align:center;">ADMIN LOGIN</h2>
											

											<div class="space-6"></div>

											<form id="Form1" runat ="server">
												
													
                                       <label class="block clearfix">
                                    <span class="block input-icon input-icon-right">
                                                    <asp:RegularExpressionValidator ID="revemailid" runat="server" 
                                                             ControlToValidate="txtuname" 
                                                             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                                ForeColor ="#E2213E" Display="Dynamic">
                                                                You Must Enter Proper E-mail Id
                                                                </asp:RegularExpressionValidator>

                                                <asp:RequiredFieldValidator ID="rfemailid" runat="server" 
                                                   Display="Dynamic" ControlToValidate="txtuname" ForeColor ="#E2213E">
                                                    E-mail Id Can't Blank</asp:RequiredFieldValidator>

                        <asp:TextBox ID="txtuname" class="form-control" placeholder="Username"  runat="server">
                        </asp:TextBox>
                        </span>
                        </label>
         
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															 <asp:RequiredFieldValidator ID="rfpassword" runat="server" 
                                                            Display="Dynamic" ControlToValidate="txtpassword" ForeColor ="#E2213E">
                                                            Password Must Required</asp:RequiredFieldValidator>
                        
                        <asp:TextBox ID="txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password">
                        </asp:TextBox>
                      
														</span>
													</label>
                                                    <div class="clearfix">
  
                        <asp:Button ID="btnlogin" runat="server" class="btn btn-success" Text="LOGIN" 
                                style="background-color: #5cb85c;border-color: #fff; color:White;"/>
                        </div>
													
											</form>

											
											<div class="space-6"></div>

											
										</div><!-- /.widget-main -->

										
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

						

								
							</div><!-- /.position-relative -->

							
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets1/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
		    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
		    jQuery(function ($) {
		        $(document).on('click', '.toolbar a[data-target]', function (e) {
		            e.preventDefault();
		            var target = $(this).data('target');
		            $('.widget-box.visible').removeClass('visible'); //hide others
		            $(target).addClass('visible'); //show target
		        });
		    });



		    //you don't need this, just used for changing background
		    jQuery(function ($) {
		        $('#btn-login-dark').on('click', function (e) {
		            $('body').attr('class', 'login-layout');
		            $('#id-text2').attr('class', 'white');
		            $('#id-company-text').attr('class', 'blue');

		            e.preventDefault();
		        });
		        $('#btn-login-light').on('click', function (e) {
		            $('body').attr('class', 'login-layout light-login');
		            $('#id-text2').attr('class', 'grey');
		            $('#id-company-text').attr('class', 'blue');

		            e.preventDefault();
		        });
		        $('#btn-login-blur').on('click', function (e) {
		            $('body').attr('class', 'login-layout blur-login');
		            $('#id-text2').attr('class', 'white');
		            $('#id-company-text').attr('class', 'light-blue');

		            e.preventDefault();
		        });

		    });
		</script>
	</body>
</html>
