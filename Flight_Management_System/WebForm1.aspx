<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Flight_Management_System.WebForm1" %>
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
                            <asp:GridView ID="GridView1" runat="server"  GridLines="None" AllowPaging="True" PageSize="5" OnPageIndexChanging= "GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" OnLoad="GridView1_Load" OnRowDataBound="GridView1_RowDataBound"  > 
                            <Columns>
                                
                                           <asp:TemplateField HeaderText="Flight ID" SortExpression="Flight_ID">
                                           <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" width="30px"    Text='<%# Bind("Flight_ID") %>'></asp:Label>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                                
                                           <asp:DropDownList ID="DropDownList1" runat="server" width="30px"   Class="pd-setting"  > 
                                                
                                           </asp:DropDownList>
                                           </EditItemTemplate>
                                            
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Airline ID" SortExpression="Airline_ID">
                                           
                                           <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" width="20px"  Text='<%# Bind("Airline_ID") %>'></asp:Label>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox5" runat="server"  width="50px" Class="pd-setting"  Text='<%# Bind("Airline_ID") %>'></asp:TextBox>

                                           </EditItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText=" Airline Name" SortExpression="Airline_Name">
                                           <ItemTemplate>
                                             <asp:Label ID="Label3" runat="server" width="60px"    Text='<%# Bind("Airline_Name") %>'></asp:Label>
                                           </ItemTemplate>
                                           <EditItemTemplate>

                                               
                                                <asp:DropDownList ID="DropDownList2" width="60px"  runat="server" Class="pd-setting">
                                                    <asp:ListItem Value="0" Text="Airline Name"></asp:ListItem>
                                                    <asp:ListItem Value="Pakistan International Airlines" Text="Pakistan International Airlines"></asp:ListItem>
                                                    <asp:ListItem Value="Air blue" Text="Air blue"></asp:ListItem>
                                                    <asp:ListItem Value="Askari Aviation" Text="Askari Aviation"></asp:ListItem>
                                                     <asp:ListItem Value="Shaheen airline" Text="Shaheen airline"></asp:ListItem>
                                                    <asp:ListItem Value="Deewan International Airlines" Text="Deewan International Airlines"></asp:ListItem>

                                    
                                                </asp:DropDownList> 
                                            </EditItemTemplate>
                                           
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="From Location" SortExpression="From_Location">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" width="60px"  Text='<%# Bind("From_Location") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                               

                                            <asp:DropDownList ID="DropDownList3" width="60px"  runat="server" Class="pd-setting">
                                                    <asp:ListItem Value="0" Text="From Location"></asp:ListItem>
                                                    <asp:ListItem Value="Pakistan(Isb)" Text="Pakistan(Isb)"></asp:ListItem>
                                                    <asp:ListItem Value="Pakistan(Karachi)" Text="Pakistan(Karachi)"></asp:ListItem>
                                                    <asp:ListItem Value="American" Text="America"></asp:ListItem>
                                                     <asp:ListItem Value="Turkish" Text="Turky"></asp:ListItem>
                                                    <asp:ListItem Value="Indian" Text="India"></asp:ListItem>
                                                    <asp:ListItem Value="Germany" Text="Germany"></asp:ListItem>
                                                </asp:DropDownList>
                                             </EditItemTemplate>
                                            
                                             </asp:TemplateField>
                                             <asp:TemplateField HeaderText="To Location" SortExpression="To_Location">
                                             <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" width="60px"  Text='<%# Bind("To_Location") %>'></asp:Label>
                                             </ItemTemplate>
                                             <EditItemTemplate>
                                                
                                                <asp:DropDownList ID="DropDownList4" width="60px"  runat="server" Class="pd-setting">
                                                    <asp:ListItem Value="0" Text="To Location"></asp:ListItem>
                                                    <asp:ListItem Value="Pakistan(Isb)" Text="Pakistan(Isb)"></asp:ListItem>
                                                    <asp:ListItem Value="Pakistan(Karachi)" Text="Pakistan(Karachi)"></asp:ListItem>
                                                    <asp:ListItem Value="American" Text="America"></asp:ListItem>
                                                     <asp:ListItem Value="Turkish" Text="Turky"></asp:ListItem>
                                                    <asp:ListItem Value="Indian" Text="India"></asp:ListItem>
                                                    <asp:ListItem Value="Germany" Text="Germany"></asp:ListItem>
                                            </asp:DropDownList>
                                            </EditItemTemplate>
                                             
                                            </asp:TemplateField>
                                       
                                            <asp:TemplateField HeaderText="Departure Time" SortExpression="Departure_Time">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox1" Class="pd-setting" runat="server"  width="50px"   Text='<%# Bind("Departure_Time") %>'></asp:TextBox>

                                           </EditItemTemplate>
                                           <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" width="50px"  Text='<%# Bind("Departure_Time") %>'></asp:Label>
                                           </ItemTemplate>
                                           </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Arrival Time" SortExpression="Arrival_Time">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox2" Class="pd-setting" runat="server" width="50px"   Text='<%# Bind("Arrival_Time") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server"  width="50px"    Text='<%# Bind("Arrival_Time") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Duration" SortExpression="Duration">
                                            <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox3" Class="pd-setting" runat="server" width="50px"   Text='<%# Bind("Duration") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" width="50px"    Text='<%# Bind("Duration") %>'></asp:Label>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Total Seats" SortExpression="Total_Seats">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server"  width="50px"   Text='<%# Bind("Total_Seats") %>'></asp:Label>
                                            </ItemTemplate>
                                                 <EditItemTemplate>
                                                 
                                                <asp:TextBox ID="TextBox4" Class="pd-setting" runat="server" width="50px"   Text='<%#Bind("Total_Seats") %>' > </asp:TextBox>
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
