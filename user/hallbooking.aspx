<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="hallbooking.aspx.cs" Inherits="user_hallbooking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">COMMUNITY-HALL BOOKING</h2>
             </div>
             
                
                <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                           <label>Hall Type:</label> <asp:DropDownList ID="ddlhalltype" runat="server" class="form-control">
                            </asp:DropDownList>
                           <label>Booking Date:</label>  <asp:Calendar ID="calbookingdate" runat="server"></asp:Calendar>
                            <label>Today's Date:</label>  <asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>
                           <label>No Of Days For Booking:</label>
                           
                           <asp:RequiredFieldValidator ID="rfnoofdaysforbooking" runat="server" 
                               Display="Dynamic" ControlToValidate="txtnoofdays"  ForeColor ="#E2213E">You Must Specifies Total Days For Booking</asp:RequiredFieldValidator>
                           
                           <asp:TextBox ID="txtnoofdays" runat="server" class="form-control" placeholder="No Of Days For Booking"></asp:TextBox> 
                            <label>Amount:</label>  <asp:Label ID="lblamount" runat="server" Text="" class="form-control"></asp:Label>
                           <label>Total Amount:</label>  <asp:Label ID="lbltotalamount" runat="server" Text="" class="form-control"></asp:Label>
                            <label>Payment Mode:</label> <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                            </asp:DropDownList>
                          
                           <br/>   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnbook" runat="server" class="btn btn-success" 
                            Text="BOOK" 
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


