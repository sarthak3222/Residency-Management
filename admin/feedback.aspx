<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin_Feedback" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">FEEDBACK REPLY</h2>
             </div>
            

            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                             
                                  <label>Feedback Titele:</label><asp:Label ID="lblftitle" runat="server" Text="" class="form-control"></asp:Label> 
        <label>Feedback Message:</label><asp:Label ID="lb1fmsg" runat="server" Text="" class="form-control"></asp:Label> 
                          <label>Date:</label><asp:Label ID="lb1date" runat="server" Text="" class="form-control"></asp:Label> 
                              <label>Reply:</label>
                              
                              <asp:RequiredFieldValidator ID="rfreply" runat="server" 
                                  Display="Dynamic" ControlToValidate="txtrply"  ForeColor ="#E2213E">You Must Give Reply</asp:RequiredFieldValidator> 
                                  

                              <asp:TextBox ID="txtrply" runat="server" class="form-control" placeholder="Reply"></asp:TextBox>
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnpost" runat="server"  class="btn btn-success" 
                    
                         Text="POST"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnpost_Click" 
                            
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







