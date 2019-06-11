<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="salarytype.aspx.cs" Inherits="admin_Salarytype" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">SALARY POST & AMOUNT</h2>
             </div>
             
             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                      <label> Salary Post:</label>
                               <asp:RequiredFieldValidator ID="rfstype" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtsalarypost"  ForeColor ="#E2213E">You Must Enter Post</asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtsalarypost" runat="server" class="form-control" placeholder=" Salary Post"></asp:TextBox>
                     <label> Amount:</label>
                                 <asp:RequiredFieldValidator ID="rfrs" runat="server" 
                                 Display="Dynamic" ControlToValidate="txtamount"  ForeColor ="#E2213E">You Must Enter Salary Amount</asp:RequiredFieldValidator>
                                 <asp:TextBox ID="txtamount" runat="server" class="form-control" placeholder="Amount"></asp:TextBox>   

                              
                            <br/>
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btngenerate" runat="server"  class="btn btn-success" 
                    
                         Text="GENERATE"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btngenerate_Click" 
                            
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










