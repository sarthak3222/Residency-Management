<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="hall.aspx.cs" Inherits="admin_hall" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">HALL TYPE & RENT</h2>
             </div>
             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                            <label> Hall Type:</label>
                                  <asp:RequiredFieldValidator ID="rfhtype" runat="server" 
                                 Display="Dynamic" ControlToValidate="txthtype"  ForeColor ="#E2213E">You Must Give Hall Type</asp:RequiredFieldValidator>
                                  <asp:TextBox ID="txthtype" runat="server" class="form-control" placeholder="Hall Type"></asp:TextBox>
                            <label> Rent:</label>
                               <asp:RequiredFieldValidator ID="rfrs" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtrent"  ForeColor ="#E2213E">You Must Specify Rent Amount</asp:RequiredFieldValidator>
                              <asp:TextBox ID="txtrent" runat="server" class="form-control" placeholder="Rent"></asp:TextBox>   
                              
                              
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnstore" runat="server"  class="btn btn-success" 
                    
                         Text="STORE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnstore_Click" 
                            
                            />
                
                    </div>
                            
                            <br/><br/>
              <asp:Label ID="lblmsg" runat="server" Text="" class="form-control"></asp:Label>                  
                           
                        </div>
                    </div>
                
             
             </div>
             
</asp:Content>



<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <asp:LinkButton ID="lbllogout" runat="server" 
        style="color:#fff;" onclick="lbllogout_Click">LOGOUT</asp:LinkButton>
                    </asp:Content>










