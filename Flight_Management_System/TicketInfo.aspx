<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TicketInfo.aspx.cs" Inherits="Flight_Management_System.TicketInfo" %>
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
                                                   <div class="col-lg-12">
                                                        
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" placeholder="Profile ID" OnLoad="DropDownList1_Load" AppendDataBoundItems="true">
                                                                <asp:ListItem Value="0" Text="Profile ID" Selected="True"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="form-group">
                                                         <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" placeholder="Flight ID" OnLoad="DropDownList2_Load" AppendDataBoundItems="true">
                                                             <asp:ListItem Value="0" Text="Flight ID" Selected="True"></asp:ListItem>
                                                         </asp:DropDownList>
                                                            
                                                        </div>
                                                           
                                                    
                                                         <div class="form-group">
                                                         <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" placeholder="Flight Details ID" OnLoad="DropDownList3_Load" AppendDataBoundItems="true">
                                                             <asp:ListItem Value="0" Text="Flight Details ID" Selected="True"></asp:ListItem>
                                                         </asp:DropDownList>
                                                            
                                                        </div>
                                                         <div class="form-group">
                                                         <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" placeholder="Status" OnLoad="DropDownList4_Load"> 
                                                           
                                                             </asp:DropDownList>
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
