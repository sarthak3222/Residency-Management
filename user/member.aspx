<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="user_member" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">MEMBER INFORMATION</h2>
             </div>
             
                
             <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control">
                                   </asp:DropDownList>                       
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" class="form-control">
                            </asp:DropDownList>
                               <label>Owner name:</label><asp:Label ID="lblownname" runat="server" Text="" class="form-control"></asp:Label>
       
                             <label>Member Name:</label> 
                             
                             <asp:RequiredFieldValidator ID="rfmname" runat="server" 
                               Display="Dynamic" ControlToValidate="txtmembername" ForeColor ="#E2213E">You Must Enter Member Name</asp:RequiredFieldValidator>
                             
                             <asp:TextBox ID="txtmembername" runat="server" class="form-control" placeholder="Member Name"></asp:TextBox>
                             
                   
                   <label>Date Of Birth:</label><asp:Calendar ID="caldob" runat="server"></asp:Calendar>
                            
                   <label>Gender:</label>

                   <asp:RequiredFieldValidator ID="rfgender" runat="server" 
                               Display="Dynamic" ControlToValidate="rblgender"  ForeColor ="#E2213E">You Must Enter Your Gender</asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="rblgender" runat="server" >
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                           
                           <label>Mobile Number:</label>
                           
                           <asp:RequiredFieldValidator ID="rfmonumber" runat="server" 
                               Display="Dynamic" ControlToValidate="txtmobileno" ForeColor ="#E2213E">You Must Enter Contact Number</asp:RequiredFieldValidator>
                           
                            <asp:TextBox ID="txtmobileno" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                            <label>E-mail Id:</label>
                            
                            <asp:RegularExpressionValidator ID="revemailid" runat="server" 
                                ControlToValidate="txtemailid" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor ="#E2213E">You Must Enter Proper E-mail Id</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfemailid" runat="server" 
                               Display="Dynamic" ControlToValidate="txtemailid"  ForeColor ="#E2213E">E-mail Id Must Required</asp:RequiredFieldValidator>
                            

                            <asp:TextBox ID="txtemailid" runat="server" class="form-control" placeholder="E-mail Id"></asp:TextBox>
                            
                           
                            <label>Profile Image:</label>
                            
                            <asp:RequiredFieldValidator ID="rfownerimage" runat="server" 
                               Display="Dynamic" ControlToValidate="fumemberimage"  ForeColor ="#E2213E">You Must Specify Your Profile Image</asp:RequiredFieldValidator>
                            
                            <asp:FileUpload ID="fumemberimage" runat="server" class="form-control"/><br/>
                            <asp:Image ID="imgprofile" runat="server" class="form-control" Height ="150px" Width ="150px"/>
                            
                   <br/>
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnstore" runat="server" class="btn btn-success" 
                            Text="STORE" 
                            style="background-color: #5cb85c;border-color: #fff; color:White;" 
                            onclick="btnstore_Click"/>
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


