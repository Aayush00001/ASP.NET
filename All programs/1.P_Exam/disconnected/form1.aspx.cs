using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\con.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        disp();
    }
    protected void disp()
    {
        String qry = "select * from std1";
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = TextBox1.Text;
        String nm = TextBox2.Text;
        String pas = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String gender = RadioButton1.Checked ? "ma" : "fe";
        String cli = ListBox1.SelectedValue;
        String pho = TextBox4.Text + "" + TextBox5.Text;
        List<string> hobbylist = new List<string>();
        if (CheckBox1.Checked)
            hobbylist.Add("w");
        if (CheckBox2.Checked)
            hobbylist.Add("r");
        if (CheckBox3.Checked)
            hobbylist.Add("wr");
        String ho = String.Join(",", hobbylist);

        String qry = "insert into std1(id,nm,pas,city,gender,cli,pho,ho)values("+id+",'"+nm+"','"+pas+"','"+city+"','"+gender+"','"+cli+"','"+pho+"','"+ho+"')";
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        disp();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String id = TextBox1.Text;
        String nm = TextBox2.Text;
        String pas = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String gender = RadioButton1.Checked ? "ma" : "fe";
        String cli = ListBox1.SelectedValue;
        String pho = TextBox4.Text + "" + TextBox5.Text;
        List<string> hobbylist = new List<string>();
        if (CheckBox1.Checked)
            hobbylist.Add("w");
        if (CheckBox2.Checked)
            hobbylist.Add("r");
        if (CheckBox3.Checked)
            hobbylist.Add("wr");
        String ho = String.Join(",", hobbylist);

        String qry = "update std1 set nm='"+nm+"',pas='"+pas+"',city='"+city+"',gender='"+gender+"',cli='"+cli+"',pho='"+pho+"',ho='"+ho+"'where id="+id;
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        disp();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String id = TextBox1.Text;
        String qry = "delete from std1 where id="+id;
        SqlDataAdapter da = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        disp();
    }
}