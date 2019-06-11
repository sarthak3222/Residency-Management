using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_eventcollection : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled = false;
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           re.conopen();
            re.qry = "insert into tower_master values('" + txttname.Text + "','" + ddlsquarefeet.SelectedItem.Text + "','" + txtrate.Text + "','" + txtflate.Text + "','" + ddlttype.SelectedItem.Text + "','" + txtintercomp.Text + "','" + txtmainamt.Text + "')";
            re.uid();
            re.clear(Page.Controls);
            lblmsg.Text = "you are recorded tower information successfully.";
            re.conclose();
       
    }
}