<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TicketInfoview.aspx.cs" Inherits="Flight_Management_System.TicketInfoview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="product-payment-inner-st">
                            <ul id="myTab4" class="tab-review-design">
                                 <li><a class="active" href="FlightData.aspx">Adding Details </a></li>
                                <li><a href="WebForm1.aspx"> View Details </a></li>
                                 <li><a href="Flight_Details_View.aspx"> View Details </a></li>
                            </ul>
          <form runat="server">
              <div class="product-status mg-b-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            <h4>Products List</h4>
                            <div class="add-product">
                                <a href="product-edit.html">Add Product</a>
                            </div>
                            <asp:GridView ID="GridView1" runat="server"  GridLines="None" AllowPaging="True" PageSize="5" OnPageIndexChanging= "GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" OnLoad="GridView1_Load" > 
                            <Columns>
                                             <asp:TemplateField HeaderText="Sr.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Ticket ID" SortExpression="Ticket_ID">
                                            <EditItemTemplate>
                                                       <asp:Label ID="PID" runat="server"  width="100px"  Text='<%# Bind("Ticket_ID") %>'></asp:Label>
                         
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server"  width="100px"  Text='<%# Bind("Ticket_ID") %>'></asp:Label>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Profile ID" SortExpression="Profile_ID">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" width="150px"  Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Profile ID" Selected="True"></asp:ListItem>
                                                </asp:DropDownList>
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server"   width="150px" Text='<%# Bind("Profile_ID") %>'></asp:Label>
                                           </ItemTemplate>
                                           </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Flight ID" SortExpression="Flight_ID">
                                            <EditItemTemplate>
                                                  <asp:DropDownList ID="DropDownList2" width="150px"  Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Flight ID" Selected="True"></asp:ListItem>
                                                </asp:DropDownList> 
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server"   width="150px"    Text='<%# Bind("Flight_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Flight Details ID" SortExpression="FD_ID">
                                            <EditItemTemplate>
                                                 <asp:DropDownList ID="DropDownList3" width="160px"  Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Flight Details ID" Selected="True"></asp:ListItem>
                                                </asp:DropDownList>
                                                 </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server"  width="160px"    Text='<%# Bind("FD_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server"   width="150px"   Text='<%# Bind("Status") %>'></asp:Label>
                                            </ItemTemplate>
                                                 <EditItemTemplate>
                                                 <asp:DropDownList ID="DropDownList4" width="150px"  Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Status" Selected="True"></asp:ListItem>
                                                     <asp:ListItem Value="Pending" Text="Pending"   ></asp:ListItem>
                                                     <asp:ListItem Value="Booked" Text="Booked"  ></asp:ListItem>
                                                     <asp:ListItem Value="Applied" Text="Applied"  ></asp:ListItem>
                                                </asp:DropDownList>
                                              </EditItemTemplate>
                                       </asp:TemplateField>
                                     

                                       <asp:TemplateField HeaderText="Editing" SortExpression="Editing">
                                       <ItemTemplate>
                                                <asp:Button ID="btnedit" CommandName="Edit" runat="server" Text="Edit"    Class="pd-setting"/> 
                                                <asp:Button ID="btndelete" CommandName="Delete" runat="server" Text="Delete"   Class="pd-setting" /> 
                                       </ItemTemplate>
                                        <EditItemTemplate>
                                                <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update"   Class="pd-setting"/> 
                                                <asp:Button ID="btnCancel" CommandName="Cancel" runat="server" Text="Cancel"   Class="pd-setting" /> 
                                       </EditItemTemplate>
                                       </asp:TemplateField>
                          </Columns>
                        </asp:GridView>     
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
</form> 
</div>




</asp:Content>
