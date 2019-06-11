<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="salaryexpence.aspx.cs" Inherits="admin_Salaryexpence" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">SALARY EXPENCE</h2>
             </div>
             
             
              <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                           <label>Employe Name:</label>
                                 <asp:RequiredFieldValidator ID="rfname" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtname"  ForeColor ="#E2213E">You Must Enter Employe Name</asp:RequiredFieldValidator>  
                                 <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Employe Name"></asp:TextBox>
                           <label>Salary Post:</label> 
                                  <asp:DropDownList ID="ddlsalarypost" runat="server" class="form-control" 
                                DataSourceID="SqlDataSource1" DataTextField="stype" 
                                DataValueField="salarytypeid">
                                  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ResidencyConnectionString %>" 
                                SelectCommand="SELECT * FROM [salary_master]"></asp:SqlDataSource>
                          <label>Amount:</label>
                          <asp:Label ID="lblamt" runat="server" Text="" class="form-control"></asp:Label>
                             
                              <label>Date:</label><asp:Label ID="lbldate" runat="server" Text="" class="form-control"></asp:Label>
                             
                             
                          <label>Gender:</label>
                            <asp:RequiredFieldValidator ID="rfgender" runat="server" 
                                 Display="Dynamic" ControlToValidate="rblgender"  ForeColor ="#E2213E">You Must Select Gender</asp:RequiredFieldValidator>
                                 <asp:RadioButtonList ID="rblgender" runat="server" >
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
               <label>Mobile No:</label>
                  
                  <asp:RequiredFieldValidator ID="rfmno" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtmno"  ForeColor ="#E2213E">You Must Enter Moblie No</asp:RequiredFieldValidator> 
                 <asp:TextBox ID="txtmno" runat="server" class="form-control" placeholder="Mobile No"></asp:TextBox>
                                         
                            <label>Profile Image:</label>
                             <asp:RequiredFieldValidator ID="rfpic" runat="server" 
                                 Display="Dynamic" ControlToValidate="fupic"  ForeColor ="#E2213E">You Must Specify Profile Image</asp:RequiredFieldValidator>
                            
                            <asp:FileUpload ID="fupic" runat="server" class="form-control"/>
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnstore" runat="server"  class="btn btn-success" 
                    
                         Text="STORE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnstore_Click" 
                            
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









