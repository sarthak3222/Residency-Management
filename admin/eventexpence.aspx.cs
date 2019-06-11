using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Eventexpence : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled = false;
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void btnstore_Click(object sender, EventArgs e)
    {
        re.conopen();
        re.qry = "insert into event_expence values('" + ddleventname.SelectedItem.Text + "','" + txtamount.Text + "')";
        re.uid();
        re.clear(Page.Controls);
        lblmsg.Text = "you are recorded event expence information successfully.";
        re.conclose();
    
    }
}