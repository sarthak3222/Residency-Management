<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="eventexpence.aspx.cs" Inherits="admin_Eventexpence" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">EVENT EXPENCE</h2>
             </div>
             

            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                                <label>Event Name:</label>
                                   <asp:DropDownList ID="ddleventname" runat="server" class="form-control">
                                   </asp:DropDownList>
                               <label>Amount:</label>
                                  <asp:RequiredFieldValidator ID="rfers" runat="server" 
                                   Display="Dynamic" ControlToValidate="txtamount"  ForeColor ="#E2213E">You Must Specify Amount</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txtamount" runat="server" class="form-control" placeholder="Amount"></asp:TextBox> 
                            <label>Event Date:</label><asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>                            
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnstore" runat="server"  class="btn btn-success" 
                    
                         Text="STORE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" 
                            
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






