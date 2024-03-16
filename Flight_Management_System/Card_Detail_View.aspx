<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Card_Detail_View.aspx.cs" Inherits="Flight_Management_System.Card_Detail_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="product-payment-inner-st">
                                   
    <form runat="server">  
         <div class="product-status-wrap">
                            <h4>Products List</h4>
                            <div class="add-product">
                                <a href="product-edit.html">Add Product</a>
                            </div>
 <asp:GridView ID="GridView1" runat="server"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="5"  AutoGenerateColumns="False" GridLines="None"  OnLoad="GridView1_Load" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"> 
             <Columns>
                  
                                       <asp:TemplateField HeaderText="Sr.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Profile ID" SortExpression="Profile_ID">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" Width="150px" Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Profile ID" Selected="True"></asp:ListItem>
                                                </asp:DropDownList>
           
                                          </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Width="150px"  Text='<%# Bind("Profile_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                       </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Card No." SortExpression="Card_No">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Width="150px" Class="pd-setting" Text='<%# Bind("Card_No") %>'  >  </asp:TextBox>
                                                
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Width="150px"   Text='<%# Bind("Card_No") %>'></asp:Label>
                                            </ItemTemplate>
                                       </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Card Type" SortExpression="Card_Type">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Width="150px" CssClass ="pd-setting" Text='<%# Bind("Card_Type") %>' >  </asp:TextBox> 
                                               
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Width="150px"  Text='<%# Bind("Card_Type") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Expiration Month"    SortExpression="Expiration_Month">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" Class="pd-setting" runat="server" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="0" Text="Expiration Month" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Value="January" Text="January"  ></asp:ListItem>
                                                    <asp:ListItem Value="February" Text="February"  ></asp:ListItem>
                                                    <asp:ListItem Value="March" Text="March"  ></asp:ListItem>
                                                    <asp:ListItem Value="April" Text="April" ></asp:ListItem>
                                                    <asp:ListItem Value="May" Text="May"  ></asp:ListItem>
                                                    <asp:ListItem Value="June" Text="June"  ></asp:ListItem>
                                                    <asp:ListItem Value="July" Text="July" ></asp:ListItem>
                                                    <asp:ListItem Value="August" Text="August"  ></asp:ListItem>
                                                    <asp:ListItem Value="September" Text="September"  ></asp:ListItem>
                                                    <asp:ListItem Value="October" Text="October"  ></asp:ListItem>
                                                    <asp:ListItem Value="November" Text="November"  ></asp:ListItem>
                                                    <asp:ListItem Value="December" Text="December" ></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Width="150px" Text='<%# Bind("Expiration_Month") %>'></asp:Label>
                                            </ItemTemplate>
                                       </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Expiration Year" SortExpression="Expiration_Year">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Width="150px" Class="pd-setting" Text='<%# Bind("Expiration_Year") %>' >  </asp:TextBox> 
                                               
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server"  Width="150px" Text='<%# Bind("Expiration_Year") %>'></asp:Label>
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
