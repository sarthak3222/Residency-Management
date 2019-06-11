<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="transfer.aspx.cs" Inherits="user_transfer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">TRANSFER PROCESS</h2>
             </div>
             
                
                <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                            <label>New Owner Name:</label>
                           
                           <asp:RequiredFieldValidator ID="rfnoname" runat="server" 
                               Display="Dynamic" ControlToValidate="txtnewownname" ForeColor ="#E2213E">You Must Enter New Owner Name</asp:RequiredFieldValidator>
                            
                           
                           <asp:TextBox ID="txtnewownname" runat="server" class="form-control" placeholder="New Owner Name"></asp:TextBox> 
                          
                           <label>Amount:</label>
                                           
                         <asp:Label ID="lblamt" runat="server" Text="" class="form-control"></asp:Label>
                          <label>Payment Mode:</label> 
                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                            </asp:DropDownList> 
                        
                          
                         <br/>   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnproceed" runat="server" class="btn btn-success" 
                            Text="PROCEED" 
                            style="background-color: #5cb85c;border-color: #fff; color:White;" 
                            onclick="btnproceed_Click"/>
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


