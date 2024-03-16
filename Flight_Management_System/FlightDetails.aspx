<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FlightDetails.aspx.cs" Inherits="Flight_Management_System.FlightDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="product-payment-inner-st">
                            <ul id="myTab4" class="tab-review-design">
                                 <li><a class="active" href="#cod">Adding Details </a></li>
                                <li><a href="FlightDetails.aspx"> View Details </a></li>
                                
                            </ul>
      <form runat="server">
        <div class="product-tab-list tab-pane fade"  id="cod">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="row"> 
                                                      
                                                          
                                                     <div class="col-lg-12">
                                                        <div class="form-group">
                                                         <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" placeholder="Flight ID" OnLoad="DropDownList1_Load"> 
                                                              
                                                         </asp:DropDownList>
                                                        </div>
                                                      <div class="form-group">
                                                             
                                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Flight Departure Date   DD-MM-YYYY"></asp:TextBox>
                                                      </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Price" OnLoad="TextBox2_Load"></asp:TextBox>
                                                      </div>
                                                           <div class="form-group">
                                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Available Seats"></asp:TextBox>
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
