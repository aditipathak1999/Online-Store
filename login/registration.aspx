<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="login_registration" %>
<!DOCTYPE html>
<html>
<head>
<title>Trendy Login Form  Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Trendy Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="agileits-main"> 
	<div class="w3top-nav">	
				<div class="w3top-nav-left">	
					<h1><a href="../user/home.aspx">Store</a></h1>
				</div>	
				<div class="w3top-nav-right">	
					<ul>
						<li><a href="../user/home.aspx" class="active">Home</a></li>
						<li><a href="../user/shop.aspx">Shop</a></li>  
						<li><a href="../user/aboutus.aspx">About</a></li> 
						<li><a href="../user/contactus.aspx">Contact</a></li>
						<%--<li><a href="#">Blog</a></li> 
						<li><a href="#">Contact</a></li>--%>
					</ul> 
				</div>	
				<div class="clear"></div>
			</div>	
		<div class="header-main" style="margin:4em auto 0;">
		<h2 style="padding-bottom: 40px;">Registration Now</h2>
			<div class="header-bottom">
				<div class="header-right w3agile">
					<div class="header-left-bottom agileinfo">
						<form action="#" method="post" runat="server">
							<%--<div class="icon1">
								<input type="email" placeholder="Enter Name" required=""/>
							</div>--%>
                            <div class="icon1">
								<%--<input type="email" placeholder="Email@example.com" required=""/>--%>
                                <asp:TextBox ID="txtemail" runat="server" type="email" placeholder="Email@example.com" required=""></asp:TextBox>
							</div>
							<div class="icon1">
								<%--<input type="password" placeholder="Password" required=""/>--%>
                                <asp:TextBox ID="txtpass" type="password" runat="server" placeholder="Password" required=""></asp:TextBox>
							</div>
                            <div class="icon1">
								<%--<input type="password" placeholder="Confirm Password" required=""/>--%>
                                <asp:TextBox ID="txtcpass" runat="server" type="password" placeholder="Confirm Password" required=""></asp:TextBox>
							</div>
							<div class="login-check">
								 <asp:CompareValidator ID="cv_pwd" runat="server" ControlToCompare="txtcpass" ControlToValidate="txtpass" ValueToCompare="txt_rcpwd" ErrorMessage="Password Doesn't Match" Font-Bold="True"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
							</div>
							<div class="bottom">
								<%--<input type="submit" value="Log in" />--%>
                                <asp:Button ID="btn_reg" runat="server" Text="Registration" type="submit" 
                                    onclick="btn_reg_Click" />

							</div>
							<p><asp:HyperLink ID="hyperloign"  runat="server" NavigateUrl="login.aspx">Login</asp:HyperLink></p>
					</form>	
					</div>
				</div>
			</div>
	</div>

	</div>	
	<!-- //main -->
	<!-- copyright -->
	<%--<div class="copyright w3-agile">
		<p>© 2018 Trendy Login Form . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
	</div>--%>
	<!-- //copyright --> 
</body>
</html>