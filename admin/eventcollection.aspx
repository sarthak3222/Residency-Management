<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="eventcollection.aspx.cs" Inherits="admin_eventcollection" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">EVENT COLLECTION</h2>
             </div>
             

             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                                  <label>Event Type:</label>
                                     
                                       <asp:DropDownList ID="ddleventtype" runat="server" class="form-control">
                                       </asp:DropDownList>
                                 <label>Amount:</label>
                                    <asp:Label ID="lblrs" runat="server" Text="" class="form-control"></asp:Label> 
                              <label>Event Date:</label>
                              <asp:RequiredFieldValidator ID="rfrs" runat="server" 
                                      ControlToValidate="txtedate"  ForeColor ="#E2213E">You Must Enter Specify Amount</asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtedate" runat="server" class="form-control" placeholder="Event Date"></asp:TextBox>
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="Button1" runat="server"  class="btn btn-success" 
                    
                         Text="REGISTER"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="Button1_Click" 
                            
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




