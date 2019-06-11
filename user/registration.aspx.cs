using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_registration : System.Web.UI.Page
{
    public residencyclass re = new residencyclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Enabled=false;
        imgprofile.Visible = false;
    }
    protected void lbllogout_Click(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        lblmsg.Enabled = true;
        if (validcode.IsValid)
        {
            if (fuownerimage.HasFile)
            {
                lblmsg.Text = "";
                String[] ext = { "image/jpg", "image/jpeg", "image/png", "image/jbmp", "image/gif" };
                if (ext.Contains(fuownerimage.PostedFile.ContentType))
                {
                    lblmsg.Text = "";
                    fuownerimage.SaveAs(Server.MapPath("" + fuownerimage.FileName));
                    imgprofile.Visible = true;
                    imgprofile.ImageUrl = fuownerimage.FileName;
                    re.conopen();
                    re.qry = "insert into owner_master(name,fid,emailid,password,mobileno,dob,gender,ownerimage) values('" + txtownername.Text + "','" + ddlflatno.SelectedItem.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + txtmobileno.Text + "','" + caldob .SelectedDate.ToString ()  + "','" + rblgender.SelectedItem.Text + "','"+ fuownerimage.FileName + "')";
                    re.uid();
                    re.clear(Page.Controls);
                    lblmsg.Text = "you are registered successfully.";
                    re.conclose();
                }
                else
                {
                    lblmsg.Text = "Please select an image file only";
                }
            }
            else
            {
                lblmsg.Text = "Please select a file";
            }
        }
        else
        {
            lblmsg.Text = "captcha code is not proper.";
        }
    }
}