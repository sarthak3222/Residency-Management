<%@ Page Title="" Language="C#" MasterPageFile="~/admin/residency.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="row text-center pad-top">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl =""><i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div> 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl ="">
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4></asp:HyperLink>
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl =""><i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl ="">
 <i class="fa fa-users fa-5x"></i>
                      <h4>See Users</h4></asp:HyperLink>
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl =""><i class="fa fa-key fa-5x"></i>
                      <h4>Admin </h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl =""><i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div>
              </div>
                 <!-- /. ROW  --> 
                <div class="row text-center pad-top">
                 
                 <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl =""><i class="fa fa-clipboard fa-5x"></i>
                      <h4>All Docs</h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                       <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl =""> <i class="fa fa-gear fa-5x"></i>
                      <h4>Settings</h4></asp:HyperLink>
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl =""><i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4></asp:HyperLink>
 
                      
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl =""><i class="fa fa-bell-o fa-5x"></i>
                      <h4>Notifications </h4></asp:HyperLink>
                       
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl =""> <i class="fa fa-rocket fa-5x"></i>
                      <h4>Launch</h4></asp:HyperLink>
                      
                      </div>
                     
                     
                  </div>
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl ="~/admin/Default.aspx" ><i class="fa fa-user fa-5x"></i><h4>Register User</h4></asp:HyperLink>
 
                      
                      
                      </div>
                     
                     
                  </div> 
              </div>   
                  <!-- /. ROW  -->    
                 <div class="row text-center pad-top">
                   
                 
                     
                     
                  </div>
                      
                      

</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                    <asp:LinkButton ID="lbllogout" runat="server" 
        style="color:#fff;" onclick="lbllogout_Click">LOGOUT</asp:LinkButton>
                    </asp:Content>


