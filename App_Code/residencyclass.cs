using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
/// <summary>
/// Summary description for residencyclass
/// </summary>
public class residencyclass
{
    public SqlConnection cn = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public DataSet ds = new DataSet();
    public SqlDataAdapter da = new SqlDataAdapter();
    public String qry;
	public residencyclass()
	{
        cn.ConnectionString="Data Source=.\\sqlExpress;Initial Catalog=Residency;Integrated Security=True";
		//
		// TODO: Add constructor logic here
		//
	}
    public void conopen()
    {
        cn.Open();
    }
    public void conclose()
    {
        cn.Close();
    }
    public void uid()
    {
        cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
    }
    public void clear(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            clear(ctrl.Controls);
        }
    }
}