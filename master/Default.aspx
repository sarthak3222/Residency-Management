<%@ Page Title="" Language="C#" MasterPageFile="~/master/residency.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="master_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="row">
             <div class="col-lg-12">
            <h2 class="page-header">TOWER DETAILS</h2>
             </div>
             </div>
             <div class="row">
            <div class="col-lg-12">
                                <div class="panel panel-default">
                                                    <div class="panel panel-body">
                                             <div class="row">
                                                     <div class="col-lg-6">
                                                     <form role="form">
                        <div class="form-group">
                             
                                  
                             
                              <label>Tower Name:</label>
                                  <asp:RequiredFieldValidator ID="rftname" runat="server" 
                                 Display="Dynamic" ControlToValidate="txttname"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Tower Name</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txttname" runat="server" class="form-control" placeholder="Tower Name"></asp:TextBox>
                                 </div> 
                                 <div class="form-group">
                              <label>Type:</label> 
                                     <asp:DropDownList ID="ddlttype" runat="server" class="form-control">
                                         </asp:DropDownList>
                                         </div> 
                                         <div class="form-group">
                               <label>Square Feet:</label>
                               
                               <asp:DropDownList ID="ddlsquarefeet" runat="server" class="form-control">
                                         </asp:DropDownList>
                                         </div> 
                                         <div class="form-group">
                              <label>Rate Per Square Feet:</label>
                                     <asp:RequiredFieldValidator ID="rfrpsf" runat="server" 
                                     Display="Dynamic" ControlToValidate="txtrate"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Rate</asp:RequiredFieldValidator>
                                     <asp:TextBox ID="txtrate" runat="server" class="form-control" placeholder="Rate Per Square Feet"></asp:TextBox>
                             </div> 
                             <div class="form-group">
                              <label>No Of Flate:</label>
                                  <asp:RequiredFieldValidator ID="rfnflate" runat="server" 
                                  Display="Dynamic" ControlToValidate="txtflate"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter No Of Flate</asp:RequiredFieldValidator>                          
                                  <asp:TextBox ID="txtflate" runat="server" class="form-control" placeholder="No Of Flate"></asp:TextBox>
                              </div> 
                              <div class="form-group">
                              <label>Intercom Prefix:</label>
                                 <asp:RequiredFieldValidator ID="rfintercom" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtintercomp"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Specify Prefix</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txtintercomp" runat="server" class="form-control" placeholder="Intercome Prefix"></asp:TextBox>
                             </div> 
                             <div class="form-group">
                              <label>Maintainance Amount:</label>
                                 <asp:RequiredFieldValidator ID="rfmrs" runat="server" 
                               Display="Dynamic" ControlToValidate="txtmainamt"  ForeColor ="#E2213E" 
                                  ValidationGroup="1">You Must Enter Amount</asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtmainamt" runat="server" class="form-control" placeholder="Maintainance Amount"></asp:TextBox>
                   </div> 
                   <br/>
                            
                   <div class="form-group">
                                            <asp:Button ID="btnlogin" runat="server"  class="btn btn-success" 
                    
                         Text="PROCEED"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" 
                            
                            />

                        
                    
                            </div> 
                                   
              <br/><br/>
              <div class="form-group">
              <asp:Label ID="lblmsg" runat="server" Text="" ForeColor ="#E2213E"></asp:Label>    
                          </div> 
        </form>                    
<div class="table-responsive">
<table class="table">
<asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
        SelectCommand="SELECT * FROM [tower_master]"></asp:SqlDataSource>
        </table>
</div>    
</div> 
</div> 
                                                   
</div>                   
    </div>
                    
            </div >
            </div>   

</asp:Content>

