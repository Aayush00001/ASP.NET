using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Ass1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\ass.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox5.Text;
        string nm = TextBox1.Text;
        string pass = TextBox2.Text;
        string ct = DropDownList1.Text;
        string gn = "";
        if (RadioButton1.Checked)
        {
            gn = RadioButton1.Text;
        }
        if (RadioButton2.Checked)
        {
            gn = RadioButton2.Text;
        }
        string gml = TextBox4.Text;

        SqlCommand cmd = new SqlCommand("Insert into st (id,name,pass,city,gender,gmail) values (@id,@nm,@pass,@ct,@gn,@gml)", con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@nm", nm);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@ct", ct);
        cmd.Parameters.AddWithValue("@gn", gn);
        cmd.Parameters.AddWithValue("@gml", gml);
        con.Open();
        int temp = cmd.ExecuteNonQuery();
        con.Close();
        if (temp > 0)
        {
            Label7.Text = "Data Inserted!!!";
        }
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string nm = TextBox1.Text;
        string pass = TextBox2.Text;
        string ct = DropDownList1.Text;
        string gn = "";
        if (RadioButton1.Checked)
        {
            gn = RadioButton1.Text;
        }
        if (RadioButton2.Checked)
        {
            gn = RadioButton2.Text;
        }
        string gml = TextBox4.Text;
        string id = TextBox5.Text;

        SqlCommand cmd = new SqlCommand("Update st set name=@nm ,pass=@pass ,city=@ct ,gender=@gn ,gmail=@gml where id=@id", con);
        cmd.Parameters.AddWithValue("@nm", nm);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@ct", ct);
        cmd.Parameters.AddWithValue("@gn", gn);
        cmd.Parameters.AddWithValue("@gml", gml);
        cmd.Parameters.AddWithValue("@id", id);

        con.Open();
        int temp = cmd.ExecuteNonQuery();
        con.Close();
        if (temp > 0)
        {
            Label7.Text = "Data Updated!!!";
        }
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string id = TextBox5.Text;
        SqlCommand cmd = new SqlCommand("Delete from st where id=" + id, con);
        con.Open();
        int temp = cmd.ExecuteNonQuery();
        con.Close();
        if (temp > 0)
        {
            Label7.Text = "Data Deleted!!!";
        }
        GridView1.DataBind();
    }
}
