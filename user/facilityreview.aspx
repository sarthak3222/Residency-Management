<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="facilityreview.aspx.cs" Inherits="user_facilityreview" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">FACILITY REVIEW</h2>
             </div>
            
                 <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                           <label>Facility Type:</label> <asp:DropDownList ID="ddlfacitype" runat="server" class="form-control">
                            </asp:DropDownList>
                           <label>Facility Review Title:</label>
                           
                           <asp:RequiredFieldValidator ID="rffacrevtit" runat="server" 
                               Display="Dynamic" ControlToValidate="txtfacirevtitle"  ForeColor ="#E2213E">You Must Specify review Title</asp:RequiredFieldValidator>
                           
                           <asp:TextBox ID="txtfacirevtitle" runat="server" class="form-control" placeholder="Facility Review Title"></asp:TextBox> 
                           <label>Facility Review Message:</label>
                           
                           <asp:RequiredFieldValidator ID="rffacrevmes" runat="server" 
                               Display="Dynamic" ControlToValidate="txtfacirevmessage"  ForeColor ="#E2213E">You Must Give Message</asp:RequiredFieldValidator>
                           
                           <asp:TextBox ID="txtfacirevmessage" runat="server" 
                                class="form-control" TextMode="MultiLine" placeholder="Facility Review Message"></asp:TextBox>
                                 <label>Ratings:</label> <asp:DropDownList ID="ddlrating" runat="server" class="form-control">
                            </asp:DropDownList>  
                          <label>Date:</label>  <asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>
                           
                          
                         <br/>   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnsend" runat="server" class="btn btn-success" 
                            Text="SEND" 
                            style="background-color: #5cb85c;border-color: #fff; color:White;" 
                            onclick="btnsend_Click"/>
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


