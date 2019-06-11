using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_othercollection : System.Web.UI.Page
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
        if (ddlflateno.SelectedIndex == 0)
        {
            lblmsg.Text = " you must fill dropdowns";
        }
        else
        {
            re.conopen();
            re.qry = "insert into other_collection values('" + txtpurpose.Text + "',"+txtamount.Text+ ",'"+ddlflateno.SelectedItem.Text+"')";
            re.uid();
            re.clear(Page.Controls);
            lblmsg.Text = "you are recorded other collection information successfully.";
            re.conclose();
        }
    }
}