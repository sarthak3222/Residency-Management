  <%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="tower.aspx.cs" Inherits="admin_tower" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">TOWER DETAILS</h2>
             </div>
             </div>
            <div class="row">
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                             
                                  
                             
                              <label>Tower Name:</label>
                                  <asp:RequiredFieldValidator ID="rftname" runat="server" 
                                 Display="Dynamic" ControlToValidate="txttname"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Tower Name</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txttname" runat="server" class="form-control" placeholder="Tower Name"></asp:TextBox>
                              <label>Type:</label> 
                                    <asp:RequiredFieldValidator ID="rftype" runat="server" 
                                    Display="Dynamic" ControlToValidate="ddlttype"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Tower Type</asp:RequiredFieldValidator>
                                     <asp:DropDownList ID="ddlttype" runat="server" class="form-control">
                                         </asp:DropDownList>
                               <label>Square Feet:</label><asp:DropDownList ID="ddlsquarefeet" runat="server" class="form-control">
                                         </asp:DropDownList>
                              <label>Rate Per Square Feet:</label>
                                     <asp:RequiredFieldValidator ID="rfrpsf" runat="server" 
                                     Display="Dynamic" ControlToValidate="txtrate"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Rate</asp:RequiredFieldValidator>
                                     <asp:TextBox ID="txtrate" runat="server" class="form-control" placeholder="Rate Per Square Feet"></asp:TextBox>
                             
                              <label>No Of Flate:</label>
                                  <asp:RequiredFieldValidator ID="rfnflate" runat="server" 
                                  Display="Dynamic" ControlToValidate="txtflate"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter No Of Flate</asp:RequiredFieldValidator>                          
                                  <asp:TextBox ID="txtflate" runat="server" class="form-control" placeholder="No Of Flate"></asp:TextBox>
                              
                              <label>Intercom Prefix:</label>
                                 <asp:RequiredFieldValidator ID="rfintercom" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtintercomp"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Specify Prefix</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txtintercomp" runat="server" class="form-control" placeholder="Intercome Prefix"></asp:TextBox>
                              <label>Maintainance Amount:</label>
                                 <asp:RequiredFieldValidator ID="rfmrs" runat="server" 
                               Display="Dynamic" ControlToValidate="txtmainamt"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Amount</asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtmainamt" runat="server" class="form-control" placeholder="Maintainance Amount"></asp:TextBox>
                   <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnlogin" runat="server"  class="btn btn-success" 
                    
                         Text="PROCEED"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnlogin_Click" 
                            
                            />
                
                    </div>
                            
                                         
              <br/><br/>
              <asp:Label ID="lblmsg" runat="server" Text="" class="form-control"></asp:Label>                  
                                        
               
                        </div>
                    </div>
            
            </div>
            <div class="row">
            <div class="col-lg-6 col-md-6">
             <div class="table-responsive">
             
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     DataSourceID="SqlDataSource1" DataKeyNames ="tid">
                     <Columns>
                         <asp:BoundField DataField="tid" HeaderText="tid" InsertVisible="False" 
                             ReadOnly="True" SortExpression="tid" />
                         <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
                         <asp:BoundField DataField="sqft" HeaderText="sqft" SortExpression="sqft" />
                         <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                         <asp:BoundField DataField="noofflate" HeaderText="noofflate" 
                             SortExpression="noofflate" />
                         <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                         <asp:BoundField DataField="intercomprefix" HeaderText="intercomprefix" 
                             SortExpression="intercomprefix" />
                         <asp:BoundField DataField="maintainance" HeaderText="maintainance" 
                             SortExpression="maintainance" />
                         <asp:CommandField ShowEditButton="True" />
                         <asp:CommandField ShowDeleteButton="True" />
                     </Columns>
                 </asp:GridView>

                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ResidencyConnectionString %>" 
                     SelectCommand="SELECT * FROM [tower_master]" 
                     DeleteCommand="DELETE FROM tower_master WHERE (tid = @tid)" 
                     UpdateCommand="UPDATE tower_master SET tname = @tname, sqft =@sqft, rate =@rate, noofflate =@noofflate, type =@type, intercomprefix =@intercomprefix, maintainance =@maintainance WHERE tid=@tid">
                     <DeleteParameters>
                         <asp:Parameter Name="tid" />
                     </DeleteParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="tname" />
                         <asp:Parameter Name="sqft" />
                         <asp:Parameter Name="rate" />
                         <asp:Parameter Name="noofflate" />
                         <asp:Parameter Name="type" />
                         <asp:Parameter Name="intercomprefix" />
                         <asp:Parameter Name="maintainance" />
                         <asp:Parameter Name="tid" />
                     </UpdateParameters>
                 </asp:SqlDataSource>

            
                                
            </div> 
            </div> 
            </div> 
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <asp:LinkButton ID="lbllogout" runat="server" 
        style="color:#fff;" onclick="lbllogout_Click">LOGOUT</asp:LinkButton>
                    </asp:Content>



