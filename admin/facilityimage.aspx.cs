using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_FacilityImage : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblmsg.Enabled = false;
        imgfaciimg.Visible = false;
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void btnpost_Click(object sender, EventArgs e)
    {
        lblmsg.Enabled = true;
        if (ddlfacilitytype.SelectedIndex == 0)
        {
            lblmsg.Text = "You Must Fill Dropdowns ";
        }

        else
        {
            lblmsg.Enabled = true;
            re.conopen();
            re.qry = "insert into facility_image  values('" + ddlfacilitytype.SelectedItem.Text + "')";
            re.uid();
            re.clear(Page.Controls);
            lblmsg.Text = "you are recorded facility information successfully.";
            re.conclose();

        }

    }
}
