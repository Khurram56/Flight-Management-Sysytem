<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PassengerProfile.aspx.cs" Inherits="Flight_Management_System.PassengerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-payment-inner-st">
                            <ul id="myTab4" class="tab-review-design">
                                 <li><a class="active" href="#cod">Adding Details </a></li>
                                <li><a href="#grid"> View Details </a></li>
                                
                            </ul>
    <form runat="server">
        <div class="product-tab-list tab-pane fade" id="cod">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="row">
                                                    
                                                     <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                                      </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                                                      </div>
                                                       
                                                    </div>
                                                      <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Telephone No."></asp:TextBox>
                                                      </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                                      </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                                                      </div>
                                                       
                                                    </div>
                                                </div>
                                            

                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="payment-adress">
                                                            <asp:Button ID="Button1" runat="server" class="btn bg-btn-cl waves-effect waves-light" OnClick="Button1_Click" Text="Submit" />
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


        

         

    </form>
         </div>
</asp:Content>
