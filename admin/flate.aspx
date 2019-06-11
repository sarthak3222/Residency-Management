<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="flate.aspx.cs" Inherits="admin_flate" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">FLATE DETAILS</h2>
             </div>
            
             <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                               <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>
                              <label>Flat No:</label>
                                  <asp:RequiredFieldValidator ID="rffno" runat="server" 
                                   Display="Dynamic" ControlToValidate="txtflateno"  ForeColor ="#E2213E">You Must Enter Flate No</asp:RequiredFieldValidator>
                                  <asp:TextBox ID="txtflateno" runat="server" class="form-control" placeholder="Flate No"></asp:TextBox>
                               <label>Intercom No:</label>
                                    
                                     <asp:Label ID="lblintercom" runat="server" Text="" class="form-control"></asp:Label> 
                            
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnproceed" runat="server"  class="btn btn-success" 
                    
                         Text="STORE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnproceed_Click" /> 
                            
                            
                
                    </div>
                             <br/><br/>
              <asp:Label ID="lblmsg" runat="server" Text="" class="form-control"></asp:Label>                  
                           
                            
                        </div>
                    </div>
                
              </div>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <asp:LinkButton ID="lbllogout" runat="server" style="color:#fff;">LOGOUT</asp:LinkButton>
                    </asp:Content>




