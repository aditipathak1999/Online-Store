<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <aside id="colorlib-hero" class="breadcrumbs">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-1.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>Checkout</h1>
				   					<h2 class="bread"><span><a href="index.html">Home</a></span> <span><a href="cart.html">Shopping Cart</a></span> <span>Checkout</span></h2>
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
				<%--<div class="row row-pb-md">
					<div class="col-md-10 col-md-offset-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center active">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>--%>
				<div class="row">
					<div class="col-md-7" style="background-color: whitesmoke;padding-top: 5px;">
							<h2>Billing Details</h2>
		              	<div class="row">
			               <div class="col-md-12">
			                  <div class="form-group">
			                  	<label for="country">Select Country</label>
			                     <%--<div class="form-field">
			                     	<i class="icon icon-arrow-down3"></i>
			                        <select name="people" id="people" class="form-control">
				                      	<option value="#">Select country</option>
				                        <option value="#">Alaska</option>
				                        <option value="#">China</option>
				                        <option value="#">Japan</option>
				                        <option value="#">Korea</option>
				                        <option value="#">Philippines</option>
			                        </select>
			                     </div>--%> 
                                 <asp:TextBox ID="txtcountry" runat="server" class="form-control" placeholder="Enter Country"></asp:TextBox>
			                  </div>
			               </div>
			               <div class="form-group">
									<div class="col-md-6">
										<label for="fname">First Name</label>
										<%--<input type="text" id="fname" class="form-control" placeholder="Your firstname">--%>
                                        <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Your firstname"></asp:TextBox>
									</div>
									<div class="col-md-6">
										<label for="lname">Last Name</label>
										<%--<input type="text" id="lname" class="form-control" placeholder="Your lastname">--%>
                                        <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Your lastname"></asp:TextBox>
									</div>
								</div>
			               <div class="col-md-12">
									<div class="form-group">
										<label for="fname">Address</label>
			                    	<%--<input type="text" id="address" class="form-control" placeholder="Enter Your Address">--%>
                                    <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="Enter Your Address"></asp:TextBox>
			                  </div>
			               </div>
			               <div class="col-md-12">
									<div class="form-group">
										<label for="companyname">Town/City</label>
			                    	<%--<input type="text" id="towncity" class="form-control" placeholder="Town or City">--%>
                                    <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="Town or City"></asp:TextBox>
			                  </div>
			               </div>
			               <div class="form-group">
									<div class="col-md-6">
										<label for="stateprovince">State/Province</label>
										<%--<input type="text" id="fname" class="form-control" placeholder="State Province">--%>
                                        <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="State Province"></asp:TextBox>
									</div>
									<div class="col-md-6">
										<label for="lname">Zip/Postal Code</label>
										<%--<input type="text" id="zippostalcode" class="form-control" placeholder="Zip / Postal">--%>
                                        <asp:TextBox ID="txtzip" runat="server" class="form-control" placeholder="Zip / Postal" MaxLength=6></asp:TextBox>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
										<label for="email">E-mail Address</label>
										<%--<input type="text" id="email" class="form-control" placeholder="State Province">--%>
                                        <asp:TextBox ID="txtemail" runat="server" class="form-control" 
                                            placeholder="State Province" value=""></asp:TextBox>
									</div>
									<div class="col-md-6">
										<label for="Phone">Phone Number</label>
										<%--<input type="text" id="zippostalcode" class="form-control" placeholder="">--%>
                                        <asp:TextBox ID="txtumobile" runat="server" class="form-control" placeholder="Enter Mobile No" MaxLength=10></asp:TextBox>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
										  <%--<label><input type="radio" name="optradio">Create an Account? </label>
										  <label><input type="radio" name="optradio"> Ship to different address</label>--%>
                                          <%--<p><a href="order_details.aspx" class="btn btn-primary">Place an order</a></p>--%>
                                            <asp:Button ID="btn_order" runat="server" Text="Place an order" OnClick="btn_order_Click" class="btn btn-primary" style="margin-left: 250px;margin-top: 10px;"/>
										</div>
									</div>
								</div>
		              </div>
					</div>
					<div class="col-md-5">
						<div class="cart-detail">
							<h2>Cart Total</h2>
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <ul>
								        <li>
									        <%--<span>Subtotal</span> <span>$100.00</span>--%>
									        <ul>
										        <li><span><%#Eval("pro_name") %> </span> <span>$ <%#Eval("pro_price") %></span></li>
										        <%--<li><span>1 x Product Name</span> <span>$78.00</span></li>--%>
									        </ul>
								        </li>
								        <%--<li><span>Shipping</span> <span>$0.00</span></li>--%>
								        <li><span>Order Total</span> <span>$<%#Eval("pro_price") %></span></li>
							        </ul>
                                </ItemTemplate>
                            </asp:ListView>
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:constr %>" 
                                SelectCommand="SELECT * FROM [product] WHERE ([pid] = @pid)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="pid" QueryStringField="pro_id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
						</div>

						<div class="row">
							<div class="col-md-12">
								<%--<p><a href="order_details.aspx" class="btn btn-primary">Place an order</a></p>--%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

    </form>

</asp:Content>

