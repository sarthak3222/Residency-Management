using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_eventalbum : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled = false;
        imgevepho .Visible =false ;
    }
    protected void btnpost_Click(object sender, EventArgs e)
    {
        if (ddleventtype.SelectedIndex == 0)
        {
            lblmsg.Text = "You must fill dropdowns";
        }
        else
        {
            lblmsg.Enabled = true;
            re.conopen();
            re.qry = "insert into event_album values('" + ddleventtype.SelectedItem.Text + "',)";
            re.uid();
            re.clear(Page.Controls);
            lblmsg.Text = "you are recorded tower information successfully.";
            re.conclose();
        }
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
}