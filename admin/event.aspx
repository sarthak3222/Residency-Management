<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="event.aspx.cs" Inherits="admin_event" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">UPCOMING EVENT</h2>
             </div>
             
             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                            
                            <label> Event Name:</label>
                            
                                 <asp:RequiredFieldValidator ID="rfetype" runat="server" 
                                 Display="Dynamic" ControlToValidate="txteventtype"  ForeColor ="#E2213E">You Must Enter Event Name</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txteventtype" runat="server" class="form-control" placeholder="Event Name"></asp:TextBox>
                              
                              <label> Date:</label>
                                   <asp:Calendar ID="caleventdate" runat="server" ></asp:Calendar>
                            
                           <label> Amount Per Person:</label>
                              
                                 <asp:RequiredFieldValidator ID="rfamount" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtamtperperson"  ForeColor ="#E2213E">You Must Enter Amount</asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtamtperperson" runat="server" class="form-control" placeholder="Amount Per Person"></asp:TextBox>   
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btngenerate" runat="server"  class="btn btn-success" 
                    
                         Text="GENERATE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btngenerate_Click" 
                            
                            />

                
                    </div>
                     
                            <br/><br/>
              <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>                  
                        </div>
                      
                    </div>
              
                
              
            </div>

</asp:Content>



<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <asp:LinkButton ID="lbllogout" runat="server" 
        style="color:#fff;" onclick="lbllogout_Click">LOGOUT</asp:LinkButton>
                    </asp:Content>







