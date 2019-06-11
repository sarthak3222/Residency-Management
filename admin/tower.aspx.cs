using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_tower : System.Web.UI.Page
{
   public  residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled = false;
        
        if(!IsPostBack )
        {
            ddlttype.Items.Insert(0, new ListItem("Select Tower Type", "0"));
            ddlttype.Items.Add("2BHK");
            ddlttype.Items.Add("3BHK");
            ddlttype.Items.Add("4BHK");
            ddlttype.Items.Add("5BHK");
            ddlsquarefeet.Items.Insert(0, new ListItem("Select Square Feet", "0"));
            ddlsquarefeet.Items.Add("1800 SQFT");
            ddlsquarefeet.Items.Add("2500 SQFT");
            ddlsquarefeet.Items.Add("3200 SQFTK");
            ddlsquarefeet.Items.Add("4000 SQFT");
        }
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lblmsg.Enabled = true;

        if (ddlsquarefeet.SelectedIndex  == 0 || ddlttype .SelectedIndex == 0) 
        {
                       lblmsg.Text = "You Must Fill Dropdowns.";
        }
        else
        {
            
            re.conopen();
            re.qry = "insert into tower_master values('" + txttname .Text  + "','" + ddlsquarefeet  .SelectedItem .Text + "','" + txtrate .Text + "','" + txtflate.Text + "','" + ddlttype.SelectedItem .Text + "','" + txtintercomp .Text + "','" + txtmainamt .Text + "')";
            re.uid();
            lblmsg.Text = "you are recorded tower information successfully.";
            re.clear(Page.Controls);
            re.conclose();
           
        }
    }
   
}