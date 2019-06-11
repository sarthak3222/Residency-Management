using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Residency;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    string qry;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //qry = "select * from admin where uname='" + txtuname.Text + "' and password='" + txtpassword.Text + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr=cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    Session["uname"] = dr[0].ToString();
            
        //}
        //else
        //{
        //    Label1.Text = "you are not admin";
        //}
        //cn.Close();
    }
}