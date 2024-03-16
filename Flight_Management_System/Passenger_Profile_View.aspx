<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Passenger_Profile_View.aspx.cs" Inherits="Flight_Management_System.Passenger_Profile_View" %>
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
                                            <asp:TemplateField HeaderText="Profile ID" SortExpression="Profile_ID">
                                            <EditItemTemplate>
                                                       <asp:Label ID="PID" runat="server"    Text='<%# Bind("Profile_ID") %>'></asp:Label>
                         
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server"    Text='<%# Bind("Profile_ID") %>'></asp:Label>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                          <asp:TemplateField HeaderText="First Name" SortExpression="First_Name">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox1" Class="pd-setting" runat="server"   width="80px"   Text='<%# Bind("First_Name") %>'></asp:TextBox>

                                           </EditItemTemplate>
                                           <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server"   width="80px" Text='<%# Bind("First_Name") %>'></asp:Label>
                                           </ItemTemplate>
                                           </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Last Name" SortExpression="Last_Name">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox2" Class="pd-setting" runat="server" width="80px"   Text='<%# Bind("Last_Name") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server"   width="80px"    Text='<%# Bind("Last_Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox3" Class="pd-setting" runat="server" width="80px"    Text='<%# Bind("Address") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server"  width="80px"    Text='<%# Bind("Address") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Tel No." SortExpression="Tel_No">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server"   width="80px"   Text='<%# Bind("Tel_No") %>'></asp:Label>
                                            </ItemTemplate>
                                                 <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox4" Class="pd-setting" runat="server"  width="80px"   Text='<%#Bind("Tel_No") %>' > </asp:TextBox>
                                            </EditItemTemplate>
                                       </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" width="80px"     Text='<%# Bind("Password") %>'></asp:Label>
                                            </ItemTemplate>
                                                 <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox5" Class="pd-setting" runat="server"  width="80px"   Text='<%#Bind("Password") %>' > </asp:TextBox>
                                            </EditItemTemplate>
                                       </asp:TemplateField> <asp:TemplateField HeaderText="Email ID" SortExpression="Email_ID">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server"  width="180px"   Text='<%# Bind("Email_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                                 <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox6" Class="pd-setting" runat="server"  width="200px"   Text='<%#Bind("Email_ID") %>' > </asp:TextBox>
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
