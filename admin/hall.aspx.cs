using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_hall : System.Web.UI.Page
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
        lblmsg.Enabled = true;
        re.conopen();
        re.qry = "insert into hall_master values('" + txthtype.Text+ "','" + txtrent.Text + "')";
        re.uid();
        re.clear(Page.Controls);
        lblmsg.Text = "you are recorded hall information successfully.";
        re.conclose();
    
    }
}