<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

		<aside id="colorlib-hero" class="breadcrumbs">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-1.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>Products</h1>
				   					<h2 class="bread"><span><a href="home.aspx">Home</a></span> <span>Shop</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div class="colorlib-shop">
			<div class="container">
				<div class="row" style="margin-left: -80px;">
					<div class="col-md-10 col-md-push-2">
						<div class="row row-pb-lg">

							<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-3 text-center">
						    <div class="product-entry">
							    <div class="product-img"><%--style="background-image: url(images/item-5.jpg);"--%>
                                <img src='images/<%#Eval("pro_img") %>' height="100%" width="100%" />
								    <p class="tag"><span class="new">New</span></p>
								    <div class="cart">
									    <p>
										    <span><a href='view_details.aspx?pro_id=<%#Eval("pid") %>'><i class="icon-eye"></i></a></span>
									    </p>
								    </div>
							    </div>
							    <div class="desc">
								    <h3><a href="view_details.aspx"><%#Eval("pro_name") %></a></h3>
								    <p class="price"><span>$<%#Eval("pro_price") %></span></p>
							    </div>
						    </div>
					    </div>
                    </ItemTemplate>
                </asp:ListView>
                    				
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-subscribe">

</asp:Content>

