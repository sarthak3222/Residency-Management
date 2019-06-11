using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_event : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();

    protected void Page_Load(object sender, EventArgs e)
    {
       lblmsg .Enabled =false ;
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
         lblmsg.Enabled = true;
        re.conopen();
        re.qry = "insert into event_master values('" + txteventtype.Text + "','" + caleventdate.SelectedDate + "','" + txtamtperperson .Text  + "')";
        re.uid();
        re.clear(Page.Controls);
        lblmsg.Text = "you are recorded event information successfully.";
        re.conclose();
    
    }
}