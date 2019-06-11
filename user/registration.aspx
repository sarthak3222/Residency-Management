<%@ Page Title="" Language="C#" MasterPageFile="~/user/residencyuser.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<%@ Register src="../MyCaptcha.ascx" tagname="MyCaptcha" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">USER REGISTRATION</h2>
             </div>
             
             
              <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                         <label>Tower Name:</label>
                                    <asp:DropDownList ID="ddltname" runat="server" class="form-control" 
                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="tname" 
                                DataValueField="tid">
                                   </asp:DropDownList>                       
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ResidencyConnectionString %>" 
                                SelectCommand="SELECT * FROM [tower_master]"></asp:SqlDataSource>
                           <label>Flat no:</label> <asp:DropDownList ID="ddlflatno" runat="server" 
                                class="form-control" DataSourceID="SqlDataSource2" DataTextField="flatno" 
                                DataValueField="fid">
                            </asp:DropDownList>
                             
       
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ResidencyConnectionString %>" 
                                SelectCommand="SELECT * FROM [flate] WHERE ([tid] = @tid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddltname" Name="tid" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                             
       
                           <label>Owner Name:</label>    
                            <asp:RequiredFieldValidator ID="rfname" runat="server" 
                               Display="Dynamic" ControlToValidate="txtownername"  ForeColor ="#E2213E">You Must Enter your Name</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtownername" runat="server" class="form-control" placeholder="Owner Name"></asp:TextBox> 
                           
                            
                           <label>E-mail Id:</label>

                           <asp:RequiredFieldValidator ID="rfemailid" runat="server" 
                               Display="Dynamic" ControlToValidate="txtemailid" ForeColor ="#E2213E"> E-mail Id Must Required</asp:RequiredFieldValidator>
                            
                             <asp:RegularExpressionValidator ID="revemailid" runat="server" 
                                ControlToValidate="txtemailid" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ForeColor ="#E2213E" Display="Dynamic">You Must Enter Proper E-mail Id</asp:RegularExpressionValidator>
                           <asp:TextBox ID="txtemailid" runat="server" class="form-control" placeholder="E-mail Id"></asp:TextBox>
                            <label>Password:</label>
                            <asp:RequiredFieldValidator ID="rfpassword" runat="server" 
                               Display="Dynamic" ControlToValidate="txtpassword" ForeColor ="#E2213E"> Password Must Required</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode ="Password"></asp:TextBox>
                            <label>Re-Type-Password:</label>
                            <asp:CompareValidator ID="cmvretypepassword" runat="server" 
                                ForeColor ="#E2213E" ControlToCompare="txtpassword" 
                               Display="Dynamic" ControlToValidate="txtretypepassword">Re-Type-Password Must Matched</asp:CompareValidator>
                            <asp:TextBox ID="txtretypepassword" runat="server" class="form-control" placeholder="Re-Type-Password" TextMode ="password"></asp:TextBox>
                           
                            
                          
                            <label>Date Of Birth:</label>
                             <asp:Calendar ID="caldob" runat="server"></asp:Calendar>
                            
                   <label>Gender:</label>

                   <asp:RequiredFieldValidator ID="rfgender" runat="server" 
                               Display="Dynamic" ControlToValidate="rblgender"  ForeColor ="#E2213E">You Must Enter Your Gender</asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="rblgender" runat="server" >
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                   
                          <label>Mobile Number:</label> 
                          
                          <asp:RequiredFieldValidator ID="rfmobileno" runat="server" 
                                ControlToValidate="txtmobileno"  ForeColor ="#E2213E" Display="Dynamic">You Must Enter Your Contact Number</asp:RequiredFieldValidator>
                          
                          <asp:TextBox ID="txtmobileno" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                            
                    
                    <label>Profile Image:</label>
                    
                    <asp:RequiredFieldValidator ID="rfownerimage" runat="server" 
                               Display="Dynamic" ControlToValidate="fuownerimage"  ForeColor ="#E2213E">You Must Specify Your Profile Image</asp:RequiredFieldValidator>

                    <asp:FileUpload ID="fuownerimage" runat="server" class="form-control"/><br/>
                            <asp:Image ID="imgprofile" runat="server" class="form-control" Height ="150px" Width ="150px"/>
                    <label>Verification Code:</label><uc1:MyCaptcha ID="validcode" runat="server" class="form-control"/>
                    <br/>
                     <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnregister" runat="server" class="btn btn-success" 
                            Text="REGISTER" 
                            style="background-color: #5cb85c;border-color: #fff; color:White; height: 36px;" 
                            onclick="btnregister_Click"/>
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


