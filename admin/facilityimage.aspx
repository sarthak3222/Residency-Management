<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="facilityimage.aspx.cs" Inherits="admin_FacilityImage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
             <div class="col-lg-12">
            
             <h2 style ="color:Silver;">FACILITY IMAGE</h2>
             </div>
             

             
            <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                               <label>Facility Type:</label> 
                                  <asp:DropDownList ID="ddlfacilitytype" runat="server" class="form-control">
                                   </asp:DropDownList>
                               <label>Image:</label>
                                  <asp:RequiredFieldValidator ID="rffpic" runat="server" 
                                 Display="Dynamic" ControlToValidate="fufacilityimage"  ForeColor ="#E2213E">You Must Specify appropriate Image</asp:RequiredFieldValidator> 
                                  <asp:FileUpload ID="fufacilityimage" runat="server" class="form-control"/><br/>
                                   <asp:Image ID="imgfaciimg" runat="server" class="form-control" Height ="150px" Width ="150px"/>
                                  <br/>
 
                            
                   
                    <div class="col-lg-6 col-md-6">
                        <asp:Button ID="btnpost" runat="server"  class="btn btn-success" 
                    
                         Text="POST"  
                         style="background-color: #5cb85c;border-color: #fff; color:White;" onclick="btnpost_Click" 
                            
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



