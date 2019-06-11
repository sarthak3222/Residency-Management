<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="eventrating.aspx.cs" Inherits="user_eventrating" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">EVENT RATINGS</h2>
             </div>
            
                 <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                           <label>Event Type:</label> <asp:DropDownList ID="ddleventtype" runat="server" class="form-control">
                            </asp:DropDownList>
                          
                           <label>Ratings:</label> <asp:DropDownList ID="ddlratings" runat="server" class="form-control">
                            </asp:DropDownList>
                         <br/>   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnpost" runat="server" class="btn btn-success" 
                            Text="POST" 
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


