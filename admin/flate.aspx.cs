using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_flate : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled = false;
    }
    protected void btnproceed_Click(object sender, EventArgs e)
    {
        lblmsg.Enabled = true;
     

        re.conopen();
        re.qry = "insert into flate values('" + ddltname .SelectedItem .Text  + "','" + txtflateno.Text + "','" + lblintercom .Text + "')";
        re.uid();
        re.clear(Page.Controls);
        lblmsg.Text = "you are recorded flate information successfully.";
        re.conclose();
    }
}