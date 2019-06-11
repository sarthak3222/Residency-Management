<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="othercollection.aspx.cs" Inherits="admin_othercollection" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">OTHER COLLECTION</h2>
             </div>
             
             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                              
                            <label>Collection Purpose:</label>
                                 <asp:RequiredFieldValidator ID="rfcpur" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtpurpose"  ForeColor ="#E2213E">You Must Specify Purpose</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtpurpose" runat="server" class="form-control" placeholder="Collection Purpose"></asp:TextBox>
                            <label> Amount:</label>
                                 <asp:RequiredFieldValidator ID="rfrs" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtamount"  ForeColor ="#E2213E">You Must Enter Amount</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txtamount" runat="server" class="form-control" placeholder="Amount"></asp:TextBox>   
                             <label>Flate No:</label> 
                                   <asp:DropDownList ID="ddlflateno" runat="server" class="form-control">
                                 </asp:DropDownList>
                             <label> Date:</label><asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>
                             <label> Payment Mode:</label>
                                  <asp:RequiredFieldValidator ID="rfpmode" runat="server" 
                                  Display="Dynamic" ControlToValidate="rblpaymentmode"  ForeColor ="#E2213E">You Must Select Payment Mode</asp:RequiredFieldValidator>
                                  <asp:RadioButtonList ID="rblpaymentmode" runat="server">
                                  <asp:ListItem>Cash</asp:ListItem>
                                  <asp:ListItem>Cheque</asp:ListItem>
                                  </asp:RadioButtonList>
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






