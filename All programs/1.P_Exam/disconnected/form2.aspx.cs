using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"");
    protected void Page_Load(object sender, EventArgs e)
    {
        disp();
    }
    protected void disp()
    {
        String qry = "";
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String gender=RadioButton1.Checked?"m":"f";
        List<string> hobbylist = new List<string>();
        if(CheckBox1.Checked)
            hobbylist.Add("w");
        if(CheckBox2.Checked)
            hobbylist.Add("r");
        if (CheckBox3.Checked)
            hobbylist.Add("ac");
        String ho = String.Join(",", hobbylist);

        String qry = "";
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        disp();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}