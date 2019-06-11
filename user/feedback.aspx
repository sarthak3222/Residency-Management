<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">FEEDBACKS & COMPLAINTS</h2>
             </div>

                
                <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                           <label>Feedback Title:</label>
                           
                           <asp:RequiredFieldValidator ID="rffeedtitle" runat="server" 
                               Display="Dynamic" ControlToValidate="txtfeedtitle"  ForeColor ="#E2213E">You Must Specify Feedback Title</asp:RequiredFieldValidator>
                           
                           <asp:TextBox ID="txtfeedtitle" runat="server" class="form-control" placeholder="Feedback Title"></asp:TextBox> 
                           <label>Feedback Message:</label>
                           
                           <asp:RequiredFieldValidator ID="rffeedmess" runat="server" 
                               Display="Dynamic" ControlToValidate="txtfeedmessage"  ForeColor ="#E2213E">You Must Give Feedback Message</asp:RequiredFieldValidator>
                           
                           <asp:TextBox ID="txtfeedmessage" runat="server" 
                                class="form-control" placeholder="Feedback Message" TextMode="MultiLine" ></asp:TextBox> 
                           
                          <label>Date:</label>  <asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>
                           
                         <br/>   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnsend" runat="server" class="btn btn-success" 
                            Text="SEND" 
                            style="background-color: #5cb85c;border-color: #fff; color:White;"/>
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


