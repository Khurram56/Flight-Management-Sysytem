<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Flight_Details_View.aspx.cs" Inherits="Flight_Management_System.Flight_Details_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="product-payment-inner-st">
                            <ul id="myTab4" class="tab-review-design">
                                 <li><a class="active" href="#cod">Adding Details </a></li>
                                <li><a href="#grid"> View Details </a></li>
                                
                            </ul>
    <form runat="server">  
         <div class="product-status-wrap">
                            <h4>Products List</h4>
                            <div class="add-product">
                                <a href="product-edit.html">Add Product</a>
                            </div>
 <asp:GridView ID="GridView1" runat="server" Class="Table" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AutoGenerateColumns="False" GridLines="None" OnLoad="GridView1_Load" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"> 
             <Columns>
                  
                                       <asp:TemplateField HeaderText="Sr.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Flight ID" SortExpression="Flight_ID">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox1" runat="server" width="80px" Class="pd-setting" Text='<%# Bind("Flight_ID") %>' > </asp:TextBox>

                                          </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Flight_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                       </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Flight Departure Date" SortExpression="Flight_Departure_Date">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Class="pd-setting" Text='<%# Bind("Flight_Departure_Date") %>'  >  </asp:TextBox>
                                                
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server"    Text='<%# Bind("Flight_Departure_Date") %>'></asp:Label>
                                            </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Class="pd-setting" Text='<%# Bind("Price") %>' >  </asp:TextBox> 
                                               
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Available_Seats" SortExpression="Available_Seats">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Class="pd-setting"  Text='<%# Bind("Available_Seats") %>' >  </asp:TextBox>
                                               
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Available_Seats") %>'></asp:Label>
                                            </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Save" SortExpression="Save">

                                            <ItemTemplate>
                                                <asp:Button ID="btnedit" CommandName="Edit" runat="server" Text="Edit" class="pd-setting" />
                                                <asp:Button ID="btndelete" CommandName="Delete" runat="server" Text="Delete" class="pd-setting" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Button ID="btnupdate" CommandName="Update" runat="server" Text="Update" class="pd-setting"/>
                                                <asp:Button ID="btnCancel" CommandName="Cancel" runat="server" Text="Cancel" class="pd-setting" />
                                            </EditItemTemplate>
                                            
                                        </asp:TemplateField>
             </Columns>

</asp:GridView>























                         
                                   
                                    
                                       





</div>
        </form>
         </div>
</asp:Content>
